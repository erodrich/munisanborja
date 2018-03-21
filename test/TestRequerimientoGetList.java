
import com.munisanborja.sys.dao.RequerimientoDao;
import com.munisanborja.sys.model.entities.Requerimiento;
import java.util.ArrayList;
import java.util.List;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Eric
 */
public class TestRequerimientoGetList {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        List<Requerimiento> lr = new ArrayList<Requerimiento>();
        
        RequerimientoDao rd = new RequerimientoDao();
        
        lr = rd.listarRequerimiento();
        for(Requerimiento r : lr){
            System.out.println(r.getNombre());
        }
        
    }
    
}
