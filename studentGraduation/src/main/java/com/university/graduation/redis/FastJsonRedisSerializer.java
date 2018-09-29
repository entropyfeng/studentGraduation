package com.university.graduation.redis;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.parser.ParserConfig;
import com.alibaba.fastjson.serializer.SerializerFeature;
import org.springframework.data.redis.serializer.RedisSerializer;
import org.springframework.data.redis.serializer.SerializationException;

import java.nio.charset.Charset;

public class FastJsonRedisSerializer<T> implements RedisSerializer<T> {
    private   static final Charset DEFAULT_CHARSET=Charset.forName("UTF-8");


    private Class<T> clazz;
    public FastJsonRedisSerializer(Class<T> clazz){
        super();
        this.clazz=clazz;
    }

    @Override
    public byte[] serialize(T t) throws SerializationException {

        if(t==null){
            return new byte[0];
        }
        return JSON.toJSONString(t,SerializerFeature.WriteClassName).getBytes(DEFAULT_CHARSET);

    }

    @Override
    public T deserialize(byte[] bytes) throws SerializationException {
        if(bytes==null||bytes.length<=0){
            return null;
        }
        String string =new String(bytes,DEFAULT_CHARSET);
        //#打开AutoType功能 在1.2.25之后的版本，以及所有的.sec01后缀版本中，autotype功能是受限的，和之前的版本不同，如果在升级的过程中遇到问题，可以通过以下方法配置。
        ParserConfig.getGlobalInstance().addAccept("com.university.graduation.domain");
        return (T) JSON.parseObject(string,clazz);
    }
}