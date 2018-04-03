
import com.munisanborja.sys.HibernateUtil;
import com.munisanborja.sys.dao.ProyectoPreInversionDao;
import com.munisanborja.sys.dao.RequerimientoDao;
import com.munisanborja.sys.model.entities.ProyectoPreInversion;
import com.munisanborja.sys.model.entities.Requerimiento;
import java.util.Date;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Eric
 */
public class TestProyectoPreInversionNew {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
        ProyectoPreInversion p = new ProyectoPreInversion();
        ProyectoPreInversionDao pd = new ProyectoPreInversionDao();
        
        p = pd.get("P00001");
        
        System.out.println(p.getCodigo());
        System.out.println(p.getRequerimiento().getNombre());
        System.out.println(p.getMontoComprometido());
        
        
    }
    
}
