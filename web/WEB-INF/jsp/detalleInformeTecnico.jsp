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
            <!-- Outter Card-->
            <div class="card">
                <div class="card-body">
                    <h2>Detalle Informe Técnico</h2>
                </div>
                <!-- Row 1 -->
                <div class="row">
                    <div class="col-sm-8">
                        <!-- Inner Card-->
                        <div class="card">
                            <div class="card-header">
                                Nombre:
                            </div>
                            <div class="card-body">
                                Informe Impacto Medioambiental
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <!-- Inner Card-->
                        <div class="card">
                            <div class="card-header">
                                Identificador:
                            </div>
                            <div class="card-body">
                                P0001
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Row 2 -->
                <div class="row">
                    <div class="col-sm-4">
                        <!-- Inner Card-->
                        <div class="card">
                            <div class="card-header">
                                Identificador Requerimiento:
                            </div>
                            <div class="card-body">
                                R0001
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <!-- Inner Card-->
                        <div class="card">
                            <div class="card-header">
                                Monto Asignado:
                            </div>
                            <div class="card-body">
                                6048000.0
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <!-- Inner Card-->
                        <div class="card">
                            <div class="card-header">
                                Estado Trámite:
                            </div>
                            <div class="card-body">
                                Pendiente
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Row 3 -->
                <div class="row">
                    <div class="col-md-12">
                        <!-- Inner Card-->
                        <div class="card">
                            <div class="card-header">
                                Nombre Requerimiento:
                            </div>
                            <div class="card-body">
                                CONSTRUCCION E IMPLEMENTACION DE LABORATORIOS DE LA FACULTAD DE MEDICINA HUMANA EN LA CIUDAD UNIVERSITARIA
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="card">
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item">Fecha Declaración Viabilidad: <span class="float-right"></span> </li>
                                <li class="list-group-item">Fecha Creación: <span class="float-right">2018-01-01</span> </li>
                                <li class="list-group-item">Fecha Actualización: <span class="float-right"></span> </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card">
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item">Aprobado por: <span class="float-right"></span> </li>
                                <li class="list-group-item">Elaborado por: <span class="float-right">ERODRICH</span> </li>
                                <li class="list-group-item">Revisado por: <span class="float-right"></span> </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card" style="width: 18rem;">
                            <button type="button" class="btn btn-primary btn-sm" onclick="javascript:history.back();">Retornar</button>
                        </div>
                    </div>
                </div>
            </div>


        </div>
        <%@include file="includes/footer.jsp" %>
    </body>
</html>

