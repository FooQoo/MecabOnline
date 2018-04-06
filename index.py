from bottle import Bottle,route,run
from bottle import get, post, request
from bottle import TEMPLATE_PATH, jinja2_template as template
import NLP
import os

# index.pyが設置されているディレクトリの絶対パスを取得
BASE_DIR = os.path.dirname(os.path.abspath(__file__))
# テンプレートファイルを設置するディレクトリのパスを指定
TEMPLATE_PATH.append(BASE_DIR + "/templetes")

app=Bottle()

@app.route('/',method=["GET"])
@app.route('/形態素解析',method=["GET"])
def index():
    return template('MorphologicalAnalysis')

@app.route('/形態素解析',method=["POST"])
def index():
    txt =  request.forms.txt
    morphs = NLP.mecab(txt)
    return template('table',morphs=morphs)

if __name__ == "__main__":
    run(app=app,host="0.0.0.0",port='8080',reloader=True)
