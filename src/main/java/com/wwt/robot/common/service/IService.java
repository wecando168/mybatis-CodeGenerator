package com.wwt.robot.common.service;

import java.io.Serializable;

public interface IService {
    void delete(Object obj);

    <T> T get(Class<T> clazz, Serializable id);
}
