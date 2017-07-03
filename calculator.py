
"""
modulo que suma nros de una lista
"""


class CalculatorClass(object):
    """
    clase con una funcion con 2 parametros
    """

    def sum(self, num_list):
        """
        funcion con un bucle for para recorrer
        """

        suma = 0
        for it in range(0, len(num_list)):
            suma = suma + num_list[it]
        return suma
