<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<nav class="navbar navbar-expand-sm navbar-dark bg-dark">

<a class="navbar-brand" href="#">Project Management</a>
  
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button> 

 <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav mr-auto">
		<li class="nav-item ${homeActive}">
		 <a class="nav-link" href='<spring:url value="/"></spring:url>'>Home</a>
		</li>
		<li class="nav-item dropdown ${projectActive}">
			 <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Projects
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href='<spring:url value="/project/add"></spring:url>'>Add</a>
          <a class="dropdown-item" href='<spring:url value="/project/find"></spring:url>'>Find</a>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
		</li>
		<li class="nav-item dropdown ${resourceActive}">
			 <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Resources
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href='<spring:url value="/resource/add"></spring:url>'>Add</a>
          <a class="dropdown-item" href="#">Another action</a>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
		</li>
	</ul>
</div>

</nav>