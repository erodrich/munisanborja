<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>       

        <title>Sistema de Gestión Municipal - Versión 1.1</title>
    </head>
    <body>
        <%@include file="header.jsp" %>

        <div class="container col-sm-8" style="font-size: small">

            <form:form action="${action}" method="POST" modelAttribute="requerimiento">

                <div class="card">
                    <div class="card-body">   
                        <div class="row">
                            <div class="form-group col-xs-10 col-sm-6 col-md-6 col-lg-6">
                                <label for="nombrePIP">Identificador:</label>
                                <input type="text" class="form-control form-control-sm" id="identificador" disabled="true" value="${requerimiento.nombre}" />
                            </div>

                            <div class="form-group col-xs-10 col-sm-6 col-md-6 col-lg-6">
                                <label for="nombre">Nombre:</label>
                                <input type="text" class="form-control form-control-sm" id="nombre" disabled="true" value="${requerimiento.nombre}" />
                            </div>
                            <div class="form-group col-xs-10 col-sm-6 col-md-6 col-lg-6">
                                <label for="fechaCreacion">Fecha de Creación: </label>
                                <!-- <fmt:formatDate value="${requerimiento.fechaCreacion}"
                                                pattern="yyyy-MM-dd"
                                                var="fechaCreacionF" /> -->
                                <input type="text" class="form-control form-control-sm" id="fechaCreacion" disabled="true" value="${requerimiento.fechaCreacion}" />
                            </div>
                            <div class="form-group col-xs-10 col-sm-6 col-md-6 col-lg-6">
                                <label for="elaboradoPor">Elaborado por: </label>
                                <input type="text" class="form-control form-control-sm" id="elaboradoPor" disabled="true" value="${requerimiento.elaboradoPor}" />
                            </div>
                            <div class="form-group col-xs-10 col-sm-6 col-md-6 col-lg-6">
                                <label for="fechaAprobacion">Fecha de aprobación: </label>
                                <input type="text" class="form-control form-control-sm" id="fechaAprobacion" disabled="true" value="${requerimiento.fechaAprobacion}" />
                            </div>
                            <div class="form-group col-xs-10 col-sm-6 col-md-6 col-lg-6">
                                <label for="aprobadoPor">Aprobado por: </label>
                                <input type="text" class="form-control form-control-sm" id="aprobadoPor" disabled="true" value="${requerimiento.aprobadoPor}" />
                            </div>
                            <div class="form-group col-xs-10 col-sm-6 col-md-6 col-lg-6">
                                <label for="fechaRechazo">Fecha de Rechazo: </label>
                                <input type="text" class="form-control form-control-sm" id="fechaRechazo" disabled="true" value="${requerimiento.fechaRechazo}" />
                            </div>
                            <div class="form-group col-xs-10 col-sm-6 col-md-6 col-lg-6">
                                <label for="revisadoPor">Revisado por: </label>
                                <input type="text" class="form-control form-control-sm" id="revisadoPor" disabled="true" value="${requerimiento.revisadoPor}" />
                            </div>
                            <div class="form-group col-xs-10 col-sm-6 col-md-6 col-lg-6">
                                <label for="objetivo">Objetivo:</label>
                                <input type="text" class="form-control form-control-sm" id="objetivo" disabled="true" value="${requerimiento.objetivo}" />
                            </div> 

                            <div class="form-group col-xs-10 col-sm-6 col-md-6 col-lg-6">
                                <label for="problema">Problemática a Resolver:</label>
                                <input type="text" class="form-control form-control-sm" id="problema" disabled="true" value="${requerimiento.problema}" />
                            </div>

                            <div class="form-group col-xs-10 col-sm-6 col-md-6 col-lg-6">
                                <label for="analisisSostenibilidad">Analisis Sostenibilidad:</label>
                                <input type="text" class="form-control form-control-sm" id="analisisSostenibilidad" disabled="true" value="${requerimiento.analisisSostenibilidad}" />
                            </div>
                            <div class="form-group col-xs-10 col-sm-6 col-md-6 col-lg-6">
                                <label for="fuenteFinanciamiento">Fuente de Financiamiento: </label>
                                <input type="text" class="form-control form-control-sm" id="fuenteFinanciamiento" disabled="true" value="${requerimiento.fuenteFinanciamiento}" />
                            </div>
                            <div class="form-group col-xs-10 col-sm-6 col-md-6 col-lg-6">
                                <label for="programaInversion">Cuenta con programa de inversion:</label>
                                <c:choose>
                                    <c:when test="${requerimiento.programaInversion}">
                                        <input type="text" class="form-control form-control-sm" id="programaInversion" disabled="true" value="Si" />
                                    </c:when>
                                    <c:otherwise>
                                        <input type="text" class="form-control form-control-sm" id="programaInversion" disabled="true" value="No" />
                                    </c:otherwise>
                                </c:choose>
                            </div>
                            <div class="form-group col-xs-10 col-sm-6 col-md-6 col-lg-6">
                                <label for="unidadEjecutora">Unidad Ejecutora:</label>
                                <input type="text" class="form-control form-control-sm" id="unidadEjecutora" disabled="true" value="${requerimiento.unidadEjecutoraRecomendada}" />
                            </div>
                            <div class="form-group col-xs-10 col-sm-6 col-md-6 col-lg-6">
                                <label for="costoOperacion">Costo de Operación: </label>
                                <input type="text" class="form-control form-control-sm" id="costoOperacion" disabled="true" value="${requerimiento.costoOperacion}" />
                            </div>
                            <div class="form-group col-xs-10 col-sm-6 col-md-6 col-lg-6">
                                <label for="costoMantenimiento">Costo de Mantenimiento: </label>
                                <input type="text" class="form-control form-control-sm" id="costoMantenimiento" disabled="true" value="${requerimiento.costoMantenimiento}" />
                            </div>
                            


                            <div class="clearfix"></div>
                        </div>

                    </div>        
                </div>                

            </form:form>            

        </div>
    </body>
</html>
