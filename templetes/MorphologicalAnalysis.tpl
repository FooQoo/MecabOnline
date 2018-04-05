{% extends "base.tpl" %}

{% block content %}

<div class="container pt-xl-5">

  <div class="jumbotron">
    <h1 class="display-2">形態素解析 Online</h1>
    <h2>オンラインで形態素解析ができるサイト</p>
  </div>

  <div class="container">
    <h3>How to use</h3>
    <ul>
      <li>下記のフォームに文書を入力</li>
      <li>Historyでこれまで調べられた履歴が確認できます</li>
    </ul>
  </div>

  <form action="/形態素解析" method="POST">

    <div class="container form-group">
      <label for="txt">txt:</label>
      <textarea class="form-control" rows="5" id="txt" name="txt">{{txt}}</textarea>
    </div>
    <div class="form-group">
      <button type="submit" class="btn btn-primary">Analyze</button>
    </div>

  </form>

  <div id='tbl' class="container pb-xl-5 h5 small" style="visibility: {{'hidden' if morphs|length == 0 else 'visible'}};">
    <table class="table table-bordered table-fixed">
    <thead class="thead-dark">
      <tr>
        <th scope="col">表層形</th>
        <th scope="col">品詞</th>
        <th scope="col">品詞細分類1</th>
        <th scope="col">品詞細分類2</th>
        <th scope="col">品詞細分類3</th>
        <th scope="col">活用型</th>
        <th scope="col">活用形</th>
        <th scope="col">原形</th>
        <th scope="col">読み</th>
        <th scope="col">発音</th>
      </tr>
    </thead>
    <tbody>
      {% for (term,morph) in morphs %}<tr>
      <th scope="row">{{ term }}</th>
      {% for m in morph %}
      <th scope="col">{{ m }}</th>
      {% endfor %}</tr>
      {% endfor %}
    </tbody>
    </table>
  </div>
</div>
{% endblock %}
