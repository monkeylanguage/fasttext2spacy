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
Voila, now you are able to link this model to the spaCy (example below) ;)


### Linking
You have multiple options how to link the generated model (from above) to spaCy. You have to install the model by pip and link it:\
```
pip3 install [model_location] -> ie pip3 install **cs.tar.gz**
python3 -m spacy link [name_of_that_tar] [spacy_lang_to_call] -> ie python3 -m spacy link **cs** cs
```
