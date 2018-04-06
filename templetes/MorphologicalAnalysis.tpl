{% extends "base.tpl" %}

{% block content %}

<script type="text/javascript">

$(function(){
    // Ajax button click
    $('#submit').on('click',function(){
        $.ajax({
            url:'/形態素解析',
            type:'POST',
            data:{
                'txt':$('#txt').val()
            }
        })
        // Ajaxリクエストが成功した時発動
        .done( (table) => {
            $('#table').html(table);
            $("html,body").animate({scrollTop:$('form').offset().top - $('#content').offset().top});
            console.log(tabel);
        })
        // Ajaxリクエストが失敗した時発動
        .fail( (table) => {
            $('#table').html(table);
            $("html,body").animate({scrollTop:$('form').offset().top - $('#content').offset().top});
            console.log(table);
        })
        // Ajaxリクエストが成功・失敗どちらでも発動
        .always( (txt) => {

        });
    });
    $('#reset').on('click',function(){
        $.ajax({
          url:'/形態素解析',
          type:'GET',
          data:{
              'txt':''
          }
        })
        // Ajaxリクエストが成功した時発動
        .done( (table) => {
          $('#table').html('');
          $('#txt').val('');
          $("html,body").animate({scrollTop:0});
          console.log(tabel);
        })
        // Ajaxリクエストが失敗した時発動
        .fail( (table) => {
          $('#table').html('');
          $('#txt').val('');
          $("html,body").animate({scrollTop:0});
          console.log(tabel);
        })
        // Ajaxリクエストが成功・失敗どちらでも発動
        .always( (txt) => {

        });
    });
});

</script>

<div id="content" class="container pt-xl-4">

  <div class="jumbotron">
    <h1 class="display-3">形態素解析 Online</h1>
    <h4 style="color: dark !important;">オンラインで形態素解析ができるサイト</h4>
  </div>

  <div class="container">
    <h3>How to use</h3>
    <ul>
      <li>下記のフォームに文書を入力</li>
      <li>Analyzeで形態素解析</li>
      <li>Resetで解析結果のリセット</li>
    </ul>
    </ul>
  </div>

  <form action="/形態素解析" method="POST">

    <div class="container form-group">
      <label for="txt">txt:</label>
      <textarea class="form-control" rows="5" id="txt" name="txt">{{txt}}</textarea>
    </div>
    <div class="form-group">
      <button id="submit" type="button" class="btn btn-primary">Analyze</button>
      <button id="reset"  type="button" class="btn btn-primary">Reset</button>
    </div>

  </form>

  <div id="table" class="container pb-xl-5 h5 small"></div>

{% endblock %}
