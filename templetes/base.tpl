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

    <title>形態素解析 Online</title>
</head>
<body>

  <!-- Grey with black text -->
  <nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top px-xl-5">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="/形態素解析">形態素解析</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">History</a>
      </li>
    </ul>
  </nav>
  
  <!-- tmp blank -->
  <div class="container pt-xl-5"></div>

  {% block content %} {% endblock %}

</body>
</html>
