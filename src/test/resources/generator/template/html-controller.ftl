package ${basePackage}.${modelNameLowerCamel};

import ${basePackage}.${modelNameLowerCamel}.${modelNameUpperCamel};
import ${basePackage}.${modelNameLowerCamel}.service.${modelNameUpperCamel}Service;
import ${basePackage}.${modelNameLowerCamel}.${modelNameUpperCamel}Form;
import ${basePackage}.BaseAction;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.Map;
import org.springframework.web.bind.annotation.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import JsonTool;

@Controller
@RequestMapping({"/${modelNameLowerCamel}"})
public class ${modelNameUpperCamel}Action extends BaseAction  {

    @Autowired
    private ${modelNameUpperCamel}Service ${modelNameLowerCamel}Service;

    /**
     * 跳转至新增页面
     * @param request
     * @param modelmap
     * @return
     */
    @RequestMapping(value = "/add.shtml", method = {RequestMethod.GET, RequestMethod.POST})
    public String add(HttpServletRequest request, ModelMap modelmap) {
        getMenu(request, modelmap);
        return forward("html/add.html");
    }

    /**
     * 新增
     * @param response
     * @param ${modelNameLowerCamel}
     * @throws Exception
     */
    @RequestMapping(value = "/save.shtml", method = {RequestMethod.GET, RequestMethod.POST})
    public void save(HttpServletResponse response,${modelNameUpperCamel} ${modelNameLowerCamel})throws Exception  {
        Map map = new HashMap<>();
        try {
            ${modelNameLowerCamel}Service.save(${modelNameLowerCamel});
            map.put("state", "true");
        } catch (Exception e) {
            e.printStackTrace();
            map.put("state", "false");
            map.put("msg", "操作失败");
        }
        response.getWriter().write(JsonTool.getJsonStrFromObj(map));
    }


    /**
     * 跳转至修改页面
     * @param request
     * @param modelmap
     * @param id
     * @return
     */
    @RequestMapping(value = "/edit.shtml", method = {RequestMethod.GET, RequestMethod.POST})
    public String edit(HttpServletRequest request, ModelMap modelmap,String id) {
        getMenu(request, modelmap);
        ${modelNameUpperCamel} ${modelNameLowerCamel} = ${modelNameLowerCamel}Service.get(${modelNameUpperCamel}.class,id);
        modelmap.addAttribute("${modelNameLowerCamel}",${modelNameLowerCamel});
        return forward("html/edit.html");
    }


    /**
     * 修改
     * @param response
     * @param ${modelNameLowerCamel}
     * @throws Exception
     */
    @RequestMapping(value = "/update.shtml", method = {RequestMethod.GET, RequestMethod.POST})
    public void update(HttpServletResponse response,${modelNameUpperCamel} ${modelNameLowerCamel})throws Exception  {
        Map map = new HashMap<>();
        try {
        ${modelNameLowerCamel}Service.update(${modelNameLowerCamel});
            map.put("state", "true");
        } catch (Exception e) {
            e.printStackTrace();
            map.put("state", "false");
            map.put("msg", "操作失败");
        }
        response.getWriter().write(JsonTool.getJsonStrFromObj(map));
    }

    /**
     * 删除
     * @param response
     * @param ${modelNameLowerCamel}
     * @throws Exception
     */
    @RequestMapping(value = "/delete.shtml", method = {RequestMethod.GET, RequestMethod.POST})
    public void delete(HttpServletResponse response,${modelNameUpperCamel} ${modelNameLowerCamel})throws Exception  {
        Map map = new HashMap<>();
        try {
        ${modelNameLowerCamel}Service.delete(${modelNameLowerCamel});
            map.put("state", "true");
        } catch (Exception e) {
            e.printStackTrace();
            map.put("state", "false");
            map.put("msg", "操作失败");
        }
        response.getWriter().write(JsonTool.getJsonStrFromObj(map));
    }

    /**
     * 分页查询
     * @param request
     * @param modelmap
     * @param form
     * @return
     */
    @RequestMapping(value = "/page.shtml", method = {RequestMethod.GET, RequestMethod.POST})
    public String page(HttpServletRequest request, ModelMap modelmap, ${modelNameUpperCamel}Form form) {
        getMenu(request, modelmap);
        form.setFormPage(${modelNameLowerCamel}Service.page(form), modelmap);
        return forward("html/page.html");
    }

}
