FROM mthappy/mecabonline

# gitのインストール
RUN apk update
RUN apk add git

# ソースコードを配置
WORKDIR /web
RUN git clone git@github.com:FooQoo/Morphological-analysis-Online.git Morphological-analysis

# bottleアプリケーションの起動
ENV BOTTLE_APP /web/Morphological-analysis/index.py
CMD python BOTTLE_APP
