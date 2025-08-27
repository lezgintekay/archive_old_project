<?php
include 'config.php';
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
  <meta charset="utf-8">
  <title>Oto Galeri/Anasayfa</title>


  
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Raleway:300,400,500,700,800|Montserrat:300,400,700" rel="stylesheet">

  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">


  <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="lib/animate/animate.min.css" rel="stylesheet">
  <link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet">
  <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="lib/magnific-popup/magnific-popup.css" rel="stylesheet">
  <link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet">


  <link href="css/style.css" rel="stylesheet">


</head>

<body id="body">

  <!-- TOP BAR -->

  <section id="topbar" class="d-none d-lg-block">
    <div class="container clearfix">

      <div class="contact-info float-left">
        <i class="fa fa-envelope-o"></i><a href="mailto:info@udemynakliyat.com"> otogaleri@otogaleri.com</a>
        <i class="fa fa-phone"></i> 0511 111 11 11

      </div>
      <div class="social-links float-right">
        <a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
        <a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
        <a href="#" class="instagram"><i class="fa fa-instagram"></i></a>
        <a href="login/login.php" class="login"><i class="fa fa-key"></i></a>

      </div>
    </div>

  </section>


  <!-- header -->

  <header id="header">

    <div class="container">

      <div id="logo" class="pull-left">
        <h1><a href="#body" class="scrollto">Oto <span>Galeri</span></a></h1>


      </div>


      <nav id="nav-menu-container">
        <ul class="nav-menu">
          <li class="menu-active"><a href="index.php">Anasayfa</a></li>
          <li><a href="araclarimiz.php">Araçlarımız</a></li>
          <li><a href="iletisim.php">iletişim</a></li>
          <li><a href="hakkimizda.php">Hakkımızda</a></li>
        </ul>
      </nav>

    </div>




  </header>


  <!-- İNTRO -->

  <section id="intro">


    <div class="intro-content">
    <?php 
     $sorgu = $con->query("SELECT * FROM introyazi WHERE id=1");
     $cikti = $sorgu->fetch_array();
   
    
    ?>
      <h2>  <?php  echo " " . $cikti["yazi"];   ?> </h2>


    </div>


    <div id="intro-carousel" class="owl-carousel">

    
      <?php
            $query = $con->query("SELECT * FROM intro ORDER BY RAND() LIMIT 10");
            
            if ($query->num_rows > 0) {
               while ($row = $query->fetch_assoc()) 
               {
                  $imageURL = 'yonetim/intro/' . $row["name"];
                  ?>
                <div class="item" style="background-image:url('<?=$imageURL;?>');"></div>
                  <?php
               }
            }
            ?>

    </div>




  </section>



  <section id="referanslar" class="wow fadeInUp">

    <div class="container">
      <div class="section-header">
        <h2>Araç Markaları</h2>
        <p>İçeriğimizde bulunan araç markaları aşağıda bulunmaktadır.</p>
        
      </div>
  
      <div class="owl-carousel clients-carousel">

       <a href="bmw.php"><img src="img/referans/bmw.png" alt="" width="150" height="170" /></a>
       <a href="mercedes.php"><img src="img/referans/mercedes.png" alt="" width="150" height="170" /></a>
       <a href="volvo.php"><img src="img/referans/volvo.png" alt="" width="150" height="170" /></a>
       <a href="renault.php"><img src="img/referans/renault.png" alt=""  width="150" height="170"/></a>
       <a href="fiat.php"><img src="img/referans/fiat.png" alt=""  width="150" height="170"/></a>
       <a href="honda.php"><img src="img/referans/honda.png" alt=""  width="150" height="170"/></a>


        <img src="img/referans/ref7.png" alt="" />
        <img src="img/referans/ref8.png" alt="" />
      

      </div>



    </div>



  </section>









  <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>


  <script src="lib/jquery/jquery.min.js"></script>
  <script src="lib/jquery/jquery-migrate.min.js"></script>
  <script src="lib/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="lib/easing/easing.min.js"></script>
  <script src="lib/superfish/hoverIntent.js"></script>
  <script src="lib/superfish/superfish.min.js"></script>
  <script src="lib/wow/wow.min.js"></script>
  <script src="lib/owlcarousel/owl.carousel.min.js"></script>
  <script src="lib/magnific-popup/magnific-popup.min.js"></script>
  <script src="lib/sticky/sticky.js"></script>
  <script src="js/main.js"></script>

</body>

</html>
