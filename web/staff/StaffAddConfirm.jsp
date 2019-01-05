<h3>
<%
  boolean success = (Boolean)session.getAttribute("success");
  if (success)
      out.println("Product added successfully.");
  else
      out.println("Error: Unable to add new item.");
%>
</h3>
<p><a href="staffui">Back to home page</a></p>