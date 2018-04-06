FROM mthappy/mecabonline:latest

# gitのインストール
RUN apt update
RUN apt-get install git

# ソースコードを配置
WORKDIR /web
RUN git clone https://github.com/FooQoo/Morphological-analysis-Online.git Morphological-analysis

# bottleアプリケーションの起動
ENV BOTTLE_APP /web/Morphological-analysis/index.py
CMD python /web/Morphological-analysis/index.py
