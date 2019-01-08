<!DOCTYPE html>
<html>
    <head>
        <title>Staff Portal</title>
        <%@ include file="../layout/meta.jsp"%>
        <style>
            .article-container{
                padding-top: 110px;
            }
            
        </style>
            
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
                            out.println("Item deleted successfully.");
                        } else {
                            out.println("Error: Unable to delete item.");
                        }
                    %>
                </h3>
                <a href="staffui.jsp"><button  type="button" class="btn btn-dark">Back to home page</button></a>

            </div>
        </div>






    </body>
</html>