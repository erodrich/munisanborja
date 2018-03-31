/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.munisanborja.sys.dao;

import com.munisanborja.sys.model.entities.EvaluacionProceso;
import com.munisanborja.sys.model.entities.Requerimiento;
import java.util.Date;
import java.util.List;

/**
 *
 * @author Hugo Alexander
 */
public interface EvaluacionProcesoInterface {
    
    public List<EvaluacionProceso> listarEvaluacionProceso();
    public List<EvaluacionProceso> listarEvaluacionProceso(Date fechaInicio, Date fechaFinal);
    public List<EvaluacionProceso> listarEvaluacionProceso(String fechaInicio, String fechaFinal);
    public EvaluacionProceso get(Integer id);
    public EvaluacionProceso get(String id);
    public void create(EvaluacionProceso c);
    public void update(EvaluacionProceso c);
    public void delete(EvaluacionProceso c);
    
}
