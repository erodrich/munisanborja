/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.munisanborja.sys.controller;

import com.munisanborja.sys.model.bean.BeanBusquedaRequerimiento;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Eric
 */
@Controller
public class RequerimientoController {

    @RequestMapping(value = "/listarRequerimiento.htm", method = RequestMethod.GET)
    public String listarRequerimiento(Model model, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        System.out.println("Pruebaaaaaaa");
        //BeanBusquedaRequerimiento busquedareq = new BeanBusquedaRequerimiento();
        //model.addAttribute("busquedareq", busquedareq);

        return "listarRequerimiento";

    }

    @RequestMapping(value = "/buscarRequerimiento", method = RequestMethod.POST)
    public String buscarRequerimiento(@ModelAttribute("busquedareq") BeanBusquedaRequerimiento busquedareq,
            BindingResult result, Model model) {

        DateFormat df = new SimpleDateFormat("yyyy-MM-dd");

        if (busquedareq.getFechaInicio() == null || busquedareq.getFechaFinal() == null) {
            model.addAttribute("errorPIP", "Las fechas no pueden estar vacías");
        } else {

            if (busquedareq.getFechaFinal().getTime() < busquedareq.getFechaInicio().getTime()) {
                model.addAttribute("errorPIP", "El rango final debe ser superior al rango inicial");
            } else {

                //List<BeanInformePresupuestal> list = informepresupuestaldao.getInformesPresupuestales(df.format(busquedapip.getFechaInicio()), df.format(busquedapip.getFechaFinal()));
                //if (list.isEmpty()) {
                //    model.addAttribute("errorPIP", "No se encontraron registros para el rango de fechas establecido.");
                //}
                model.addAttribute("busquedareq", busquedareq);

                //model.addAttribute("list", list);             
            }

        }

        return "listarRequerimiento";

    }
}
