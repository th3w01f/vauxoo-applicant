"""
Modulo que retorna si el nro que se le pasa es primo o no
"""


class PrimeClass(object):
    """
    Clase que recibe un objeto y con una sola funcion
    """

    def is_prime(self, num_int):
        """
        funcion que analiza primero si es menor que 2
        (el 1 no se toma ni como primo ni como no primo)
        luego lo hace una division entera y verifica
        si el resultado del resto es 0
        """
        prime = True
        if num_int < 2:
            prime = False
        else:
            num = num_int // 2
            for it in range(2, num + 1):
                if num_int % it == 0:
                    prime = False
        return prime
