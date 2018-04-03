/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.munisanborja.sys.controller;

import com.munisanborja.sys.dao.EvaluacionProcesoDao;
import com.munisanborja.sys.dao.RequerimientoDao;
import com.munisanborja.sys.dao.RequerimientosDao;
import com.munisanborja.sys.dao.TiposProyectosDao;
import com.munisanborja.sys.model.bean.BeanBusquedaRequerimiento;
import com.munisanborja.sys.model.entities.EvaluacionProceso;
import com.munisanborja.sys.model.entities.Requerimiento;
import com.munisanborja.sys.model.entities.Requerimientos;
import com.munisanborja.sys.model.entities.TiposProyectos;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.List;
import javax.servlet.ServletException;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Hugo Alexander
 */
@Controller
public class EvaluacionProcesoController {

    EvaluacionProcesoDao rd = new EvaluacionProcesoDao();
    RequerimientoDao rd1 = new RequerimientoDao();

    @RequestMapping(value = "/listarEvaluacionProceso.htm", method = RequestMethod.GET)
    public String listarEvalacionProceso(Model model, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        BeanBusquedaRequerimiento busquedaeva = new BeanBusquedaRequerimiento();
        model.addAttribute("busquedaeva", busquedaeva);

        return "listarEvaluacionProceso";
    }
    
    @RequestMapping(value = "/listarEvaluacionProcesoIngreso.htm", method = RequestMethod.GET)
    public String listarEvaluacionProcesoIngreso(Model model, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        BeanBusquedaRequerimiento busquedaeva = new BeanBusquedaRequerimiento();
        model.addAttribute("busquedaeva", busquedaeva);

        return "listarEvaluacionProcesoIngreso";
    }    
    
    @RequestMapping(value = "/buscarEvaluacionProceso.htm", method = RequestMethod.POST)
    public String buscarEvaluacionProceso(@ModelAttribute("busquedaeva") BeanBusquedaRequerimiento busquedaeva,
            BindingResult result, Model model){
        DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        
        if (busquedaeva.getFechaInicio() == null || busquedaeva.getFechaFinal() == null) {
            model.addAttribute("errorEva", "Las fechas no pueden estar vacías");
        } else {

            if (busquedaeva.getFechaFinal().getTime() < busquedaeva.getFechaInicio().getTime()) {
                model.addAttribute("errorEva", "El rango final debe ser superior al rango inicial");
            } else {

                List<EvaluacionProceso> list = rd.listarEvaluacionProceso(df.format(busquedaeva.getFechaInicio()), df.format(busquedaeva.getFechaFinal()));
                model.addAttribute("busquedaeva", busquedaeva);

                model.addAttribute("list", list);
            }

        }

        return "listarEvaluacionProceso";
    }
    
    @RequestMapping(value = "/buscarEvaluacionProcesoIngreso.htm", method = RequestMethod.POST)
    public String buscarEvaluacionProcesoIngreso(@ModelAttribute("busquedaeva") BeanBusquedaRequerimiento busquedaeva,
            BindingResult result, Model model){
        DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        
        if (busquedaeva.getFechaInicio() == null || busquedaeva.getFechaFinal() == null) {
            model.addAttribute("errorEva", "Las fechas no pueden estar vacías");
        } else {

            if (busquedaeva.getFechaFinal().getTime() < busquedaeva.getFechaInicio().getTime()) {
                model.addAttribute("errorEva", "El rango final debe ser superior al rango inicial");
            } else {
                
                List<Requerimiento> list = rd1.listarRequerimiento(df.format(busquedaeva.getFechaInicio()), df.format(busquedaeva.getFechaFinal()));
                model.addAttribute("busquedaeva", busquedaeva);

                model.addAttribute("list", list);
            }

        }

        return "listarEvaluacionProcesoIngreso";
    }    
    
    @RequestMapping(value = "/detalleEvaluacionProceso/{codigo}.htm", method = RequestMethod.GET)
    public String detalleEvaluacionProceso(Model model, HttpServletRequest request, HttpServletResponse response, @PathVariable String codigo) {
        rd = new EvaluacionProcesoDao();
        EvaluacionProceso evaluacionproceso = rd.get(Integer.parseInt(codigo));

        model.addAttribute("evaluacionproceso", evaluacionproceso);

        //BeanBusquedaRequerimiento busquedareq = new BeanBusquedaRequerimiento();
        //model.addAttribute("busquedareq", busquedareq);
        return "detalleEvaluacionProceso";

    }
    
    @RequestMapping(value = "/evaluarProceso/{codigo}.htm", method = RequestMethod.GET)
    public String evaluarProceso(ModelMap model, HttpServletRequest request, HttpServletResponse response, @PathVariable String codigo) {
        
        /*RequerimientosDao req = new RequerimientosDao();
        List<Requerimientos> lista;        
        lista=req.requerimientoList();
        model.put("requerimientoList", lista);*/
        
        TiposProyectosDao tps = new TiposProyectosDao();
        List<TiposProyectos> list;
        list=tps.tiposProyectosList();
        model.put("tipoProyectoList", list);
        
        rd = new EvaluacionProcesoDao();
        EvaluacionProceso evaluacionproceso = rd.get(Integer.parseInt(codigo));

        model.addAttribute("evaluacionproceso", evaluacionproceso);
        
        
        return "evaluarProceso";

    }
    
    
/*
    @RequestMapping(value = "/cancel.htm", method = RequestMethod.GET)
    public String cancelEvaluacionProceso() {
        return "redirect:/listarEvaluacionProceso.htm";
    }*/
    
    @RequestMapping(value = "/grabarForm.htm", method = RequestMethod.POST)
    public String grabarForm(@ModelAttribute("evaluacionproceso") EvaluacionProceso evaluacionproceso,
            BindingResult result, Model model){
        
        DateFormat df = new SimpleDateFormat("yyyy-MM-dd");

        EvaluacionProcesoDao rd = new EvaluacionProcesoDao();
        rd.create(evaluacionproceso);
        
        return "redirect:/listarEvaluacionProcesoIngreso.htm";
    }      
    
}
