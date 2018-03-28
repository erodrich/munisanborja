<%-- 
    Document   : listarEvaluacionProceso
    Created on : 27/03/2018, 10:26:47 PM
    Author     : Hugo Alexander
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
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

            <c:if test="${not empty errorEva}">
                <div class="alert alert-danger alert-dismissible" role="alert">
                    <button type="button" class="close" data-dismiss="alert"
                            aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                    <strong>${errorEva}</strong>
                </div>
            </c:if>            

            <form:form action="buscarEvaluacionProceso.htm" method="POST" modelAttribute="busquedaeva">

                <div class="input-group">
                    <label for="fechaInicio" class="col-form-label">Fecha Inicio:&nbsp;&nbsp;&nbsp;</label>
                    <form:input type="text" class="form-control-sm" path="fechaInicio" placeholder="YYYY-MM-DD" />
                    <form:errors path="fechaInicio" cssClass="error"><span style="color: red; font-weight: bold; ">Campo requerido</span></form:errors>
                        <label for="fechaInicio" class="col-form-label">&nbsp;&nbsp;&nbsp;Fecha Final:&nbsp;&nbsp;&nbsp;</label>
                    <form:input type="text" class="form-control-sm" path="fechaFinal" placeholder="YYYY-MM-DD" />
                    <form:errors path="fechaFinal" cssClass="error"><span style="color: red; font-weight: bold; ">Campo requerido</span></form:errors>
                        <button type="submit" class="btn btn-primary  btn-sm">Buscar</button>
                    </div>

                    <br/>
                    <table class="table table-striped" style="font-size: smaller; padding-left: 10px; padding-right: 10px;">
                        <thead>
                            <tr style="text-align: center;">
                                <th>Identificador</th>
                                <th>Nombre Proyecto</th>
                                <th>Fecha viabilidad</th>
                                <th>Tipo Proyecto</th>
                                <th>Estado</th>
                                <th>Fecha</th>                               
                            </tr>
                        </thead>
                    <c:forEach var="eva" items="${list}">
                        <tr style="text-align: center;">
                            <td>${eva.codigo}</td>
                            <td>${eva.proyectoPreInversion.codigo}</td>
                            <td>${eva.proyectoPreInversion.fechaDeclaratoriaViabilidad}</td>
                            <td>${eva.tipoProyectoInversion.nombre}</td>
                            <td>${eva.estadoTramite.nombre}</td>
                            <td>${eva.fechacreacion}</td>
                        </tr>
                    </c:forEach>
                </table>
            </form:form>

        </div>

    </body>
</html>
