/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.munisanborja.sys.dao;

import com.munisanborja.sys.HibernateUtil;
import com.munisanborja.sys.model.entities.EvaluacionProceso;
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
 * @author Hugo Alexander
 */
public class EvaluacionProcesoDao implements EvaluacionProcesoInterface {

    private Session session = HibernateUtil.getSessionFactory().openSession();

    @Override
    public List<EvaluacionProceso> listarEvaluacionProceso() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        List<EvaluacionProceso> list = session.createCriteria(EvaluacionProceso.class).list();
        return list;
    }

    @Override
    public List<EvaluacionProceso> listarEvaluacionProceso(Date fechaInicio, Date fechaFinal) {
        List<EvaluacionProceso> list = new ArrayList<>();
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        Criteria cr = session.createCriteria(EvaluacionProceso.class).
                add(Restrictions.between("fechacreacion", fechaInicio, fechaFinal)).
                addOrder(Order.desc("fechacreacion"));
        list = cr.list();
        session.getTransaction().commit();
        return list;
    }

    @Override
    public List<EvaluacionProceso> listarEvaluacionProceso(String fechaInicio, String fechaFinal) {
        List<EvaluacionProceso> list = null;
        Session ss = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction t = ss.beginTransaction();
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");

        try {
            try {
                Criteria cr = session.createCriteria(EvaluacionProceso.class)
                        .add(Restrictions.between("fechacreacion", df.parse(fechaInicio), df.parse(fechaFinal)))
                        .addOrder(Order.desc("fechacreacion"));
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
}

@Override
    public EvaluacionProceso get(Integer id) {
        Session ss = HibernateUtil.getSessionFactory().getCurrentSession();
        ss.beginTransaction();
        EvaluacionProceso ep = (EvaluacionProceso) session.get(EvaluacionProceso.class, id);
        ss.getTransaction().commit();
        return ep;
    }

    @Override
    public EvaluacionProceso get(String id) {
        Session ss = HibernateUtil.getSessionFactory().getCurrentSession();
        ss.beginTransaction();
        Criteria cr = session.createCriteria(EvaluacionProceso.class)
                .add(Restrictions.eq("codigo", id));
        
        EvaluacionProceso ep = (EvaluacionProceso) cr.uniqueResult();
        ss.getTransaction().commit();
        return ep;
    }

    @Override
    public void create(EvaluacionProceso c) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        session.save(c);
        session.getTransaction().commit();
    }

    @Override
    public void update(EvaluacionProceso c) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        session.update(c);
        session.getTransaction().commit();
    }

    @Override
    public void delete(EvaluacionProceso c) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        session.delete(c);
        session.getTransaction().commit();
    }
    
    
}
