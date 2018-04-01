<%-- 
    Document   : evaluarProceso
    Created on : 30/03/2018, 03:12:27 PM
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

       <!--<link rel="stylesheet" href="css/bootstrap.min.css">-->
      
        <title>Evaluar Proceso - Sistema de Gestión Municipal - Versión 1.1</title>
    </head>
    <body>
        <%@include file="header.jsp" %>

        <div class="container col-sm-8" style="font-size: small">

            <form action="" role="form" >

                <div class="card">
                    <div class="card-body">   
                        <div class="row">
                            <div class="form-group col-xs-10 col-sm-10 col-md-10 col-lg-10">
                                <label  for="codigorequerimiento">Requerimiento:</label>
                                <select id="codigorequerimiento" class="form-control form-control-sm">
                                    <c:forEach var="req" items="${requerimientoList}" >
                                        <option value="${req.codigo}">${req.nombre}</option>
                                    </c:forEach>                                    
                                </select>

                            </div>

                            <div class="form-group col-xs-10 col-sm-10 col-md-10 col-lg-10">
                                <label for="codigotipoproyecto">Tipo Proyecto</label>
                                <select id="codigotipoproyecto" class="form-control form-control-sm">
                                    <c:forEach var="tps" items="${tipoProyectoList}" >
                                        <option value="${tps.codigo}">${tps.nombre}</option>
                                    </c:forEach>                                    
                                </select>
                            </div>
                           <div class="form-group col-xs-10 col-sm-10 col-md-10 col-lg-10">
                                <label class="control-label" for="impuestorenta">Impuesto a la Renta</label>
                                <div>
                                    <input type="number" class="form-control form-control-sm" id="impuestorenta" value=""/>
                                    <span class="help-block"></span>
                                </div>
                               
                            </div>
                            
                            <div class="form-group col-xs-10 col-sm-10 col-md-10 col-lg-10">
                                <label class="control-label"  for="costomanoobrac">Costo Mano obra calificada</label>
                                <div>
                                    <input type="number" class="form-control form-control-sm" id="costomanoobrac" value="" />
                                </div>     
                                
                            </div>
                            <div class="form-group col-xs-10 col-sm-10 col-md-10 col-lg-10">
                                <label class="control-label"  for="costomanoobranc">Costo Mano obra no calificada</label>
                                <div>
                                    <input type="number" class="form-control form-control-sm" id="costomanoobranc"  value="" />                                    
                                </div>                                    
                            </div>

                            <p style="width: 100px">&nbsp;</p>
                            <p>
                                <button type="button" class="btn btn-primary btn-sm" id="btnguardar">Guardar</button></p>&nbsp;&nbsp;
                            <p>
                                <button type="button" class="btn btn-primary btn-sm" onclick="javascript:history.back();">Retornar</button></p>

                            <div class="clearfix"></div>
                        </div>

                    </div>        
                </div>                

            </form>      
        <!--    
            <script src="js/bootstrap.min.js"></script> 
        <script src="js/jquery-ui.min.js"></script> 
        -->
        <script src="js/validacion.js"></script> 
        </div>
    </body>
</html>
