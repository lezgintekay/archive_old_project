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
$planets = ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune", "", "", NULL];
function myFunction($array, $value)
{
    $filteredArray = array_values(array_filter($array));
    $randomizedArray = array_rand($filteredArray, $value);
    return array_map(function ($item) use ($filteredArray) {
        return $filteredArray[$item];
    }, $randomizedArray);
}

echo "<pre>";
print_r(myFunction($planets, 2));
print_r(myFunction($planets, 3));
print_r(myFunction($planets, 2));
print_r(myFunction($planets, 4));
print_r(myFunction($planets, 5));
?>


</body>
</html>
