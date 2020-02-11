# fasttext2spacy
Simple scripts for converting FastText vectors to spaCy model in an easy way:

### Running
All you need to do is to run the sh file (run.sh) - either chmodx it, or sh run it (like below) with [lang] as first parameter - for example: 
```
sh run.sh cs
```
The code above will download the FastText vectors and create the spaCy model for **cs** language (Czech language). \
You can find other available languages at: https://fasttext.cc/docs/en/crawl-vectors.html

The generated model can be afterwards found at models/[lang] -> according to the example at models/cs.tar.gz\
Voila, now you are able to link this model to the spaCy ;)
