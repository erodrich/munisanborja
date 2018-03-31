/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.munisanborja.sys.dao;

import com.munisanborja.sys.HibernateUtil;
import com.munisanborja.sys.model.entities.Requerimientos;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author Hugo Alexander
 */
public class RequerimientosDao implements RequerimientosInterfaces{

       private Session session = HibernateUtil.getSessionFactory().openSession();
        @Override
    public List<Requerimientos> requerimientoList() {
        List<Requerimientos> list = null;
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
            Query q=session.createQuery("from com.munisanborja.sys.model.entities.Requerimientos");
        list=q.list();
        session.getTransaction().commit();
        return list;
    }
    
    
}
