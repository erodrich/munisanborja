/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.munisanborja.sys.model.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 *
 * @author Hugo Alexander
 */
@Entity
public class TipoProyectoInversion {
    
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    @Column(name="codigo")
    private int codigo;
    private String nombre;
    private Double factormocalificada;
    private Double factormonocalificada;

    public Double getFactormocalificada() {
        return factormocalificada;
    }

    public void setFactormocalificada(Double factormocalificada) {
        this.factormocalificada = factormocalificada;
    }

    public Double getFactormonocalificada() {
        return factormonocalificada;
    }

    public void setFactormonocalificada(Double factormonocalificada) {
        this.factormonocalificada = factormonocalificada;
    }     
    
    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    
}
