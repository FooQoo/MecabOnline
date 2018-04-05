from bottle import Bottle,route,run
from bottle import get, post, request
from bottle import TEMPLATE_PATH, jinja2_template as template
import NLP
import os

# index.pyが設置されているディレクトリの絶対パスを取得
BASE_DIR = os.path.dirname(os.path.abspath(__file__))
# テンプレートファイルを設置するディレクトリのパスを指定
TEMPLATE_PATH.append(BASE_DIR + "/views")

app=Bottle()

@app.route('/形態素解析',method=["GET","POST"])
def index():
    txt =  request.forms.txt
    print(txt)

    txt = "" if txt is None else txt

    morphs = NLP.mecab(txt)
    return template('Mecab',morphs=morphs)

if __name__ == "__main__":
    run(app=app,host="0.0.0.0",port='8080',reloader=True)
