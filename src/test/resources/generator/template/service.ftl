package ${basePackage}.${modelNameLowerCamel}.service;

import ${basePackage}.${modelNameLowerCamel}.entity.${modelNameUpperCamel};
import ${basePackage}.${modelNameLowerCamel}.entity.${modelNameUpperCamel}Form;
import ${basePackage}.common.service.IService;
import ${basePackage}.common.page.IPage;
import java.util.List;

/**
 * Created by ${author} on ${date}.
 */
public interface ${modelNameUpperCamel}Service extends IService {
    /**
     * 新增
     * @param  ${modelNameLowerCamel}
     */
    void save(${modelNameUpperCamel} ${modelNameLowerCamel});
    /**
     * 删除
     * @param  ${modelNameLowerCamel}
     */
    void delete(${modelNameUpperCamel} ${modelNameLowerCamel});
    /**
     * 修改
     * @param  ${modelNameLowerCamel}
     */
    void update(${modelNameUpperCamel} ${modelNameLowerCamel});
    /**
     * 查询全部
     * @return
     */
    List<${modelNameUpperCamel}>  getList();
    /**
     * 分页查询
     * @param form
     * @return
     */
    IPage<${modelNameUpperCamel}> page(${modelNameUpperCamel}Form form);

}
