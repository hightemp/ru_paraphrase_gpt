# FROM ubuntu:focal
FROM ml_ubuntu
RUN apt-get update
RUN apt-get install -y python3 python3-pip git protobuf-compiler
# ADD russian_paraphrasers /home/russian_paraphrasers
# RUN pip install git+https://github.com/RussianNLP/russian_paraphrasers@master
# RUN pip install russian-paraphrasers
# RUN pip install sentence-transformers==0.4.0
# RUN pip install git+https://github.com/Maluuba/nlg-eval.git@master
# RUN pip install protobuf==3.20
# RUN pip install git+https://github.com/RaRe-Technologies/gensim
# RUN pip install git+https://github.com/Maluuba/nlg-eval.git@master
# RUN pip install git+https://github.com/RussianNLP/russian_paraphrasers@master

RUN pip install git+https://github.com/RussianNLP/russian_paraphrasers@master
# RUN pip install russian-paraphrasers
RUN pip install sentence-transformers==0.4.0
RUN pip install git+https://github.com/Maluuba/nlg-eval.git@master

COPY ./gpt2_paraphrase.py /home/gpt2_paraphrase.py
RUN python3 /home/gpt2_paraphrase.py "Наше предприятие вышло на новый уровень."
CMD ["python3", "/home/gpt2_paraphrase.py"]
# python /home/gpt2_paraphrase.py
ENTRYPOINT ["python3", "/home/gpt2_paraphrase.py"]