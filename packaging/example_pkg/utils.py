import random


def am_i_lucky(name: str) -> str:
    r = random.randint(1, 10)
    if (r % 3 == 0):
        return 'Hello {}. You are lucky today!'.format(name)
    else:
        return 'Hello {}. Unfortunately, please try again!'.format(name)
