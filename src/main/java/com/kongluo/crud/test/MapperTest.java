package com.kongluo.crud.test;

import com.kongluo.crud.dao.DepartmentMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * @program: ssm-crud
 * @description:
 * @author: Mr.Wang
 * @create: 2018-08-30 17:44
 **/

/*
* 推荐spring的项目就可以使用spring的单元测试，可以自动注入我们需要的组件
* 1、导入springTest模块
* 2、@ContextConfiguration指定Spring配置文件的位置
* 3、直接autowired要使用的组件即可
* */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
public class MapperTest
{
    @Autowired
    DepartmentMapper departmentMapper;
    //测试DepartmentMapper

    @Test
    public void testCRUD()
    {
        System.out.println(departmentMapper);
    }
}
