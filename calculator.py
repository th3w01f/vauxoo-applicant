"""
Your module documentation here
"""


class CalculatorClass(object):
    """
    Your class documentation here
    """

    def sum(self, num_list):
        """
        Your method documentation here
        """

        suma = 0
        for iteration in range(0, len(num_list)):
            suma = suma + num_list[iteration]
        return suma
