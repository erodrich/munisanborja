/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.munisanborja.sys.dao;

import com.munisanborja.sys.HibernateUtil;
import com.munisanborja.sys.model.entities.tiposproyectos;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author Hugo Alexander
 */
public class TiposProyectosDao implements TiposProyectosInterface{

    private Session session = HibernateUtil.getSessionFactory().openSession();
    
    @Override
    public List<tiposproyectos> tiposProyectosList() {
        List<tiposproyectos> list = null;
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
            Query q=session.createQuery("from com.munisanborja.sys.model.entities.tiposproyectos");
        list=q.list();
        session.getTransaction().commit();
        return list;
    }
    
}
