package software.purpledragon.blog.api;

import com.fasterxml.jackson.annotation.JsonFilter;
import com.fasterxml.jackson.annotation.JsonProperty;
import software.purpledragon.blog.model.Article;

import javax.persistence.EntityGraph;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.util.HashMap;
import java.util.Map;

@Path("/articles")
@Produces(MediaType.APPLICATION_JSON)
@JsonFilter("hibernate-proxy")
public class ArticleResource {
    @PersistenceContext
    private EntityManager entityManager;

    @GET
    @Path("/{id:[\\d]+}")
    public Response show(@PathParam("id") Long id, @QueryParam("include_tags") boolean includeTags) {
        Article article = findById(id, includeTags);
        return Response.ok(new ExampleWrapper(article)).build();
    }

    private Article findById(Long id, boolean includeTags) {
        Map<String, Object> props = new HashMap<>();

        if (includeTags) {
            EntityGraph<?> graph = entityManager.getEntityGraph("tags");
            props.put("javax.persistence.fetchgraph", graph);
        }

        return entityManager.find(Article.class, id, props);
    }

    public static class ExampleWrapper {
        @JsonProperty
        private final Article article;

        public ExampleWrapper(Article article) {
            this.article = article;
        }
    }
}
