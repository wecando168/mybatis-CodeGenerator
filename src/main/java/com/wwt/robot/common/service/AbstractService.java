package com.wwt.robot.common.service;

import com.wwt.robot.common.dao.BaseDao;
import org.springframework.beans.factory.annotation.Autowired;

import java.io.Serializable;

public abstract class AbstractService implements IService {
    @Autowired
    protected BaseDao baseDao;
    @Override
    public void delete(Object obj) {
        baseDao.delete(obj);
    }
    @Override
    public <T> T get(Class<T> clazz, Serializable id) {
        return baseDao.get(clazz, id);
    }
}
