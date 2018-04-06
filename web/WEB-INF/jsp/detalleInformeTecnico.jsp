<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="includes/header.jsp" %>      

        <title>Detalle - Sistema de Gestión Municipal - Versión 1.1</title>
    </head>
    <body>

        <div class="container">
            <%@include file="includes/navbar.jsp" %>
            <h2>Detalle de Informe Técnico</h2>

            <form:form action="${action}" method="POST" modelAttribute="informetecnico">

                <div class="card">
                    <div class="card-body">   
                        <div class="row">
                            <div class="form-group col-xs-10 col-sm-6 col-md-6 col-lg-6">
                                <label for="nombrePIP">Identificador:</label>
                                <input type="text" class="form-control form-control-sm" id="identificador" disabled="true" value="${informetecnico.proyectoPreInversion.identificador}" />
                            </div>

                            <div class="form-group col-xs-10 col-sm-6 col-md-6 col-lg-6">
                                <label for="nombre">Nombre:</label>
                                <input type="text" class="form-control form-control-sm" id="nombre" disabled="true" value="${informetecnico.nombre}" />
                            </div>
                            <div class="form-group col-xs-10 col-sm-6 col-md-6 col-lg-6">
                                <label for="fechaCreacion">Estado Tramite: </label>
                                <input type="text" class="form-control form-control-sm" id="fechaCreacion" disabled="true" value="${informetecnico.proyectoPreInversion.estadoTramite.nombre}" />
                            </div>
                            <div class="form-group col-xs-10 col-sm-6 col-md-6 col-lg-6">
                                <label for="elaboradoPor">Fecha Declaracion Viabilidad: </label>
                                <input type="text" class="form-control form-control-sm" id="elaboradoPor" disabled="true" value="${informetecnico.proyectoPreInversion.fechaDeclaracionViabilidad}" />
                            </div>
                            <div class="form-group col-xs-10 col-sm-6 col-md-6 col-lg-6">
                                <label for="fechaAprobacion">Monto Asignado: </label>
                                <input type="text" class="form-control form-control-sm" id="fechaAprobacion" disabled="true" value="${informetecnico.proyectoPreInversion.montoComprometido}" />
                            </div>
                            <div class="form-group col-xs-10 col-sm-6 col-md-6 col-lg-6">
                                <label for="aprobadoPor">Identificador Requerimiento: </label>
                                <input type="text" class="form-control form-control-sm" id="aprobadoPor" disabled="true" value="${informetecnico.proyectoPreInversion.requerimiento.identificador}" />
                            </div>
                            <div class="form-group col-xs-10 col-sm-6 col-md-6 col-lg-6">
                                <label for="fechaRechazo">Nombre Rquerimiento: </label>
                                <input type="text" class="form-control form-control-sm" id="fechaRechazo" disabled="true" value="${informetecnico.proyectoPreInversion.requerimiento.nombre}" />
                            </div>
                            <div class="form-group col-xs-10 col-sm-6 col-md-6 col-lg-6">
                                <label for="revisadoPor">Fecha Creación: </label>
                                <input type="text" class="form-control form-control-sm" id="revisadoPor" disabled="true" value="${informetecnico.proyectoPreInversion.requerimiento.fechaCreacion}" />
                            </div>
                            <div class="form-group col-xs-10 col-sm-6 col-md-6 col-lg-6">
                                <label for="objetivo">Fecha Actualización:</label>
                                <input type="text" class="form-control form-control-sm" id="objetivo" disabled="true" value="${informetecnico.proyectoPreInversion.requerimiento.fechaActualizacion}" />
                            </div> 

                            <div class="form-group col-xs-10 col-sm-6 col-md-6 col-lg-6">
                                <label for="problema">Elaborado por:</label>
                                <input type="text" class="form-control form-control-sm" id="problema" disabled="true" value="${informetecnico.elaboradoPor}" />
                            </div>

                            <div class="form-group col-xs-10 col-sm-6 col-md-6 col-lg-6">
                                <label for="analisisSostenibilidad">Revisado por:</label>
                                <input type="text" class="form-control form-control-sm" id="analisisSostenibilidad" disabled="true" value="${informetecnico.revisadoPor}" />
                            </div>
                            <div class="form-group col-xs-10 col-sm-6 col-md-6 col-lg-6">
                                <label for="fuenteFinanciamiento">Aprobado por: </label>
                                <input type="text" class="form-control form-control-sm" id="fuenteFinanciamiento" disabled="true" value="${informetecnico.aprobadoPor}" />
                            </div>

                            <button type="button" class="btn btn-primary btn-sm" onclick="javascript:history.back();">Retornar</button>

                            <div class="clearfix"></div>
                        </div>

                    </div>        
                </div>                

            </form:form>
        </div>
        <%@include file="includes/footer.jsp" %>
    </body>
</html>

