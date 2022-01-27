# mybatis-CodeGenerator

mybatis-CodeGenerator 功能介绍
代码生成器，根据数据表名称生成对应的Model、Mapper、Service简化开发

mybatis-CodeGenerator 代码生成器软件架构

# 一、项目主模块resources资源文件说明

1、application.properties

    spring中服务器连接的相关设置(参数可通过配置数据库连接后自动更新)

# 二、项目主模块java部分说明

1、core模块：项目核心

2、common模块：通用模块，不依赖其它任何模块，主要有utils、可以在多个不同项目中共用的内容

3、entitie模块：POJO、VO、DTO

4、dao模块：数据持久化，访问数据库，这里使用Mybatis

5、service模块：业务模块，处理业务逻辑

6、web模块：B/S结构的表示层，主要用于在浏览器中显示数据，提供用户接口

# 三、项目主模块com.wwt.robot.core包基础类功能划分

1、Mapper.java

    定制版MyBatis Mapper插件接口

2、ProjectConstant.java

    项目常量，主要用于指定自动生成文件存储位置

# 四、项目主模块com.wwt.robot.common包基础类功能划分

1、exception部分结构

    GlobalException.java

        用于扩展标准的Exception类，实现异常错误的自定义输出

2、response部分结构

    ResponseInfo

        用户实现接口HttpResponse

3、dto部分结构

    IDto.java

        接口类

    BaseDto

        实现接口IDto

    DeleteDto

        扩展BaseDto

用户实现接口HttpResponse

4、page部分结构：网页前台的分页设置

    IPage.java

        接口类

    Page.java

        实现接口IPage

5、web部分结构：网页前台

    BaseAction.java

        交互类基础类

    BaseForm.java

        网页端基础类

    QueryForm.java

        扩展BaseForm

6、dao部分结构
    IQueryDao.java

        接口类

    BaseDao.java

        dao基础类

7、service部分结构：后端服务

    IService.java

        服务器端接口类

    AbstractService.java

        抽象类，用于实现接口IService

8、controller部分结构

    IBaseController.java

        接口类

    BaseController.java

        实现接口IBaseController和IQueryDao

# 五、Test模块resources资源文件说明

1、generator/template文件夹

    存放的是相关模板文件

2、demo-user.sql

    用于测试的数据库表格及测试数据

# 六、Test模块java部分说明

1、CodeGenerator

    自动生成相关代码的主程序

mybatis-CodeGenerator 安装教程

1. 下载后解压，IDEA直接打开项目文件夹，等待Maven自动下载完相关依赖
 
2. 使用MySQL 5.5.28及以上版本通过demo-goods.sql生成测试数据库表及相关数据

mybatis-CodeGenerator 使用说明

1. IDEA通过文件->新建数据源连接测试,确保MySQL已经正常工作并连接成功
 
2. 打开application.properties，Alt+Enter打开数据源，将自动更新properties的参数，确保你参数连接正确
 
3. 编辑CodeGenerator.java文件，配置JDBC相关的4个变量值，确保与更新过的“application.properties”内相关项目的值一致，注意，这里的值在“”内
 
4. 运行CodeGenerator将自动生成你所需要的几个模块

# 七、mybatis-CodeGenerator 功能移植

ProjectConstant.java里面主要是默认目录的设置

CodeGenerator.java为生成自动代码的主程序，里面很多目录的设置依赖于ProjectConstant内的基础设置

整个程序生成的文件可以单独移植到你在开发的项目中，如果需要作为你项目基础工具使用，请先参考上面独立运行，确保已经可以正常生成文件

迁移到你现有项目内，主要是需要对CodeGenerator跟ProjectConstant内的基础文件路径进行相关设置，与你迁移后实际文件位置相对应

确保能够生成文件之后，再调整输出文件位置的相关配置，确保符合你的实际需求，最后根据输出结果，修改template下的模板文件，满足你自己的额外需求

# 八、如何确保 mybatis-CodeGenerator 可以正常工作

1、下载之后进行测试，除了数据库连接部分的设置，不要修改其它任何配置，也不要升级跟降级pom.xml里面的依赖

如果此时有问题请检查你的MySQL版本，跟连接是否正常

2、第一步测试成功之后，可以尝试升级或降级相关的依赖与你当前项目的依赖版本移植

目前已知问题是依赖org.mybatis.generator如果升级到1.4.0后会产生异常，无法正常生成文件

3、依赖跟数据库处理完可以正常运行，再往你项目里面迁移，迁移遵从原则是不要改变现有各个文件的存储路径的相对关系，仅检索替换包名称，确保可以正常运行

4、完成以上操作之后，改变文档结构，改变输出文件位置等这些操作每操作一次都需要确保已经可以正常生成文件了，再修改下一个地方

# mybatis-CodeGenerator 参与贡献

1. Fork 本仓库
2. 新建 Feat_xxx 分支
3. 提交代码
4. 新建 Pull Request
