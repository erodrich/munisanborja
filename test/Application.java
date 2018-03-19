/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import com.munisanborja.sys.HibernateUtil;
import com.munisanborja.sys.dao.EstadoTramiteDao;
import com.munisanborja.sys.dao.RequerimientoDao;
import com.munisanborja.sys.model.entities.CostoBeneficio;
import com.munisanborja.sys.model.entities.CostoEfectividad;
import com.munisanborja.sys.model.entities.EstadoTramite;
import com.munisanborja.sys.model.entities.MontoInversionTotal;
import com.munisanborja.sys.model.entities.Requerimiento;
import com.munisanborja.sys.model.entities.Ubicacion;
import com.munisanborja.sys.model.entities.UnidadFormuladora;
import java.util.Date;
import org.hibernate.Session;

/**
 *
 * @author Eric
 */
public class Application {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
        
        EstadoTramiteDao estadoDao = new EstadoTramiteDao();
        EstadoTramite estado = estadoDao.get(2);
        RequerimientoDao reqDao = new RequerimientoDao();
        
        Session session2 = HibernateUtil.getSessionFactory().openSession();
        session2.getTransaction().begin();
        Requerimiento r = new Requerimiento();
        
        Ubicacion u = new Ubicacion();
        u.setDepartamento("Lima");
        u.setLocalidad("Lima");
        u.setProvincia("Lima");
        
        CostoBeneficio cb = new CostoBeneficio();
        cb.setTasaInternaRetorno(new Double(12.5));
        cb.setValorActualNeto(new Double(0.0));
        
        CostoEfectividad ce = new CostoEfectividad();
        ce.setRatio(new Double(244.66));
        ce.setUnidadMedida(new Double(2729));
        
        MontoInversionTotal mi = new MontoInversionTotal();
        mi.setPrecioMercado(new Double(1875780.0));
        mi.setPrecioSocial(new Double(1553207.0));
        
        
        
        UnidadFormuladora uf = new UnidadFormuladora();
        uf.setNombre("Educacion");
        uf.setDescripcion("Unidad de Educacion");
        
        
        r.setNombre("Proyecto para la construccion bla bla bla");
        r.setObjetivo("Maximizar la utilidad, minizar los recursos");
        r.setFuenteFinanciamiento("educacion");
        r.setProgramaInversion(false);
        r.setAnalisisSostenibilidad("La sostenibilidad del proyecto se define como la habilidad del proyecto de mantener su operación, servicios y beneficios durante todo el horizonte de vida del proyecto. Esto implica considerar en el tiempo y el marco económico, social y político en que el proyecto se desarrolla. Es así, que la sostenibilidad del proyecto se orienta a la satisfacción de las necesidades de las generaciones presentes, sin poner en riesgo o comprometer la atención de las necesidades de las generaciones futuras. Para ello, la Municipalidad Distrital de San Antonio tiene la capacidad para gestionar y asumir el financiamiento del presente proyecto en beneficio de la población del sector El Valle. Así mismo, cuenta con asistencia técnica para la ejecución del proyecto. Así también, cabe destacar que la Municipalidad Distrital de San Antonio se hará responsable del mantenimiento, lo cual permitirá la sostenibilidad del proyecto durante su vida útil.");
        r.setUnidadEjecutoraRecomendada("educacion");
        r.setCostoOperacion(new Double(12000));
        r.setCostoMantenimiento(new Double(15000));
        r.setFechaCreacion(new Date());
        r.setElaboradoPor("ERODRICH");
        
        r.setEstadoTramite(estado);
        r.setUbicacion(u);
        r.setCostoBeneficio(cb);
        r.setCostoEfectividad(ce);
        r.setMontoInversion(mi);
        r.setUnidadFormuladora(uf);

        
        reqDao.create(r);
    }
    
}
