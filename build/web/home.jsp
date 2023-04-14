<%-- 
    Document   : home.jsp
    Created on : Apr 7, 2023, 8:24:58 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List, toan.dev.data.dao.model.Product" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
         <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        
    </head>
    <body>
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-12">
                    <h1>Product List</h1>
                    <a href="product/create.jsp" class="btn btn-success float-right mb-2">Add Product</a>
                </div>
            </div>
        <table class="table">
   <thead>
      <tr>
         <th>ID</th>
         <th>Name</th>
         <th>Price</th>
         <th>Quantity</th>


      </tr>
   </thead>
   <tbody>
      <% List<Product> productList = (List<Product>) request.getAttribute("productList"); %>
      <% for (Product product : productList) { %>
      <tr>
         <td><%= product.getId() %></td>
         <td><%= product.getName() %></td>  
         <td> <%= product.getPrice() %></td>
         <td> <%= product.getQuantity() %></td>
         <td>
             <a href="EditServlet?product_id=<%= product.getId() %>" class="btn btn-primary">Edit</a>
             <form action="DeleteServlet" method="post" style="display: inline;">
               <input type="hidden" name="product_id" value="<%= product.getId() %>">
               <button type="submit" class="btn btn-danger" onclick="return confirm('Are you sure you want to delete this product?');">
                  Delete
               </button>
                 
               
            </form>
         </td>
      </tr>
      <!-- Edit Modal -->
      <div class="modal fade" id="editModal<%= product.getId() %>" tabindex="-1" aria-labelledby="editModalLabel" aria-hidden="true">
         <div class="modal-dialog">
            <div class="modal-content">
               <div class="modal-header">
                  <h5 class="modal-title" id="editModalLabel">Edit Product</h5>
                  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
               </div>
               <form method="post">
                  <div class="modal-body">
                     <input type="hidden" name="id" value="<%= product.getId() %>">
                     <div class="mb-3">
                        <label for="name" class="form-label">Name</label>
                        <input type="text" class="form-control" id="name" name="name" value="<%= product.getName() %>" required>
                     </div>
                     <div class="mb-3">
                        <label for="description" class="form-label">Description</label>
                        <textarea class="form-control" id="description" name="description" rows="3" required><%= product.getDescription() %></textarea>
                     </div>
                     <div class="mb-3">
                        <label for="price" class="form-label">Price</label>
                        <input type="number" step="0.01" class="form-control" id="price" name="price" value="<%= product.getPrice() %>" required>
                     </div>
                  </div>
                  <div class="modal-footer">
                     <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                     <button type="submit" class="btn btn-primary">Save changes</button>
                  </div>
               </form>
            </div>
         </div>
      </div>
      <% } %>
   </tbody>
</table>
         
        
    </body>
</html>
