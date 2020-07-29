package software.purpledragon.blog.api;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.ser.FilterProvider;
import com.fasterxml.jackson.databind.ser.impl.SimpleFilterProvider;
import software.purpledragon.blog.json.LazyLoadPersistenceFilter;

import javax.ws.rs.ext.ContextResolver;
import javax.ws.rs.ext.Provider;

@Provider
public class ObjectMapperResolver implements ContextResolver<ObjectMapper> {
    @Override
    public ObjectMapper getContext(Class<?> type) {
        FilterProvider filterProvider = new SimpleFilterProvider()
                .addFilter("hibernate-proxy", new LazyLoadPersistenceFilter());

        return new ObjectMapper()
                .setFilterProvider(filterProvider);
    }
}
