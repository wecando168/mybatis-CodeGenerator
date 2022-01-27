package com.wwt.robot.common.dao;

import com.wwt.robot.common.page.IPage;
import com.wwt.robot.common.web.QueryForm;

import java.util.List;

public interface IQueryDao {
    <T> List<T> list();
    <T> IPage<T> page(QueryForm form);
}
