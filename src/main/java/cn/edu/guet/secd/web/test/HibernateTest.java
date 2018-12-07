package cn.edu.guet.secd.web.test;

import cn.edu.guet.secd.web.pojo.Administrator;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.sql.Timestamp;

/**
 * Created by Administrator on 9/13/2018.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
public class HibernateTest {

    @Autowired
    SessionFactory sessionFactory;

    @Test
    public void insertAdministrator() {

        Administrator administrator = new Administrator();

        administrator.setUsername("chenxuanjin");

        administrator.setPassword("123456");

        administrator.setCreateTime(new Timestamp(System.currentTimeMillis()));
        administrator.setUpdateTime(new Timestamp(System.currentTimeMillis()));

        Session session = sessionFactory.openSession();

        Transaction tx = session.beginTransaction();

        session.save(administrator);

        tx.commit();

    }

    @Test
    public void deleteAdministrator(){

        int id = 1;

        Session session = sessionFactory.openSession();

        Transaction tx = session.beginTransaction();

        Administrator administrator = (Administrator) session.get(Administrator.class,1);

        session.delete(administrator);

        tx.commit();

    }

}
