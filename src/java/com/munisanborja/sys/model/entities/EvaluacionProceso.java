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
public class EvaluacionProceso {
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private int codigo;
    
    @ManyToOne(cascade=CascadeType.ALL)
    @JoinColumn(name="codigoPIP", referencedColumnName="codigo", nullable=false)
    private ProyectoPreInversion proyectoPreInversion;
    
    @ManyToOne(cascade=CascadeType.ALL)
    @JoinColumn(name="codigotipoPIP", referencedColumnName="codigo", nullable=false)
    private TipoProyectoInversion tipoProyectoInversion;
    
    @ManyToOne(cascade=CascadeType.ALL)
    @JoinColumn(name="EstadoTramite_codigo", referencedColumnName="codigo", nullable=false)
    private EstadoTramite estadoTramite;
        
        
}
