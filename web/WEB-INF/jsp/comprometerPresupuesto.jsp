<%-- 
    Document   : comprometerPresupuesto
    Created on : 03/04/2018, 03:18:57 AM
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
        <%@include file="includes/header.jsp" %> 
        <title>Comprometer Presupuesto</title>
    </head>
    <body>
        <div class="container">
            <%@include file="includes/navbar.jsp" %>
            <c:if test="${not empty errorPIP}">
                <div class="alert alert-danger alert-dismissible" role="alert">
                    <button type="button" class="close" data-dismiss="alert"
                            aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                    <strong>${errorPIP}</strong>
                </div>
            </c:if>            

            <form:form method="POST" modelAttribute="busquedareq">
                <div class="form-group">
                    <label for="identificador" class="col-form-label">Identificador:&nbsp;&nbsp;&nbsp;</label>
                    <form:input type="text" class="form-control-sm" path="identificador" placeholder="PXXXXX" />
                    <form:errors path="identificador" cssClass="error"><span style="color: red; font-weight: bold; ">Campo requerido</span></form:errors>
                    <button type="submit" formaction="${pageContext.request.contextPath}/buscarProyectoIdNoPresup.htm"  class="btn btn-primary  btn-sm">Buscar</button>
                </div>
            </form:form>
            <c:if test="${not empty proyecto}">
                <h3>${proyecto.requerimiento.nombre}</h3>
            </c:if>
            <br />
        </div>
        <div class="container col-sm-8" style="font-size: small;">
            <form:form method="POST" modelAttribute="busquedareq">
                <div class="row">
                    <input type="hidden" name="codigo" value="${proyecto.codigo}"/>
                    <div class="card col-6">
                        <div class="form-group">
                            <label for="sector">Sector</label>
                            <form:select path="sector" id="select_id">
                                <form:options items="${sectorList}" itemValue="codigo" itemLabel="nombre" />
                            </form:select>
                        </div>
                        <div class="form-group">
                            <label for="comprometer">Monto a comprometer</label>
                            <input type="text" class="form-control" id="comprometer" name="comprometer"  />
                        </div>
                    </div>
                    <div class="card col-6">
                        <div class="form-group">
                            <label for="montoDisponible">Monto disponible</label>
                            <input type="text" class="form-control" id="montoDisponible" name="montoDisponible" disabled="true" />
                        </div>

                    </div>
                    <button type="submit" formaction="${pageContext.request.contextPath}/ejecutarComprometer.htm" class="btn btn-primary btn-sm" id="guardar">Guardar</button>
                </div>
            </form:form>

        </div> 
        <script type="text/javascript">
            document.getElementById("select_id").addEventListener("change", function () {
                var jsectores = [];
            <c:forEach var="sector" items="${sectorList}">
                var sect = {
                    id: "${sector.codigo}",
                    montoDisp: "${sector.presupuestoAsignado} - ${sector.totalComprometido}";
                };
                document.getElementById("montoDisponible").value = jsectores[0].id;
            </c:forEach>




            });

        </script>
        <%@include file="includes/footer.jsp" %>
    </body>
</html>
