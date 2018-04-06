<%-- 
    Document   : detalleProcesoReq
    Created on : 05/04/2018, 01:33:03 PM
    Author     : Eric
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="includes/header.jsp" %>      

        <title>Detalle Requerimiento Procesado</title>
    </head>
    <body>

        <div class="container">
            <%@include file="includes/navbar.jsp" %>
            <h2>Detalle de Requerimiento</h2>

            <form:form action="${action}" method="POST" modelAttribute="requerimiento">

                <div class="card">
                    <div class="card-body">   
                        <div class="row center">
                            <div class="form-group col-xs-10 col-sm-6 col-md-12 col-lg-12">
                                <label for="nombrePIP">Identificador:</label>
                                <input type="text" class="form-control form-control-sm" id="identificador" disabled="true" value="${requerimiento.identificador}" />
                            </div>

                            <div class="form-group col-xs-10 col-sm-6 col-md-12 col-lg-12">
                                <label for="nombre">Nombre:</label>
                                <input type="text" class="form-control form-control-sm" id="nombre" disabled="true" value="${requerimiento.nombre}" />
                            </div>
                            <div class="form-group col-xs-10 col-sm-6 col-md-12 col-lg-12">
                                <label for="nombre">Tipo de Proyecto</label>
                                <input type="text" class="form-control form-control-sm" id="nombre" disabled="true" value="${requerimiento.tipo}" />
                            </div>
                            <div class="form-group col-xs-10 col-sm-6 col-md-12 col-lg-12">
                                <label for="fechaCreacion">Fecha de Creación: </label>
                                <input type="text" class="form-control form-control-sm" id="fechaCreacion" disabled="true" value="${requerimiento.fechaCreacion}" />
                            </div>
                            <div class="form-group col-xs-10 col-sm-6 col-md-12 col-lg-12">
                                <label for="elaboradoPor">Impuesto a la Renta: </label>
                                <input type="text" class="form-control form-control-sm" id="elaboradoPor" disabled="true" value="${requerimiento.requerimientoEvaluado.impuestoRenta}" />
                            </div>
                            <div class="form-group col-xs-10 col-sm-5 col-md-6 col-lg-6">
                                <label for="fechaAprobacion">Costo Mano de obra calificada: </label>
                                <input type="text" class="form-control form-control-sm" id="fechaAprobacion" disabled="true" value="${requerimiento.requerimientoEvaluado.cManoObraCalificada}" />
                            </div>
                            <div class="form-group col-xs-10 col-sm-5 col-md-6 col-lg-6">
                                <label for="aprobadoPor">Factor mano de obra calificada: </label>
                                <input type="text" class="form-control form-control-sm" id="aprobadoPor" disabled="true" value="${requerimiento.requerimientoEvaluado.factorManoObraCalificada}" />
                            </div>
                            <div class="form-group col-xs-10 col-sm-5 col-md-6 col-lg-6">
                                <label for="fechaAprobacion">Costo Mano de obra no calificada: </label>
                                <input type="text" class="form-control form-control-sm" id="fechaAprobacion" disabled="true" value="${requerimiento.requerimientoEvaluado.cManoObraNoCalificada}" />
                            </div>
                            <div class="form-group col-xs-10 col-sm-5 col-md-6 col-lg-6">
                                <label for="aprobadoPor">Factor mano de obra no calificada: </label>
                                <input type="text" class="form-control form-control-sm" id="aprobadoPor" disabled="true" value="${requerimiento.requerimientoEvaluado.factorManoObraNoCalificada}" />
                            </div>
                            <div class="form-group col-xs-10 col-sm-5 col-md-5 col-lg-5">
                                <button type="button" class="btn btn-primary btn-sm" onclick="javascript:history.back();">Retornar</button>

                            </div>



                            <div class="clearfix"></div>
                        </div>

                    </div>        
                </div>                

            </form:form>
        </div>
        <%@include file="includes/footer.jsp" %>
    </body>
</html>
