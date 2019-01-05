<%@page import="java.util.List"%>
<%@page  import="entity.Product" %>
<%
  List<Product> productList = (List)session.getAttribute("productList");
%>
<h1>Search Product </h1>
<table border="0" cellspacing="10">
<form action="SearchProduct.jsp" method="post">
    <tr>
        <td>Product ID</td>
        <td><select name="id">
                <% for (Product product: productList){%>
                <option value="<%=product.getProductid()%>">
                    <%=product.getProductid()%>
                <%}%>
            </select>
            <br>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <input type="submit" value="Delete" name="button"/>
            <input type="submit" value="Update" name="button"/>
        </td>
    </tr>
</form>
</table>
