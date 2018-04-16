<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="includes/header.jsp" %> 
        <title>Evaluacion</title>
    </head>
    <body>

        <div class="container">
            <%@include file="includes/navbar.jsp" %>
            <form:form action="${action}" method="POST" modelAttribute="requerimiento">

                <div class="card">
                    <div class="card-body">   
                        <div class="row">
                            <div class="form-group col-xs-10 col-sm-10 col-md-10 col-lg-10">
                                <label for="nombrePIP">Mano de Obra no Calificada: </label>
                                <input type="text" class="form-control form-control-sm" id="identificador" disabled="true" value="314165" />

                                <c:choose>
                                    <c:when test="${gr.manoobranocalificadaValid}">
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
                                    <c:when test="${gr.manoobranocalificadaValid}">
                                        <img src="${pageContext.request.contextPath}/images/check.png" alt="" width="16"/>
                                    </c:when>
                                    <c:otherwise>
                                        <img src="${pageContext.request.contextPath}/images/cancel.png" alt="" width="16"/>
                                    </c:otherwise>
                                </c:choose>                                
                            </div>                            

                            <div class="form-group col-xs-10 col-sm-10 col-md-10 col-lg-10">
                                <label for="nombre">Tasa de Descuento Social:</label>
                                <input type="text" class="form-control form-control-sm" id="nombre" disabled="true" value="22088" />

                                <c:choose>
                                    <c:when test="${gr.tasadescuentoValid}">
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
                                    <c:when test="${gr.tasadescuentoValid}">
                                        <img src="${pageContext.request.contextPath}/images/check.png" alt="" width="16"/>
                                    </c:when>
                                    <c:otherwise>
                                        <img src="${pageContext.request.contextPath}/images/cancel.png" alt="" width="16"/>
                                    </c:otherwise>
                                </c:choose>                                  
                            </div>                             

                            <div class="form-group col-xs-10 col-sm-10 col-md-10 col-lg-10">
                                <label for="nombre">Precio Social:</label>
                                <input type="text" class="form-control form-control-sm" id="nombre" disabled="true" value="34577" />

                                <c:choose>
                                    <c:when test="${gr.precioSocialValid}">
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
                                    <c:when test="${gr.precioSocialValid}">
                                        <img src="${pageContext.request.contextPath}/images/check.png" alt="" width="16"/>
                                    </c:when>
                                    <c:otherwise>
                                        <img src="${pageContext.request.contextPath}/images/cancel.png" alt="" width="16"/>
                                    </c:otherwise>
                                </c:choose>                                  
                            </div>                               

                            <div class="form-group col-xs-10 col-sm-10 col-md-10 col-lg-10">
                                <label for="nombre">Valor Social del Tiempo:</label>
                                <input type="text" class="form-control form-control-sm" id="nombre" disabled="true" value="76001" />

                                <c:choose>
                                    <c:when test="${gr.valorSocialTiempoValid}">
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
                                    <c:when test="${gr.valorSocialTiempoValid}">
                                        <img src="${pageContext.request.contextPath}/images/check.png" alt="" width="16"/>
                                    </c:when>
                                    <c:otherwise>
                                        <img src="${pageContext.request.contextPath}/images/cancel.png" alt="" width="16"/>
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
        <%@include file="includes/footer.jsp" %>
    </body>
</html>
