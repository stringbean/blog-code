package software.purpledragon.blog.json;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.ser.BeanPropertyWriter;
import com.fasterxml.jackson.databind.ser.PropertyWriter;
import com.fasterxml.jackson.databind.ser.impl.SimpleBeanPropertyFilter;

import javax.persistence.Persistence;

public class LazyLoadPersistenceFilter extends SimpleBeanPropertyFilter {
    @Override
    public void serializeAsField(Object pojo,
                                 JsonGenerator jgen,
                                 SerializerProvider provider,
                                 PropertyWriter writer) throws Exception {

        if (include(pojo, writer)) {
            writer.serializeAsField(pojo, jgen, provider);
        } else {
            writer.serializeAsOmittedField(pojo, jgen, provider);
        }
    }

    private boolean include(Object pojo, PropertyWriter writer) throws Exception {
        if (writer instanceof BeanPropertyWriter) {
            BeanPropertyWriter beanWriter = (BeanPropertyWriter) writer;

            Object fieldValue = beanWriter.get(pojo);
            return Persistence.getPersistenceUtil().isLoaded(fieldValue);
        }

        return true;
    }
}
