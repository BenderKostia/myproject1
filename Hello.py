import random
# test
# Create 2 lists
alphabet = ['A','B','C','D','E','F','G','H','I','J']
numbers = [1,2,3,4,5,6,7,8,9,10]

# random choice
letter = random.choice(alphabet)
number = random.choice(numbers)

# Print result
print(letter + str(number))

shot1 = {'loc_x': 'A',
        'loc_y': 1}

shot1['loc_x'] = letter
shot1['loc_y'] = number

print(shot1)
