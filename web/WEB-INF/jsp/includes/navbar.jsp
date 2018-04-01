<%-- 
    Document   : navbar
    Created on : 30/03/2018, 12:11:51 AM
    Author     : Eric
--%>
<nav class="navbar navbar-expand-lg navbar-light bg-light rounded">
    <img src="${pageContext.request.contextPath}/images/logosb1.png" height="80" style="margin-right: 10px;">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample09" aria-controls="navbarsExample09" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarsExample09">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#"data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Requerimientos</a>
                <div class="dropdown-menu" aria-labelledby="dropdown09">
                    <a class="dropdown-item" href="${pageContext.request.contextPath}/listarRequerimiento.htm">Listar</a>
                    <a class="dropdown-item" href="${pageContext.request.contextPath}/validarRequerimiento.htm">Validar</a>
                </div>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="dropdown09" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Proyectos</a>
                <div class="dropdown-menu" aria-labelledby="dropdown09">
                    <a class="dropdown-item" href="${pageContext.request.contextPath}/listarProyectos.htm">Listar</a>
                </div>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="dropdown09" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Presupuestos</a>
                <div class="dropdown-menu" aria-labelledby="dropdown09">
                    <a class="dropdown-item" href="${pageContext.request.contextPath}/reasignarPresupuesto.htm">Reasignar presupuesto</a>
                </div>
            </li>
        </ul>
        <img src="${pageContext.request.contextPath}/images/logosb2.png" height="80">
    </div>
</nav>
