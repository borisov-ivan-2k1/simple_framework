#!/bin/bash
echo "Будет создано:"
echo "Каталог с названием проекта"
echo "index.html"
echo "index.css и каталог для файла"
echo "index.js и каталог для файла"
echo "каталог images"
echo "Введите название проекта: "
read projectName
mkdir $projectName
cd $projectName
touch index.html
echo '<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="./style/index.css">
    <title>'$projectName'</title>
</head>
<body>
    <div class="main">
        <div class="hello">
            <a href="https://github.com/borisov-ivan-2k1">Просто начни!</a>
        </div>
    </div>
    <script src="./script/index.js"></script>
</body>
</html>' >> index.html
mkdir images
mkdir style
cd style
touch index.css
echo '.main {
    width: 100%;
    height: 100%;
    position: fixed;
    top: 0;
    left: 0;
    display: flex;
    align-items: center;
    align-content: center; 
    justify-content: center; 
    overflow: auto;  
    background-color: rgb(49, 42, 42);
}

.hello a {
    display: block;
    border: none;
    font-size: 50px;
    color: aqua;
}

.hello a:hover {
    color: rgb(156, 188, 201);
}
' >> index.css
cd ./../
mkdir script
cd script
touch index.js
cd ./../
echo "Хорошего кодинга :-)"

google-chrome index.html
firefox index.html

fi
