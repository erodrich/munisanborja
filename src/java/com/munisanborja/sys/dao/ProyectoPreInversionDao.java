/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.munisanborja.sys.dao;

import com.munisanborja.sys.HibernateUtil;
import com.munisanborja.sys.model.entities.ProyectoPreInversion;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Eric
 */
public class ProyectoPreInversionDao implements ProyectoPreInversionInterface {

    private Session session = HibernateUtil.getSessionFactory().openSession();

    @Override
    public List<ProyectoPreInversion> listarProyectoPreInversion() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public ProyectoPreInversion get(Integer id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public ProyectoPreInversion get(String id) {
        Session ss = HibernateUtil.getSessionFactory().getCurrentSession();
        ss.beginTransaction();
        Criteria cr = session.createCriteria(ProyectoPreInversion.class)
                .add(Restrictions.eq("identificador", id));

        ProyectoPreInversion rd = (ProyectoPreInversion) cr.uniqueResult();
        ss.getTransaction().commit();
        return rd;
    }

    @Override
    public void create(ProyectoPreInversion c) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void update(ProyectoPreInversion c) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void delete(ProyectoPreInversion c) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
