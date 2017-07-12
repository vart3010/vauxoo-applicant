"""
Calculate Module
"""


class CalculatorClass(object):
    """
    Calculate class
    """

    def sum(self, num_list):
        """
        Method to add numbers
        """
        suma = 0
        for number in num_list:
        	suma = suma + number

        return suma

