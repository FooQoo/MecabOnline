from bottle import Bottle,route,run
from bottle import TEMPLATE_PATH, jinja2_template as template
import func
import os

# index.pyが設置されているディレクトリの絶対パスを取得
BASE_DIR = os.path.dirname(os.path.abspath(__file__))
# テンプレートファイルを設置するディレクトリのパスを指定
TEMPLATE_PATH.append(BASE_DIR + "/views")

app=Bottle()

@app.route('/hello/:txt')

def index(txt):
    morphs = func.func(txt)
    return template('hello',morphs=morphs)

if __name__ == "__main__":
    run(app=app,host="0.0.0.0",port='8080',reloader=True)
