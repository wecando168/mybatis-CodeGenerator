package com.wwt.robot.common.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import javax.servlet.http.HttpServletRequest;

public class BaseAction {
    @Autowired
    private static String pid = "0";
    private static String mid = "0";
    public static final String CLASSES_PATH = "/WEB-INF/classes/";
    private String getPackagePath() {
        String className = this.getClass().getPackage().getName();
        String packagePath = className.replaceAll("\\.", "/");
        return CLASSES_PATH + packagePath + "/";
    }
    public ModelMap getMenu(HttpServletRequest request, ModelMap model){
        return  model;
    }

    protected String forward(String path) {
        return getPackagePath() + path;
    }
}
