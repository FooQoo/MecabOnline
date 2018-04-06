import MeCab
import re

def mecab(txt):

    #mecab  = MeCab.Tagger('-d /usr/lib/mecab/dic/mecab-ipadic-neologd')
    mecab  = MeCab.Tagger()
    morphs = [tuple(re.split('[\t]',m)) for m in mecab.parse(txt).split('\n')]
    morphs = [(m[0],[e if e != '*' else '' for e in re.split('[,]',m[1])]) for m in morphs if len(m) == 2]

    for i in range(len(morphs)):
        for _ in range(9 - len(morphs[i][1])):
            morphs[i][1].append('')

    return morphs
