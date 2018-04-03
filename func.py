import MeCab

def func(txt):
    segments = []
    mecab = MeCab.Tagger()
    morphs = [tuple(m.split('\t')) for m in mecab.parse(txt).split('\n')]
    segments += [' : '.join(m) for m in morphs if len(m) == 2]
    return segments
