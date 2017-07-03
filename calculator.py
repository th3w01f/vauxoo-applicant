
"""
modulo que muestra la sumatoria total de 
todos los nros en una lista
[]
"""


class CalculatorClass(object):
    """
    clase con una funcion que sirve para
    sumar los elementos de una lista
    """

    def sum(self, num_list):
        """
        funcion que mediante un bucle for recorre
        todos los elementos de la lista y los 
        va almacenando en suma
        """

        suma = 0
        for it in range(0, len(num_list)):
            suma = suma + num_list[it]
        return suma
