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
        <title>Evaluacion</title>
    </head>
    <body>
        <%@include file="header.jsp" %>
        
        <div class="container col-sm-8" style="font-size: small">
            <form:form action="${action}" method="POST" modelAttribute="requerimiento">

                <div class="card">
                    <div class="card-body">   
                        <div class="row">
                            <div class="form-group col-xs-10 col-sm-10 col-md-10 col-lg-10">
                                <label for="nombrePIP">Nombre:</label>
                                <input type="text" class="form-control form-control-sm" id="identificador" disabled="true" value="${requerimiento.nombre}" />
                                
                                <c:choose>
                                    <c:when test="${gr.nombreValid}">
                                        &nbsp;
                                    </c:when>
                                    <c:otherwise>
                                        <label for="nombre">&nbsp;Nombre no corresponde</label>
                                    </c:otherwise>
                                </c:choose>                                  
                            </div>

                            <div class="form-group col-xs-10 col-sm-2 col-md-2 col-lg-2">
                                <br />
                                <c:choose>
                                    <c:when test="${gr.nombreValid}">
                                        <img src="/munisanborja/images/check.png" alt="" width="16"/>
                                    </c:when>
                                    <c:otherwise>
                                        <img src="/munisanborja/images/cancel.png" alt="" width="16"/>
                                    </c:otherwise>
                                </c:choose>                                
                            </div>                            
                            
                            <div class="form-group col-xs-10 col-sm-10 col-md-10 col-lg-10">
                                <label for="nombre">Objetivo:</label>
                                <input type="text" class="form-control form-control-sm" id="nombre" disabled="true" value="${requerimiento.objetivo}" />
                                
                                <c:choose>
                                    <c:when test="${gr.objetivoValid}">
                                        &nbsp;
                                    </c:when>
                                    <c:otherwise>
                                        <label for="nombre">&nbsp;Objetivo no corresponde</label>
                                    </c:otherwise>
                                </c:choose>                                 
                            </div>
                            
                            <div class="form-group col-xs-10 col-sm-2 col-md-2 col-lg-2">
                                <br />
                                <c:choose>
                                    <c:when test="${gr.objetivoValid}">
                                        <img src="/munisanborja/images/check.png" alt="" width="16"/>
                                    </c:when>
                                    <c:otherwise>
                                        <img src="/munisanborja/images/cancel.png" alt="" width="16"/>
                                    </c:otherwise>
                                </c:choose>                                  
                            </div>                             
                            
                            <div class="form-group col-xs-10 col-sm-10 col-md-10 col-lg-10">
                                <label for="nombre">Problema:</label>
                                <input type="text" class="form-control form-control-sm" id="nombre" disabled="true" value="${requerimiento.problema}" />
                                
                                <c:choose>
                                    <c:when test="${gr.problemaValid}">
                                        &nbsp;
                                    </c:when>
                                    <c:otherwise>
                                        <label for="nombre">&nbsp;Problema no corresponde</label>
                                    </c:otherwise>
                                </c:choose>                                  
                            </div>   
                            
                            <div class="form-group col-xs-10 col-sm-2 col-md-2 col-lg-2">
                                <br />
                                <c:choose>
                                    <c:when test="${gr.problemaValid}">
                                        <img src="/munisanborja/images/check.png" alt="" width="16"/>
                                    </c:when>
                                    <c:otherwise>
                                        <img src="/munisanborja/images/cancel.png" alt="" width="16"/>
                                    </c:otherwise>
                                </c:choose>                                  
                            </div>                               
                            
                            <div class="form-group col-xs-10 col-sm-10 col-md-10 col-lg-10">
                                <label for="nombre">Ubicación:</label>
                                <input type="text" class="form-control form-control-sm" id="nombre" disabled="true" value="${requerimiento.ubicacion.departamento}" />
                                
                                <c:choose>
                                    <c:when test="${gr.ubicacionValid}">
                                        &nbsp;
                                    </c:when>
                                    <c:otherwise>
                                        <label for="nombre">&nbsp;Ubicación no corresponde al distrito</label>
                                    </c:otherwise>
                                </c:choose> 
                                        
                            </div>
                            
                            <div class="form-group col-xs-10 col-sm-2 col-md-2 col-lg-2">
                                <br />
                                <c:choose>
                                    <c:when test="${gr.ubicacionValid}">
                                        <img src="/munisanborja/images/check.png" alt="" width="16"/>
                                    </c:when>
                                    <c:otherwise>
                                        <img src="/munisanborja/images/cancel.png" alt="" width="16"/>
                                    </c:otherwise>
                                </c:choose>                                  
                            </div>                             
                            
                            <div class="form-group col-xs-10 col-sm-10 col-md-10 col-lg-10">
                                <label for="nombre">Unidad Formuladora:</label>
                                <input type="text" class="form-control form-control-sm" id="nombre" disabled="true" value="${requerimiento.objetivo}" />
                                
                                <c:choose>
                                    <c:when test="${gr.unidadFormuladoraValid}">
                                        &nbsp;
                                    </c:when>
                                    <c:otherwise>
                                        <label for="nombre">&nbsp;Unidad Formuladora no corresponde</label>
                                    </c:otherwise>
                                </c:choose>                                 
                            </div>
                            
                            <div class="form-group col-xs-10 col-sm-2 col-md-2 col-lg-2">
                                <br />
                                <c:choose>
                                    <c:when test="${gr.unidadFormuladoraValid}">
                                        <img src="/munisanborja/images/check.png" alt="" width="16"/>
                                    </c:when>
                                    <c:otherwise>
                                        <img src="/munisanborja/images/cancel.png" alt="" width="16"/>
                                    </c:otherwise>
                                </c:choose>                                  
                            </div>                             
                            
                            <div class="form-group col-xs-10 col-sm-10 col-md-10 col-lg-10">
                                <label for="nombre">Unidad Ejecutora:</label>
                                <input type="text" class="form-control form-control-sm" id="nombre" disabled="true" value="${requerimiento.objetivo}" />
                                
                                <c:choose>
                                    <c:when test="${gr.unidadFormuladoraValid}">
                                        &nbsp;
                                    </c:when>
                                    <c:otherwise>
                                        <label for="nombre" color="red">&nbsp;Unidad Ejecutora no corresponde</label>
                                    </c:otherwise>
                                </c:choose>                                       
                            </div> 

                            <div class="form-group col-xs-10 col-sm-2 col-md-2 col-lg-2">
                                <br />
                                <c:choose>
                                    <c:when test="${gr.unidadEjecutoraValid}">
                                        <img src="/munisanborja/images/check.png" alt="" width="16"/>
                                    </c:when>
                                    <c:otherwise>
                                        <img src="/munisanborja/images/cancel.png" alt="" width="16"/>
                                    </c:otherwise>
                                </c:choose>                                  
                            </div>                             

                            <div class="clearfix"></div>
                        </div>

                    </div>        
                </div>                
                
                <br />
                
                <button type="button" class="btn btn-primary btn-sm" onclick="javascript:history.back();">Retornar</button>                            
                            
            </form:form>     
        </div>
    </body>
</html>
