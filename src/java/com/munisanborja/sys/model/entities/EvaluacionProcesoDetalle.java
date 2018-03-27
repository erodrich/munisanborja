/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.munisanborja.sys.model.entities;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

/**
 *
 * @author Hugo Alexander
 */
@Entity
public class EvaluacionProcesoDetalle {
    
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private int codigo;
    
    @ManyToOne(cascade=CascadeType.ALL)
    @JoinColumn(name="codigoevaluacionproceso", referencedColumnName="codigo", nullable=false)
    private EvaluacionProceso evaluacionProceso;
    
    @ManyToOne(cascade=CascadeType.ALL)
    @JoinColumn(name="codigocomponente", referencedColumnName="codigo", nullable=false)
    private Componente componente;
    
    @ManyToOne(cascade=CascadeType.ALL)
    @JoinColumn(name="codigoparametro", referencedColumnName="codigo", nullable=false)
    private Parametro parametro;
    
}
