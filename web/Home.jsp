<%-- 
    Document   : Home
    Created on : 14-oct-2019, 12:10:07
    Author     : Brian
--%>


<!doctype html>
<html lang="es">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    
    <!-- Add icon library -->
    <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> -->
    <script src="https://kit.fontawesome.com/2d02aaf1de.js" crossorigin="anonymous"></script>
    
    <!-- SweetAlert -->
    <!-- SweetAlert 2 -->
    <link rel="stylesheet" href="css/sw2css.css">
     
    
    <!-- Datatables -->
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs4/jszip-2.5.0/dt-1.10.20/b-1.6.1/b-flash-1.6.1/b-html5-1.6.1/b-print-1.6.1/r-2.2.3/datatables.min.css"/>
    <!-- Datatables -->
    
    
    <link rel="stylesheet" href="css/utilidades.css">
    
  </head>
  

  
  
  <body>

  <div class="container">
        <div class="jumbotron">
         <Center><h1 class="display-4  d-none d-md-block">Reservas de cabañas</h1></Center>
         <Center><h2 class="d-md-none">Reservas de cabañas</h2></Center>
         <Center><p class="lead">Version 1.0 del sistema de reserva cabañas Patagonia Indomita SPA</p></Center>
        <hr class="my-4">
        <Center>
        <ul class="nav justify-content-center">
            <li class="nav-item">
              <a class="nav-link active" href="Home.jsp?v=home">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="Home.jsp?v=reserva">Reservas</a>
            </li>
            <li class="nav-item">
              
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Mantenedores</a>
                <div class="dropdown-menu"> 
                  <a class="nav-link" href="Home.jsp?v=cab">Cabañas</a>
                  <a class="nav-link" href="Home.jsp?v=fp">Forma de Pagos</a>
                  <a class="nav-link" href="Home.jsp?v=mv">Medio Venta</a>
                  <a class="nav-link" href="Home.jsp?v=repres">Reportes Reservas</a>
                  <div class="dropdown-divider"></div>
                  <a class="nav-link" href="#">Peticion.</a>
                </div>
              </li>
        </ul>
        </Center>
        </div> 
      

        <div class="jumbotron">
            <Center>
            <!--<iframe src="https://calendar.google.com/calendar/htmlembed?src=addressbook%23contacts%40group.v.calendar.google.com&ctz=America%2FSantiago" style="border: 0" width="800" height="600" frameborder="0" scrolling="no"></iframe> -->
            
            </Center>
            <% 
                        //Variables    
                        String variable = request.getParameter("v");
                        if (variable != null){
                        switch(variable){     

                        case "home": 	    		
                    %>
                       <script type="text/javascript">
                        function startTime(){
                        today=new Date();
                        h=today.getHours();
                        m=today.getMinutes();
                        s=today.getSeconds();
                        m=checkTime(m);
                        s=checkTime(s);
                        document.getElementById('reloj').innerHTML=h+":"+m+":"+s;
                        t=setTimeout('startTime()',500);}
                        function checkTime(i)
                        {if (i<10) {i="0" + i;}return i;}
                        window.onload=function(){startTime();};
                        </script>
                        
                        <center><div id="reloj" style="font-size:70px;"></div> </center>
                                    <%
                        break;
                        case "reserva": 	    		
                    %>
                       <%@ include file="vistas/reservas/reserva.jsp" %>
                    <%
                        break;
                        case "mv": 	    		
                    %>
                        <%@ include file="vistas/medioventa/listamedioventa.jsp" %>
                    <%
                        break;
                        case "fp": 	    		
                    %>
                        <%@ include file="vistas/formadepagos/listaformadepago.jsp" %>
                    <%
                        break;
                        case "cab": 	    		
                    %>
                        <%@ include file="vistas/cabañas/listacabañas.jsp" %>
                    <%
                        break;
                        case "repres": 	    		
                    %>
                        <%@ include file="vistas/reservas/reportereservas.jsp" %>
                    <%

                        }}
                    %>
        </div> 
          
  </div>
    
    
    
     

      

   
    
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src="http://momentjs.com/downloads/moment.min.js"></script>
    <!-- Datatables  -->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/v/bs4/jszip-2.5.0/dt-1.10.20/b-1.6.1/b-flash-1.6.1/b-html5-1.6.1/b-print-1.6.1/r-2.2.3/datatables.min.js"></script>
    
    
    
    
    <!-- Optional JavaScript -->
    <script type="text/javascript" src="js/funciones.js"></script>
    <!--<script type="text/javascript" src="js/calendario.js"></script> -->
    
    <!-- SweetAlert 2-->
    <script type="text/javascript" src="js/sw2js.js"></script>
    
  </body>
</html>
