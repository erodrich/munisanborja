/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.munisanborja.sys.controller;

import com.munisanborja.sys.dao.EvaluacionProcesoDao;
import com.munisanborja.sys.model.bean.BeanBusquedaRequerimiento;
import com.munisanborja.sys.model.entities.EvaluacionProceso;
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
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Hugo Alexander
 */
@Controller
public class EvaluacionProcesoController {

    EvaluacionProcesoDao rd = new EvaluacionProcesoDao();

    @RequestMapping(value = "/listarEvaluacionProceso.htm", method = RequestMethod.GET)
    public String listarEvalacionProceso(Model model, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        BeanBusquedaRequerimiento busquedaeva = new BeanBusquedaRequerimiento();
        model.addAttribute("busquedaeva", busquedaeva);

        return "listarEvaluacionProceso";
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
/*
    @RequestMapping(value = "/cancel.htm", method = RequestMethod.GET)
    public String cancelEvaluacionProceso() {
        return "redirect:/listarEvaluacionProceso.htm";
    }*/
}
