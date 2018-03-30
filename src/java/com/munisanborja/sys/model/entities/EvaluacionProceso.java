/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.munisanborja.sys.model.entities;

import java.util.Date;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import org.springframework.format.annotation.DateTimeFormat;

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
    @JoinColumn(name="codigorequerimiento", referencedColumnName="codigo")
    private Requerimiento requerimiento;
    
    @ManyToOne(cascade=CascadeType.ALL)
    @JoinColumn(name="codigotipoproyecto", referencedColumnName="codigo")
    private TipoProyectoInversion tipoProyectoInversion;
    
    @ManyToOne(cascade=CascadeType.ALL)
    @JoinColumn(name="codigoestado", referencedColumnName="codigo", nullable=false)
    private EstadoTramite estadoTramite;
    
    @Column(updatable = false)
    @DateTimeFormat(pattern = "dd/MM/yyyy")
    private Date fechacreacion;
    private Double impuestorenta;
    private Double costomanoobrac;
    private Double factormanoobrac;
    private Double costomanoobranc;
    private Double factormanoobranc;

    public Requerimiento getRequerimiento() {
        return requerimiento;
    }

    public void setRequerimiento(Requerimiento requerimiento) {
        this.requerimiento = requerimiento;
    }    
    
    public Double getImpuestorenta() {
        return impuestorenta;
    }

    public void setImpuestorenta(Double impuestorenta) {
        this.impuestorenta = impuestorenta;
    }

    public Double getCostomanoobrac() {
        return costomanoobrac;
    }

    public void setCostomanoobrac(Double costomanoobrac) {
        this.costomanoobrac = costomanoobrac;
    }

    public Double getFactormanoobrac() {
        return factormanoobrac;
    }

    public void setFactormanoobrac(Double factormanoobrac) {
        this.factormanoobrac = factormanoobrac;
    }

    public Double getCostomanoobranc() {
        return costomanoobranc;
    }

    public void setCostomanoobranc(Double costomanoobranc) {
        this.costomanoobranc = costomanoobranc;
    }

    public Double getFactormanoobranc() {
        return factormanoobranc;
    }

    public void setFactormanoobranc(Double factormanoobranc) {
        this.factormanoobranc = factormanoobranc;
    }    
    
    public Date getFechacreacion() {
        return fechacreacion;
    }

    public void setFechacreacion(Date fechacreacion) {
        this.fechacreacion = fechacreacion;
    }
    
    
    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public TipoProyectoInversion getTipoProyectoInversion() {
        return tipoProyectoInversion;
    }

    public void setTipoProyectoInversion(TipoProyectoInversion tipoProyectoInversion) {
        this.tipoProyectoInversion = tipoProyectoInversion;
    }

    public EstadoTramite getEstadoTramite() {
        return estadoTramite;
    }

    public void setEstadoTramite(EstadoTramite estadoTramite) {
        this.estadoTramite = estadoTramite;
    }
        
        
}
