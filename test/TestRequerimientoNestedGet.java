
import com.munisanborja.sys.dao.RequerimientoDao;
import com.munisanborja.sys.model.entities.Requerimiento;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
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
public class TestRequerimientoNestedGet {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        List<Requerimiento> lr = new ArrayList<Requerimiento>();

        RequerimientoDao rd = new RequerimientoDao();

        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        String sfechaInicio = "2018-01-01";
        String sfechaFinal = "2018-01-31";
        try {
            Date fechaInicio = df.parse(sfechaInicio);
            Date fechaFinal = df.parse(sfechaFinal);

            lr = rd.listarRequerimiento(fechaInicio, fechaFinal);
            for (Requerimiento r : lr) {
                System.out.println(r.getNombre());
            }
        } catch (Exception e){
            e.printStackTrace();
        }
        
        Requerimiento r = (Requerimiento) rd.get(4);
        System.out.println(r.getNombre());
    }
    
}
