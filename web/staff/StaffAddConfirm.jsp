<!DOCTYPE html>
<html>
    <head>
        <title>Staff Portal</title>
        <%@ include file="../layout/meta.jsp"%>
        <style>
            .article-container{
                padding-top: 110px;
            }
            
            h3{
                padding: 200px;
            }
        </style>

    </head>
    <body>

        <header>
            <%@ include file="staffHeader.jsp"%>
        </header>

        <div id="container">
            <div class="article-container">
                <h3 style="color:white;margin: auto; font-weight: bold">
                    <%    boolean success = (Boolean) session.getAttribute("success");
                        if (success) {
                            out.println("Product added successfully.");
                        } else {
                            out.println("Error: Unable to add new item.");
                        }
                    %>
                </h3>
                <a href="staffui.jsp"><button  type="button" class="btn btn-dark">Back to home page</button></a>
            </div>
        </div>

    </body>

</html>