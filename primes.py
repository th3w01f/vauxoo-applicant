#!/usr/bin/env python
#-*- encoding:utf-8 -*-


"""
Modulo que servira para definir a travez de verdadero y falso si un nro es primo o no
"""

running = True
boolean = True
print "True = Nro Primo, False = Nro no Primo"
class PrimeClass():


	def is_prime(num_int):
		"""
		Este metodo servira para dividir y comparar el resto de la division de cada resultado apartir del nro 2 hasta el valor del
		nro introducido, luego entra en un bucle while que le permitira al usuario comparar tosos los nros que desee hasta que coloque
		el nro 0
		"""

		for i in range(2, num_int):

			if num_int%i == 0:
				boolean = False
				print boolean
				return boolean
			elif num_int%i != 0:
				boolean = True
				print boolean
				return boolean
			#condicion que se cumplira si el nro introducido es 1
			if num_int == 1:
				boolean = None

	while running:
		num_int = int(input("inserta un numero > 1,(0):salir >> "))
		if num_int > 0:
			is_prime(num_int)
		if num_int == 1:
			print "El número 1, por convenio, no se considera ni primo ni compuesto"
		if num_int <= 0:
			print "saliendo"
			running = False

	def __init__(self):
		"""
		funcion principal
		"""
		is_prime(num_int)