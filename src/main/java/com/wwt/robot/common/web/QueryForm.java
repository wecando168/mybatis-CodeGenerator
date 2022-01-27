package com.wwt.robot.common.web;

import com.wwt.robot.common.page.IPage;
import org.springframework.ui.ModelMap;

public class QueryForm extends BaseForm{
    private IPage<?> formPage;

    private int pageNumber = 1;

    private int pageSize = 15;

    public IPage<?> getFormPage() {
        return formPage;
    }

    public void setFormPage(IPage<?> formPage, ModelMap model) {
        this.formPage = formPage;
        model.addAttribute("form", this);
    }

    public int getPageNumber() {
        return pageNumber;
    }

    public void setPageNumber(int pageNumber) {
        this.pageNumber = pageNumber;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }
}
