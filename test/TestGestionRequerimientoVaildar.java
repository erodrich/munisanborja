
import com.munisanborja.sys.dao.RequerimientoDao;
import com.munisanborja.sys.model.entities.Requerimiento;
import com.munisanborja.sys.model.logic.GestionRequerimiento;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Eric
 */
public class TestGestionRequerimientoVaildar {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        Requerimiento r = new Requerimiento();
        RequerimientoDao rd = new RequerimientoDao();
        
        r = rd.get(1);
        
        GestionRequerimiento gr = new GestionRequerimiento();
        gr.validarRequerimiento(r);
        
        System.out.println(r.getNombre());
        if(gr.isNombreValid()){
            System.out.println("El nombre es valido");
        }
    }
    
}
