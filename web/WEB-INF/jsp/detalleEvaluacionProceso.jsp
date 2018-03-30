<%-- 
    Document   : detalleEvaluacionProceso
    Created on : 29/03/2018, 10:00:49 PM
    Author     : Hugo Alexander
--%>
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

        <title>Detalle - Sistema de Gestión Municipal - Versión 1.1</title>
    </head>
    <body>
        <%@include file="header.jsp" %>

        <div class="container col-sm-8" style="font-size: small">

            <form:form action="${action}" method="POST" modelAttribute="evaluacionproceso">

                <div class="card">
                    <div class="card-body">   
                        <div class="row">
                            <div class="form-group col-xs-10 col-sm-10 col-md-10 col-lg-10">
                                <label for="identificadorrequerimiento">Identificador Requerimiento:</label>
                                <input type="text" class="form-control form-control-sm" id="identificadorrequerimiento" disabled="true" value="${evaluacionproceso.requerimiento.identificador}" />
                            </div>

                           <div class="form-group col-xs-10 col-sm-10 col-md-10 col-lg-10">
                                <label for="nombrerequerimiento">Nombre Requerimiento:</label>
                                <input type="text" class="form-control form-control-sm" id="nombrerequerimiento" disabled="true" value="${evaluacionproceso.requerimiento.nombre}" />
                            </div>
                              <div class="form-group col-xs-10 col-sm-10 col-md-10 col-lg-10">
                                <label for="tipoproyecto">Tipo Proyecto:</label>
                                <input type="text" class="form-control form-control-sm" id="tipoproyecto" disabled="true" value="${evaluacionproceso.tipoProyectoInversion.nombre}" />
                            </div>
                             <div class="form-group col-xs-10 col-sm-10 col-md-10 col-lg-10">
                                <label for="fechacreacion">Fecha creación:</label>
                                <input type="text" class="form-control form-control-sm" id="fechacreacion" disabled="true" value="${evaluacionproceso.fechacreacion}" />
                            </div>
                             <div class="form-group col-xs-10 col-sm-10 col-md-10 col-lg-10">
                                <label for="impuestorenta">Impuesto a la renta: </label>
                                <input type="text" class="form-control form-control-sm" id="impuestorenta" disabled="true" value="${evaluacionproceso.impuestorenta}" />
                            </div>
                            <div class="form-group col-xs-10 col-sm-6 col-md-6 col-lg-6">
                                <label for="costomanoobrac">Costo mano de obra calificada: </label>
                                <input type="text" class="form-control form-control-sm" id="costomanoobrac" disabled="true" value="${evaluacionproceso.costomanoobrac}" />
                            </div>
                            <div class="form-group col-xs-10 col-sm-6 col-md-6 col-lg-6">
                                <label for="factormanoobrac">Factor mano obra calificada: </label>
                                <input type="text" class="form-control form-control-sm" id="factormanoobrac" disabled="true" value="${evaluacionproceso.factormanoobrac}" />
                            </div>
                             <div class="form-group col-xs-10 col-sm-6 col-md-6 col-lg-6">
                                <label for="costomanoobranc">Costo mano de obra no calificada: </label>
                                <input type="text" class="form-control form-control-sm" id="costomanoobranc" disabled="true" value="${evaluacionproceso.costomanoobranc}" />
                            </div>
                             <div class="form-group col-xs-10 col-sm-6 col-md-6 col-lg-6">
                                <label for="factormanoobranc">Factor mano obra no calificada: </label>
                                <input type="text" class="form-control form-control-sm" id="factormanoobranc" disabled="true" value="${evaluacionproceso.factormanoobranc}" />
                            </div>
                            <button type="button" class="btn btn-primary btn-sm" onclick="javascript:history.back();">Retornar</button>

                            <div class="clearfix"></div>
                        </div>

                    </div>        
                </div>                

            </form:form>            

        </div>
    </body>
</html>
