#!/usr/bin/env python
#-*- encoding:utf-8 -*-

"""
Este modulo puede ser usado en otro script, importandolo si se quiere 
instanciar un objeto en una variable para asi sumar todos los valores
introducidos por parte del usuario
"""

class CalculatorClass(object):
    """
    Esta clase contiene 2 funciones y la funcion principal, contiene
    2 variables que posteriormente se usaran internamente en la funcion
    rellenar y suma
    """
    num_list = []
    result = 0

    def rellenar(self):
        """
        Dependiendo del nro introducido por el usuario la cantidad
        de valores que aceptara la lista varia, de esta manera el usuario
        puede sumar desde 2 hasta los nros que desee, el bucle FOR
        servira para ir agregando los valores a la lista, dicha
        funcion terminara mostrando todos los nros introducidos
        """
    	longlist = input("Cantidad de valores de la lista > ")
    	for i in range(longlist):
    		self.num_list.append(input("Ingrese un Numero >"))
    	print ("Nros >"+str(self.num_list))
    def suma(self):
        """
        La funcion Suma es mucha mas corta, a esta se le pasara
        la variable num_list la cual con el bucle FOR la recorrera
        para ir sumando todos los valores, y finalizar mostrandolos
        """
        #
        for i in self.num_list:
        	self.result+= i
        print "La Suma Total Es : "+str(self.result)


    def __init__(self):
    	"""
    	funcion principal
    	"""

#Se instancia una variable con una funcion de la clase
resultado = CalculatorClass()
resultado.rellenar()
resultado.suma()
