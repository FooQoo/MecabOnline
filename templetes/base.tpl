<!DOCTYPE html>

<html lang=ja>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <!-- link rel="stylesheet" href="./bootstrap_extend.css"-->

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css" rel="stylesheet">

    <title>形態素解析 Online</title>
</head>
<body>

  <!-- Grey with black text -->
  <nav class="navbar navbar-expand-sm bg-primary navbar-dark fixed-top px-xl-5 justify-content-between">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="/形態素解析">形態素解析</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">工事中</a>
      </li>
    </ul>
    <div class="navbar-brand">
      <a class="fb-ic mr-3" href="https://www.facebook.com/profile.php?id=100004888420026" role="button" style="color: white !important;" target="_blank"><i class="fa fa-lg fa-facebook"></i></a>
      <a class="git-ic mr-3" href="https://github.com/FooQoo" role="button" style="color: white !important;" target="_blank"><i class="fa fa-lg fa-github"> </i></a>
    </div>
  </nav>


  <!-- tmp blank -->
  <div class="container-fixed pt-xl-5"></div>

  {% block content %} {% endblock %}

  <h5 class="small">形態素解析には<a href="http://taku910.github.io/mecab/" target="_blank">MeCab</a>を使用しています</h5>
  <h5 class="small">(c) copyright 2018.</h5>

</body>
</html>
