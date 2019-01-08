<!DOCTYPE html>
<html>
    <head>
        <title>Staff Portal</title>
        <%@ include file="../layout/meta.jsp"%>
    </head>
    <body>        
        <header>
            <%@ include file="staffHeader.jsp"%>
        </header>
        <div id="container">
            <div class="article-container">
                <h3 style="color:white;margin-left: 10%">
                    <%    boolean success = (Boolean) session.getAttribute("success");
                        if (success) {
                            out.println("Item updated successfully.");
                        } else {
                            out.println("Error: Unable to update item.");
                        }
                    %>
                </h3>
                <a href="staffui.jsp"><button  type="button" class="btn btn-dark">Back to home page</button></a>
            </div>
        </div>
    </body>
</html>