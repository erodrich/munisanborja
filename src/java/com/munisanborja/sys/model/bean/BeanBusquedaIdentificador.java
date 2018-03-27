/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.munisanborja.sys.model.bean;

import javax.validation.constraints.NotNull;

/**
 *
 * @author Eric
 */
public class BeanBusquedaIdentificador {
    
    @NotNull
    private String identificador;

    /**
     * @return the identificador
     */
    public String getIdentificador() {
        return identificador;
    }

    /**
     * @param identificador the identificador to set
     */
    public void setIdentificador(String identificador) {
        this.identificador = identificador;
    }
    
}
