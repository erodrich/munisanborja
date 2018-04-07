
import com.munisanborja.sys.dao.InformeTecnicoDao;
import com.munisanborja.sys.model.entities.DetalleInformeTecnico;
import com.munisanborja.sys.model.entities.InformeTecnico;
import java.util.Collection;
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
public class TestInformeTecnico {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here

        Collection<InformeTecnico> it;
        InformeTecnicoDao id = new InformeTecnicoDao();

        //it = id.listarInformeTecnico();
        it = id.listarInformeTecnico("2018-03-01","2018-03-31");
        //InformeTecnico i = id.get(1);

        
        for(InformeTecnico x : it){
            System.out.println(x.getNombre());
            for(DetalleInformeTecnico d : x.getDetalleInformeTecnico()){
                System.out.println(d.getConcepto() + " fin");
            }
        }
         
        //System.out.println(i.getNombre());
    }

}
