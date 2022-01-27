package com.wwt.robot.controller.front.web;

import ${basePackage}.common.exception.GlobalException;
import ${basePackage}.common.response.ResponseInfo;
import ${basePackage}.${modelNameLowerCamel}.entity.${modelNameUpperCamel};
import ${basePackage}.common.controller.BaseController;
import ${basePackage}.goods.entity.Goods;
import ${basePackage}.goods.service.${modelNameUpperCamel}Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

@RestController
@RequestMapping({"/${modelNameLowerCamel}"})
public class ${modelNameUpperCamel}Controller extends BaseController<${modelNameUpperCamel}, Integer> {
    @Autowired
    private ${modelNameUpperCamel}Service ${modelNameLowerCamel}Service;

    @GetMapping({"/get"})
    public ResponseInfo get(@RequestParam Integer id) throws GlobalException {
        return new ResponseInfo(get(id));
    }

    @RequestMapping(
            value = {"/delete"},
            method = {RequestMethod.POST}
    )

    public ResponseInfo delete(@RequestBody @Valid ${modelNameUpperCamel} entity, BindingResult result) throws GlobalException {
<#--        return super.deleteBeatch(dels.getIds());-->
        return (ResponseInfo) super.deleteBeatch(entity,result);
    }

    @RequestMapping({"/update"})
    public ResponseInfo update(@RequestBody @Valid ${modelNameUpperCamel} entity, BindingResult result, HttpServletRequest request)
            throws GlobalException {
<#--        return super.update(entity,result);-->
        return (ResponseInfo) super.update(entity,result);
    }

    @RequestMapping({"/save"})
    public ResponseInfo save(@RequestBody @Valid ${modelNameUpperCamel} entity, BindingResult result, HttpServletRequest request)
            throws GlobalException {
<#--        return super.save(entity,result);-->
        return (ResponseInfo) super.save(entity,result);
    }

    @RequestMapping({"/page"})
    public ResponseInfo page(HttpServletRequest request, @PageableDefault(
            sort = {"createTime"},
            direction = Sort.Direction.DESC
    ) Pageable pageable) throws GlobalException {
<#--        return super.getPage(request, pageable, false);-->
        return (ResponseInfo) super.getPage(request, pageable, false);
    }
}