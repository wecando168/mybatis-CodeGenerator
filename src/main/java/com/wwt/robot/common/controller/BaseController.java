package com.wwt.robot.common.controller;

import com.wwt.robot.common.dao.IQueryDao;
import com.wwt.robot.common.page.IPage;
import com.wwt.robot.common.web.QueryForm;
import org.springframework.data.domain.Pageable;
import org.springframework.validation.BindingResult;

import javax.servlet.http.HttpServletRequest;
import java.net.http.HttpResponse;
import java.util.List;

public class BaseController<T, T1> implements IBaseController<T, T1> , IQueryDao {
    @Override
    public <T> List<T> list() {
        return null;
    }

    @Override
    public <T> IPage<T> page(QueryForm form) {
        return null;
    }

    protected HttpResponse.ResponseInfo deleteBeatch(T entity, BindingResult result) {
        return null;
    }

    protected HttpResponse.ResponseInfo update(T entity, BindingResult result) {
        return null;
    }

    protected HttpResponse.ResponseInfo getPage(HttpServletRequest request, Pageable pageable, boolean b) {
        return null;
    }

    protected HttpResponse.ResponseInfo save(T entity, BindingResult result) {
        return null;
    }
}
