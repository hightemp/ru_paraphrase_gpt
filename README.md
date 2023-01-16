# Перефразатор - paraphrasator

## Как собирать docker контейнеры

```bash
# аналог google colab
cd ml_ubuntu
./build.sh
cd ..
./build.sh
docker run ru_paraphraser "Наше предприятие вышло на новый уровень."
```

```
{'origin': 'Наше предприятие вышло на новый уровень.', 'results': [{'predictions': ['Наше предприятие вышло на уровень.', 'Наше предприятие вышло на новую уровень.', 'Наше предприятие вышло на первый уровень.', 'Названа первая в истории крупнейшая компания.', 'Полиция вновь вывела на новый уровень.'], 'best_candidates': ['Наше предприятие вышло на первый уровень.', 'Наше предприятие вышло на уровень.'], 'average_metrics': {'Bleu_1': 0.8260320429030228, 'Bleu_2': 0.7080742058314073, 'Bleu_3': 0.6398937768853309, 'Bleu_4': 0.5581075164302514, 'ROUGE_L': 0.8638807429130009}}]}
```