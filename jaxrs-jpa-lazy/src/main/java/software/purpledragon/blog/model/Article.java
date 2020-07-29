package software.purpledragon.blog.model;

import com.fasterxml.jackson.annotation.JsonFilter;
import com.fasterxml.jackson.annotation.JsonProperty;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.List;

@Entity
@Table(name = "article")
@NamedEntityGraph(name = "tags", attributeNodes = @NamedAttributeNode("tags"))
@JsonFilter("hibernate-proxy")
public class Article {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @JsonProperty
    private Long id;

    @Column(name = "title", nullable = false)
    @NotNull
    @JsonProperty
    private String title;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "article")
    @Column(name = "tag")
    @JsonProperty
    private List<Tag> tags;
}
