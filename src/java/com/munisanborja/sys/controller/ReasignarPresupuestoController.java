/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.munisanborja.sys.controller;

import com.munisanborja.sys.dao.ProyectoPreInversionDao;
import com.munisanborja.sys.model.bean.BeanBusquedaFecha;
import com.munisanborja.sys.model.bean.BeanBusquedaIdentificador;
import com.munisanborja.sys.model.entities.ProyectoPreInversion;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author OPERADOR
 */
@Controller
public class ReasignarPresupuestoController {
    
    ProyectoPreInversionDao ppid = new ProyectoPreInversionDao();
    
    @RequestMapping(value = "/listarProyectos.htm", method = RequestMethod.GET)
    public String listarProyectos(Model model, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //System.out.println("Pruebaaaaaaa");
        BeanBusquedaFecha busquedareq = new BeanBusquedaFecha();
        model.addAttribute("busquedareq", busquedareq);

        return "listarProyectos";

    }
    
    @RequestMapping(value = "/buscarProyecto.htm", method = RequestMethod.POST)
    public String buscarProyecto(@ModelAttribute("busquedareq") BeanBusquedaFecha busquedareq,
            BindingResult result, Model model) {

        DateFormat df = new SimpleDateFormat("yyyy-MM-dd");

        if (busquedareq.getFechaInicio() == null || busquedareq.getFechaFinal() == null) {
            model.addAttribute("errorPIP", "Las fechas no pueden estar vacías");
        } else {

            if (busquedareq.getFechaFinal().getTime() < busquedareq.getFechaInicio().getTime()) {
                model.addAttribute("errorPIP", "El rango final debe ser superior al rango inicial");
            } else {

                List<ProyectoPreInversion> list = ppid.listarProyectoPreInversion(df.format(busquedareq.getFechaInicio()), df.format(busquedareq.getFechaFinal()));
                model.addAttribute("busquedareq", busquedareq);

                model.addAttribute("list", list);
            }

        }

        return "listarProyectos";

    }
    
    @RequestMapping(value = "/modificarPresupuesto/{codigo}.htm", method = RequestMethod.GET)
    public String modificarPresupuesto(Model model, HttpServletRequest request, HttpServletResponse response, @PathVariable String codigo) {
        ppid = new ProyectoPreInversionDao();
        ProyectoPreInversion proyecto = ppid.get(Integer.parseInt(codigo));

        model.addAttribute("proyecto", proyecto);

        return "modificarPresupuesto";
    }
    
    @RequestMapping(value = "/reasignarPresupuesto.htm", method = RequestMethod.GET)
    public String reasignarPresupuesto(Model model, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        
        BeanBusquedaIdentificador busquedareq = new BeanBusquedaIdentificador();
        model.addAttribute("busquedareq", busquedareq);

        return "reasignarPresupuesto";

    }
    
    @RequestMapping(value = "/buscarProyectoIdentificador.htm", method = RequestMethod.POST)
    public String buscarProyectoIdentificador(@ModelAttribute("busquedareq") BeanBusquedaIdentificador busquedareq,
            BindingResult result, Model model) {

        ppid = new ProyectoPreInversionDao();
        
        if(!busquedareq.getIdentificador().isEmpty()){
            ProyectoPreInversion p = ppid.get(busquedareq.getIdentificador());
            model.addAttribute("proyecto", p);
        } else {
            model.addAttribute("errorPIP", "El identificador no puede estar vacio");
        }
        

        return "reasignarPresupuesto";

    }
}
