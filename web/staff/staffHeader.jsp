<%@page import="entity.Staff"%>
<%
    Staff staffLogged = (Staff) session.getAttribute("staff");
%>

<!-- HEADER IS HERE-->
<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top" style="height: 100px;">
    <!-- Brand -->
    <a class="#" href="staffui.jsp">
        <img src="../layout/image/DySpee.png" width="80" height="80" />
        <img src="../layout/image/DySpeeOnline.png" width="180" />
    </a>
    <ul class="navbar-nav">
        <h2 style="color: #fff; font-weight: bold; margin-left: 50px;">Welcome to Staff Portal</h2>     
    </ul>
</nav>

<div style="height: 100px; background-color: rgba(0,0,0,0.70); "></div>
