<?php
include "../config.php";

if(isset($_POST['loginBtn'])){

    $login = $_POST['login'];
    $pass =$_POST['pass'];
    
    if ($login != "" && $pass != ""){

        $sql_query = "select count(*) as countLogin from login where name='".$login."' and pass='".$pass."'";
        $result = mysqli_query($con,$sql_query);
        $row = mysqli_fetch_array($result);

        $count = $row['countLogin'];
        
        if($count > 0){
            $_SESSION['login'] = $login;
            header('Location: ../yonetim/index.php');
        }else{
         echo' <div id="formFooter">';
          echo '<a class="underlineHover" href="#">Hatalı Kullanıcı Adı Veya Şifre</a>';
       echo ' </div>';
        }
    }
}
?>

<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Oto Galeri</title>
  <link rel="stylesheet" href="./style.css">

</head>
<body>
<!-- partial:index.partial.html -->
<div class="wrapper fadeInDown">
  <div id="formContent">
    <!-- Tabs Titles -->
    <h2 class="active"> Giriş Yap</h2>
    <h2 class="inactive underlineHover">Kayıt Ol </h2>

    <!-- Icon -->
    <div id="logo" class="pull-left">
        <h1><a href="../index.php" class="scrollto">Oto <span>Galeri</span></a></h1>    
      </div>

    <!-- Login Form -->
    <form action="" method="post">
      <input type="text" id="login" class="fadeIn second" name="login" placeholder="Kullanıcı Adı">
      <input type="text" id="password" class="fadeIn third" name="pass" placeholder="Şifre">
      <input type="submit" class="fadeIn fourth" name="loginBtn" value="Giriş Yap">
    </form>

    <!-- Remind Passowrd -->
    <div id="formFooter">
      <a class="underlineHover" href="#">Şifreni Mi Unuttun ?</a>
    </div>

  </div>
</div>
<!-- partial -->
  
</body>
</html>


