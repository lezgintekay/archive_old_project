<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Triangle</title>
</head>
<body>
<?php


function triangle($numberOfLine){
    $line = 1 ; //line counter initial value - satır sayacı başlangıç değeri

    while ($line <= $numberOfLine){ // Loops to draw each line - Her satırı çizmek için döngüye girer

        for($column =1 ; $column<=$line; $column++){ // Loops to draw "O" characters on each line - Her satırda "O" karakterlerini çizmek için döngüye girer

            echo "O";
        }
        echo "<br>";
        $line++; // Increment the number of lines by one to move to the next line. - Bir sonraki satıra geçmek için satır sayısını bir arttırır
    }

}

triangle(15);

?>


</body>
</html>
