
import com.munisanborja.sys.HibernateUtil;
import com.munisanborja.sys.dao.RequerimientoDao;
import com.munisanborja.sys.model.entities.Requerimiento;
import org.hibernate.Session;
import org.hibernate.Transaction;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Eric
 */
public class TestRequerimientoGet {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
        Requerimiento r = new Requerimiento();
        RequerimientoDao rd = new RequerimientoDao();
        
        r = rd.get(1);
        System.out.println(r.getNombre());
        
        /*
        Session session = HibernateUtil.getSessionFactory().openSession();
        
        try{
            Transaction t = session.getTransaction();
            Requerimiento r = (Requerimiento) session.get(Requerimiento.class, 1);
            
            System.out.println(r.getNombre());
        }catch (Exception e){
            e.printStackTrace();
        }finally{
            session.close();
            HibernateUtil.getSessionFactory().close();
        }
        */
    }
    
}
