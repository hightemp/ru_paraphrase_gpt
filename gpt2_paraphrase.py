from russian_paraphrasers import Mt5Paraphraser
import sys

paraphraser = Mt5Paraphraser(model_name="mt5-small", range_cand=True, make_eval=True) # on this stage paraphraser model will be loaded

sentence = sys.argv[1]
results = paraphraser.generate(sentence)
# "Предприятие или организация становятся конкурентоспособными на рынке в результате целого комплекса действий, которые направлены на создание и удержание конкурентных преимуществ и позиций."
print(results)