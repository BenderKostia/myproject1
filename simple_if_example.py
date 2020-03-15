# Sea Battle
# 2020-02-29
import random
#                   Item
#                Key  value
#    ----------------- Player1 ------------------
Part1_ship1 = {'loc_x': 'D',
               'loc_y': 5}
Part2_ship1 = {'loc_x': 'E',
               'loc_y': 5}
Part3_ship1 = {'loc_x': 'C',
               'loc_y': 5}
Part4_ship1 = {'loc_x': 'F',
               'loc_y': 5}
Ship1 = [Part1_ship1,Part2_ship1,Part3_ship1,Part4_ship1]
##################################################################
# Массивы для выбора параметров выстрела
alphabet = ['A','B','C','D','E','F','G','H','I','J']
numbers = [1,2,3,4,5,6,7,8,9,10]
##################################################################
# Выбор рандома буквы и циры
letter = random.choice(alphabet)
number = random.choice(numbers)

# Присвоение стартовых параметров
Shot1 = {'loc_x': 'A',
        'loc_y': 1}
# Присвоение рандомных параметров
Shot1['loc_x'] = letter
Shot1['loc_y'] = number

print(Shot1)
# Нужно придумать, как вносить выстрелы в список исключений, чтоб потом их отклонять при повторном выпадании

"""
if Shot1 in Ship1:
    print('Injured')
else:
    print('Past')
"""



