<h3>
<%
  boolean success = (Boolean)session.getAttribute("success");
  if (success)
      out.println("Item deleted successfully.");
  else
      out.println("Error: Unable to delete item.");
%>
</h3>
<p><a href="index.html">Back to home page</a></p>