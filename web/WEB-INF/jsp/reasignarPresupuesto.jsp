<%-- 
    Document   : reasignarPresupuesto
    Created on : 27/03/2018, 04:59:10 AM
    Author     : OPERADOR
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
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script> 
        <title>Reasignar Presupuesto</title>
    </head>
    <body>
        <%@include file="header.jsp" %>

        <div class="container col-sm-8" style="font-size: small">

            <c:if test="${not empty errorPIP}">
                <div class="alert alert-danger alert-dismissible" role="alert">
                    <button type="button" class="close" data-dismiss="alert"
                            aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                    <strong>${errorPIP}</strong>
                </div>
            </c:if>            

            <form:form action="buscarProyectoIdentificador.htm" method="POST" modelAttribute="busquedareq">
                <div class="input-group">
                    <label for="identificador" class="col-form-label">Identificador:&nbsp;&nbsp;&nbsp;</label>
                    <form:input type="text" class="form-control-sm" path="identificador" placeholder="PXXXXX" />
                    <form:errors path="identificador" cssClass="error"><span style="color: red; font-weight: bold; ">Campo requerido</span></form:errors>

                        <button type="submit" class="btn btn-primary  btn-sm">Buscar</button>
                    </div>

                    <br/>
                    <table class="table table-striped" style="font-size: smaller; padding-left: 10px; padding-right: 10px;">
                        <thead>
                            <tr style="text-align: center;">
                                <th>Identificador</th>
                                <th>Nombre</th>
                                <th>Comprometido</th>
                                <th>Devengado</th>
                                <th>Ejecutado</th>
                                <th>Total</th>
                            </tr>
                        </thead>
                        <tr style="text-align: center;">
                            <td><a href="${pageContext.request.contextPath}/modificarPresupuesto/${proyecto.codigo}.htm">${proyecto.identificador}</a></td>
                        <td>${proyecto.requerimiento.nombre}</td>
                        <td>${proyecto.montoComprometido}</td>
                        <td><fmt:formatNumber type="number" maxFractionDigits="2" value="${proyecto.montoDevengado}" /></td>
                        <td><fmt:formatNumber type="number" maxFractionDigits="2" value="${proyecto.montoEjecutado}" /></td>
                        <td><fmt:formatNumber type="number" maxFractionDigits="2" value="${proyecto.montoComprometido - proyecto.montoDevengado- proyecto.montoEjecutado}" /></td>
                    </tr>
                </table>
            </form:form>
    </body>
</html>
