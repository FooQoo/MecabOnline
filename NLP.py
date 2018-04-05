import MeCab
import re

def mecab(txt):

    mecab  = MeCab.Tagger('-d /usr/lib/mecab/dic/mecab-ipadic-neologd')
    morphs = [tuple(re.split('[\t]',m)) for m in mecab.parse(txt).split('\n')]
    morphs = [(m[0],[e if e != '*' else '' for e in re.split('[,]',m[1])]) for m in morphs if len(m) == 2]

    return morphs
