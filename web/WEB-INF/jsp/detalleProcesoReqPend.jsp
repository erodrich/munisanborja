<%-- 
    Document   : detalleProcesoReqPend
    Created on : 05/04/2018, 03:12:27 PM
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
            <h2>Detalle de Requerimiento a Procesar</h2>

            <form:form method="POST" modelAttribute="busquedareq">

                <div class="card">
                    <div class="card-body">   
                        <div class="row center">
                            <input type="hidden" name="codigo" value="${requerimiento.codigo}"/>
                            <div class="form-group col-xs-10 col-sm-6 col-md-12 col-lg-12">
                                <label for="nombrePIP">Identificador:</label>
                                <input type="text" class="form-control form-control-sm" id="identificador" disabled="true" value="${requerimiento.identificador}" />
                            </div>

                            <div class="form-group col-xs-10 col-sm-6 col-md-12 col-lg-12">
                                <label for="nombre">Nombre:</label>
                                <input type="text" class="form-control form-control-sm" id="nombre" disabled="true" value="${requerimiento.nombre}" />
                            </div>
                            <div class="form-group col-xs-10 col-sm-6 col-md-12 col-lg-12">
                                <label for="sector">Tipo de Proyecto</label>
                                <form:select path="sector" id="select_id">
                                    <form:options items="${sectores}" itemValue="nombre" itemLabel="nombre" />
                                </form:select>
                            </div>
                            <div class="form-group col-xs-10 col-sm-6 col-md-12 col-lg-12">
                                <label for="fechaCreacion">Fecha de Creación: </label>
                                <input type="text" class="form-control form-control-sm" id="fechaCreacion" disabled="true" value="${requerimiento.fechaCreacion}" />
                            </div>
                            <div class="form-group col-xs-10 col-sm-6 col-md-12 col-lg-12">
                                <label for="total">Impuesto a la Renta: </label>
                                <input type="number" class="form-control form-control-sm" id="impuestorenta" name="impuestorenta"  />
                            </div>
                            <div class="form-group col-xs-10 col-sm-5 col-md-12 col-lg-12">
                                <label for="fechaAprobacion">Costo Mano de obra calificada: </label>
                                <input type="number" class="form-control form-control-sm" id="costomanoobrac" name="costomanoobrac"/>
                            </div>
                            <div class="form-group col-xs-10 col-sm-5 col-md-12 col-lg-12">
                                <label for="aprobadoPor">Factor mano de obra calificada: </label>
                                <input type="number" class="form-control form-control-sm" id="fcostomanoobrac" name="fcostomanoobrac"/>
                            </div>
                            <div class="form-group col-xs-10 col-sm-5 col-md-12 col-lg-12">
                                <label for="fechaAprobacion">Costo Mano de obra no calificada: </label>
                                <input type="number" class="form-control form-control-sm" id="costomanoobranc" name="costomanoobranc" />
                            </div>
                            <div class="form-group col-xs-10 col-sm-5 col-md-12 col-lg-12">
                                <label for="aprobadoPor">Factor mano de obra no calificada: </label>
                                <input type="number" class="form-control form-control-sm" id="fcostomanoobranc" name="fcostomanoobranc"/>
                            </div>
                            <div class="form-group col-xs-10 col-sm-5 col-md-5 col-lg-5">
                                <button type="submit" class="btn btn-primary btn-sm" formaction="${pageContext.request.contextPath}/ejecutarEvaluarProceso.htm" id="btnguardar">Guardar</button>
                                <button type="button" class="btn btn-primary btn-sm" onclick="javascript:calculo_factores();">Calcular</button>&nbsp;
                                <button type="button" class="btn btn-primary btn-sm" onclick="javascript:history.back();">Retornar</button>
                            </div>



                            <div class="clearfix"></div>
                        </div>

                    </div>        
                </div>                

            </form:form>
        </div>
        <script type="text/javascript">
            function calculo_factores() { //costo mano obra califica * (1/(1+impuesto a la renta));
                ir = document.getElementById("impuestorenta").value;
                cmoc = document.getElementById("costomanoobrac").value;
                cmonc = document.getElementById("costomanoobranc").value;

                document.getElementById("fcostomanoobrac").value = ir * cmoc / 100;
                document.getElementById("fcostomanoobranc").value = ir * cmonc / 100;

                //alert(ir * cmoc / 100);
            }
        </script>

        <%@include file="includes/footer.jsp" %>
    </body>
</html>
