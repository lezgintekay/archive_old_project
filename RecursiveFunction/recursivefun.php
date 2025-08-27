<!doctype html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>

<?php
$categories = [
    [
        'id' =>1 ,
        'parent' =>0,
        'name' => "Back-end Techs"
    ],
    [
        'id' =>2 ,
        'parent' =>0,
        'name' => "Front-end Techs"
    ],
    [
        'id' =>3 ,
        'parent' =>0,
        'name' => "Mobile Techs"
    ],
    [
        'id' =>4 ,
        'parent' =>1,
        'name' => "PHP"
    ],
    [
        'id' =>5 ,
        'parent' =>4,
        'name' => "Laravel"
    ],
    [
        'id' =>6 ,
        'parent' =>1,
        'name' => "NodeJS"
    ],
    [
        'id' =>7 ,
        'parent' =>2,
        'name' => "CSS"
    ],
    [
        'id' =>8 ,
        'parent' =>7,
        'name' => "SCSS"
    ],
    [
        'id' =>9 ,
        'parent' =>7,
        'name' => "Bootstrap"
    ],
    [
        'id' =>10 ,
        'parent' =>3,
        'name' => "React Native"
    ],
    [
        'id' =>11 ,
        'parent' =>3,
        'name' => "Flutter"
    ],
    [
        'id' =>12,
        'parent' =>3,
        'name' => "Kotlin"
    ]
];

function getCategoryList(array $arr, int $par = 0):string{
    $html = "<ul>";

    foreach($arr as $category)
        if($category['parent'] == $par):
            $html .= "<li>" .$category['name'];
            $html .= getCategoryList($arr, $category['id']);
            $html .= "</li>";
        endif;
    $html .= "</ul>";

    return $html;
}

echo getCategoryList($categories);

?>

</body>
</html>
