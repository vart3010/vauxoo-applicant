"""
Mathematical Module
"""


class PrimeClass(object):
    """
    Calculate Class
    """

    def is_prime(self, num_int):
		"""
		Method that calculates if a number is prime
		"""
		cont = 0
		band = False
		for i in xrange(2,num_int+1):
			if num_int % i == 0:
				cont = cont +1

		if cont == 1:
			return True
		else:
			return False
        
