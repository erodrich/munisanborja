/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.munisanborja.sys.dao;

import com.munisanborja.sys.HibernateUtil;
import com.munisanborja.sys.model.entities.Requerimiento;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Eric
 */
public class RequerimientoDao implements RequerimientoInterface {

    private Session session = HibernateUtil.getSessionFactory().openSession();

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
    public Requerimiento get(String id) {
        Session ss = HibernateUtil.getSessionFactory().getCurrentSession();
        ss.beginTransaction();
        Criteria cr = session.createCriteria(Requerimiento.class)
                .add(Restrictions.eq("identificador", id));
        
        Requerimiento rd = (Requerimiento) cr.uniqueResult();
        ss.getTransaction().commit();
        return rd;
    }
    
    @Override
    public Requerimiento get(Integer id) {
        Session ss = HibernateUtil.getSessionFactory().getCurrentSession();
        ss.beginTransaction();
        Requerimiento rd = (Requerimiento) session.get(Requerimiento.class, id);
        ss.getTransaction().commit();
        return rd;
        /*
        if (!session.isOpen()) {
            session = HibernateUtil.getSessionFactory().openSession();
        } else {
            session = HibernateUtil.getSessionFactory().getCurrentSession();
        }
        Transaction tx = session.beginTransaction();
        Requerimiento rd = (Requerimiento) session.get(Requerimiento.class, id);
        tx.commit();
        session.close();
        return rd;

        
        try {
            session = HibernateUtil.getSessionFactory().getCurrentSession();
            session.beginTransaction();
            rd = (Requerimiento) session.get(Requerimiento.class, id);
            session.getTransaction().commit();
            return rd;
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (session.isOpen()) {
                session.close();
                //HibernateUtil.getSessionFactory().close();
            }
        }
        return null;
         */
    }

    @Override
    public List<Requerimiento> listarRequerimiento(Date fechaInicio, Date fechaFinal) {
        List<Requerimiento> list = new ArrayList<>();
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        Criteria cr = session.createCriteria(Requerimiento.class)
                .add(Restrictions.between("fechaCreacion", fechaInicio, fechaFinal))
                .addOrder(Order.desc("fechaCreacion"));
        list = cr.list();
        session.getTransaction().commit();
        return list;

        /*
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        Criteria cr = session.createCriteria(Requerimiento.class)
                .add(Restrictions.between("fechaCreacion", fechaInicio, fechaFinal))
                .addOrder(Order.desc("fechaCreacion"));
        return cr.list();
         */
    }

    @Override
    public List<Requerimiento> listarRequerimiento(String fechaInicio, String fechaFinal) {
        /*
        try {
            session = HibernateUtil.getSessionFactory().getCurrentSession();
            session.beginTransaction();
            SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
            try {
                Criteria cr = session.createCriteria(Requerimiento.class)
                        .add(Restrictions.between("fechaCreacion", df.parse(fechaInicio), df.parse(fechaFinal)))
                        .addOrder(Order.desc("fechaCreacion"));
                return cr.list();
            } catch (Exception e) {
                e.printStackTrace();
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (session.isOpen()) {
                session.close();
                HibernateUtil.getSessionFactory().close();
            }
        }
        return null;
         */
        List<Requerimiento> list = null;
        Session ss = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction t = ss.beginTransaction();
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");

        try {
            try {
                Criteria cr = session.createCriteria(Requerimiento.class)
                        .add(Restrictions.between("fechaCreacion", df.parse(fechaInicio), df.parse(fechaFinal)))
                        .addOrder(Order.desc("fechaCreacion"));
                list = cr.list();
                t.commit();

            } catch (Exception e) {
                e.printStackTrace();
            }
        } catch (Exception e) {
            try {
                t.rollback();
            } catch (RuntimeException rbe) {
                rbe.getMessage();
            }
            throw e;
        } finally {
            if (ss.isOpen()) {
                ss.close();
            }
        }
        return list;
        /*
        List<Requerimiento> list = new ArrayList<>();
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        try {
            Criteria cr = session.createCriteria(Requerimiento.class)
                    .add(Restrictions.between("fechaCreacion", df.parse(fechaInicio), df.parse(fechaFinal)))
                    .addOrder(Order.desc("fechaCreacion"));
            list = cr.list();
            //session.getTransaction().commit();

        } catch (Exception e) {
            e.printStackTrace();
        }
         */
    }

}
