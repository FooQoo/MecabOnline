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
