<% // @page import="org.apache.jasper.tagplugins.jstl.ForEach"%>
<% //@page import="java.util.List"%>
<% //@page import="cl.inacap.odisea.DAO.LibroDAO"%>
<% //@page import="java.util.ArrayList"%>
<% //@page import="java.io.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% //@ page import="cl.inacap.odisea.DTO.Libro" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css"
        integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <link rel="stylesheet" href="./css/style.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="./css/glide.core.min.css">
    <link rel="stylesheet" href="./css/glide.theme.min.css">
    <title>Odisea</title>
</head>

<%
//Libro libro = new Libro();
//List<LibroDAO> listaLibro = libro.getAll();
%>

<body>
    <section class="navigation">
        <nav class="navbar navbar-expand-lg bg-transparent fixed-top">
            <div class="container-fluid">
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false"
                    aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link" aria-current="page" href="#">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Listado</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </section>
    <div class="portada">
        <div class="container">
            <div class="col-lg-6">
                <div id="titulo">
                    <h1 id="title">Peter Pan</h1>
                </div>
                <div id="desc">
                    <p>La obra cuenta la historia de Peter Pan, un ni�o que vuela y no quiere crecer, y sus aventuras en
                        El pa�s de Nunca Jam�s con los hermanos Wendy, John y Michael Darling; el hada Campanilla, los
                        Ni�os Perdidos, y el malvado Capit�n Garfio. conxetumare</p>
                </div>
                <div id="buttons">
                    <button class="btn btn-peter"><i class="fab fa-readme"></i> &nbsp; Mas informacion</button>
                </div>
            </div>
        </div>
    </div><div class="container-fluid"><h2>Destacados</h2></div>
    
    <div class="glide1">
        <div data-glide-el="track" class="glide__track">
            <ul class="glide__slides">
            			<li class="glide__slide">
            				<div class="card">						
            					<img class="card-img-top" src="imagen" alt="Card image cap">
            					<div class="card-body">
            						<div class="row">
            							<div class="col-6">
            						<h5 class="card-title text-left">nombrexd</h5>
		            					</div>
		            					<div class="col-6">
		            						<h6 class="stars">5 <i class="fas fa-star"></i></h6>
		            					</div>
		            				</div>
		            			</div>
		            		</div>
		            	</li>
            			
            	<c:forEach items="${ListarLibros}" var="l" varStatus="ciclo">
                        <li class="glide__slide">
            				<div class="card">
            					<img class="card-img-top" src="${ l.portadaLibro }" alt="Card image cap">
            					<div class="card-body">
            						<div class="row">
            							<div class="col-6">
            						<h5 class="card-title text-left">${ l.autorLibro }</h5>
		            					</div>
		            					<div class="col-6">
		            						<h6 class="stars">${ l.estrellas }<i class="fas fa-star"></i></h6>
		            					</div>
		            				</div>
		            			</div>
		            		</div>
		            	</li>
				</c:forEach>
               
            </ul>
        </div>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.2.0/glide.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous">
    </script>
    <script src="./js/scripts.js"></script>
</body>

</html>