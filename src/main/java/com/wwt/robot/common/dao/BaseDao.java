package com.wwt.robot.common.dao;

import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import java.io.Serializable;

@Repository
public class BaseDao {
    public static void save(Object object){

    }

    public static void delete(Object object){

    }

    public static void update(Object object){

    }

    public <T> T get(Class<T> entityClass, Serializable id) throws DataAccessException {
        return null;
    }

    public <T> IQueryDao createQuery(Class<T> clazz) {
        return null;
    }
}
