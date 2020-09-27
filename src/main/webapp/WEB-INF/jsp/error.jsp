<%@ include file="common/header.jspf" %>

  <div id="wrapper">   

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Begin Page Content -->
        <div class="container-fluid">
        <div class="row m-3 mx-5 px-5 pt-5">
        	<div class="col-6">
        	<img alt="ERROR" src="images/error.jpg">
        	</div>
        	<div class="col-6" style="padding-top: 150;">
        	          <!-- 404 Error Text -->
          <div class="text-center ">
            <div class="error mx-auto" data-text="404"><h1>404</h1></div>
            <p class="lead text-gray-800 mb-5">Page Not Found</p>
            <p class="text-gray-500 mb-0 font-weight-bolder">It looks like you found a glitch in the matrix...
            <br>
            
            </p>
            <a href="/" class="link">&larr; Back to Dashboard</a>
            <br>
            <br>
            You will be Redirected to Dashboard Automatically in 5 sec !!!
          </div>
        	</div>
        </div>

        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

      <!-- Footer -->
      <footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Copyright &copy; BBM 2020</span>
          </div>
        </div>
      </footer>
      <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <script>
         setTimeout(function(){
            window.location.href = '/';
         }, 5000);
      </script>

<%@ include file="common/footer.jspf" %>