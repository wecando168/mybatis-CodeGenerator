package ${basePackage}.${modelNameLowerCamel}.service.impl;

import ${basePackage}.common.dao.IQueryDao;
import ${basePackage}.common.service.AbstractService;
import ${basePackage}.common.page.IPage;
import ${basePackage}.${modelNameLowerCamel}.entity.${modelNameUpperCamel};
import ${basePackage}.${modelNameLowerCamel}.entity.${modelNameUpperCamel}Form;
import ${basePackage}.${modelNameLowerCamel}.service.${modelNameUpperCamel}Service;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.util.List;

/**
 * Created by ${author} on ${date}.
 */
@Service
@Transactional
public class ${modelNameUpperCamel}ServiceImpl extends AbstractService implements ${modelNameUpperCamel}Service {

    @Override
    public void save(${modelNameUpperCamel} ${modelNameLowerCamel}) {
        baseDao.save(${modelNameLowerCamel});
    }

    @Override
    public void delete(${modelNameUpperCamel} ${modelNameLowerCamel}) {
        baseDao.delete(${modelNameLowerCamel});
    }

    @Override
    public void update(${modelNameUpperCamel} ${modelNameLowerCamel}) {
        baseDao.update(${modelNameLowerCamel});
    }

    @Override
    public List<${modelNameUpperCamel}>  getList() {
       return baseDao.createQuery(${modelNameUpperCamel}.class).list();
    }

    @Override
    public IPage<${modelNameUpperCamel}> page(${modelNameUpperCamel}Form form) {
        IQueryDao queryDao = baseDao.createQuery(${modelNameUpperCamel}.class);
        return queryDao.page(form);
    }
}
