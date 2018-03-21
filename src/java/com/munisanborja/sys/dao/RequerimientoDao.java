/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.munisanborja.sys.dao;

import com.munisanborja.sys.HibernateUtil;
import com.munisanborja.sys.model.entities.Requerimiento;
import java.util.Date;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Eric
 */
public class RequerimientoDao implements RequerimientoInterface {

    Session session;

    @Override
    public List<Requerimiento> listarRequerimiento() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        List<Requerimiento> list = session.createCriteria(Requerimiento.class).list();
        return list;
    }

    @Override
    public void create(Requerimiento c) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        session.save(c);
        session.getTransaction().commit();
    }

    @Override
    public void update(Requerimiento c) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        session.update(c);
        session.getTransaction().commit();
    }

    @Override
    public void delete(Requerimiento c) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        session.delete(c);
        session.getTransaction().commit();
    }

    @Override
    public Requerimiento get(Integer id) {
        Requerimiento rd;

        try {
            session = HibernateUtil.getSessionFactory().getCurrentSession();
            session.beginTransaction();
            rd = (Requerimiento) session.get(Requerimiento.class, id);
            session.getTransaction().commit();
            return rd;
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if(session.isOpen()){
                session.close();
            HibernateUtil.getSessionFactory().close();
            }
        }
        return null;

    }

    @Override
    public List<Requerimiento> listarRequerimiento(Date fechaInicio, Date fechaFinal) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        Criteria cr = session.createCriteria(Requerimiento.class)
                .add(Restrictions.between("fechaCreacion", fechaInicio, fechaFinal))
                .addOrder(Order.desc("fechaCreacion"));
        return cr.list();
        
    }

}
