<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
                                <label for="nombrePIP">Nombre:</label>
                                <input type="text" class="form-control form-control-sm" id="identificadorPIP" disabled="true" value="${requerimiento.nombre}" />
                            </div>

                            <div class="form-group col-xs-10 col-sm-6 col-md-6 col-lg-6">
                                <label for="nivelEstudio">Objetivo:</label>
                                <input type="text" class="form-control form-control-sm" id="nivelEstudio" disabled="true" value="${requerimiento.objetivo}" />
                            </div> 

                            <div class="form-group col-xs-10 col-sm-6 col-md-6 col-lg-6">
                                <label for="estadoPIP">Problemática a Resolver:</label>
                                <input type="text" class="form-control form-control-sm" id="estadoPIP" disabled="true" value="${requerimiento.problema}" />
                            </div>

                            <div class="form-group col-xs-10 col-sm-6 col-md-6 col-lg-6">
                                <label for="plazoEvaluacion">Analisis Sostenibilidad:</label>
                                <input type="text" class="form-control form-control-sm" id="plazoEvaluacion" disabled="true" value="${requerimiento.analisisSostenibilidad}" />
                            </div> 


                            <div class="clearfix"></div>
                        </div>

                    </div>        
                </div>                

            </form:form>            

        </div>
    </body>
</html>
