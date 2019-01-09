<!DOCTYPE html>
<html>
    <head>
        <title>Staff Portal</title>
        <%@ include file="../layout/meta.jsp"%>
        <style>
            .article-container{
                padding-top: 110px;
                color: white;
            }

            .pannel{
                margin: 100px;
            }

        </style>
    </head>
    <body>
        <header>
            <%@ include file="staffHeader.jsp"%>
        </header>
        <div id="container">
            <%  String status = (String) request.getParameter("status");
                if (status != null) {
            %>
            <div class="message-container">Successfully Signed In!</div>
            <%
                }
            %>
            <div class="article-container">
                <h1 align="center">Staff Portal</h1>
                <div class="pannel">
                    <h2>Control Panel</h2>
                    <h5>Select a task to do...</h5>
                    <p><a href="StaffView"><button type="button" class="btn btn-dark">View All Items</button></a>
                    </p>
                    <p><a href="StaffAdd.jsp"><button type="button" class="btn btn-dark">Add New Item</button></a>
                    </p>
                    <p><a href="LoadProductList"><button type="button" class="btn btn-dark">Update/Delete Item</button></a>
                    </p>
                    <p><a href="StaffSignOut"><button type="button" class="btn btn-dark">Log Out</button></a>
                    </p>
                </div>
            </div>
        </div>
    </body>
</html>
