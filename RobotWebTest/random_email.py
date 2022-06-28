# random email
import random
import string


def random_char():
       return (''.join(random.choice(string.ascii_letters) for x in range(random.randint(4,20)))+'@gmail.com')

