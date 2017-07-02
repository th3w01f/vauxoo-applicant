"""
Your module documentation here
"""


class PrimeClass(object):
    """
    Your class documentation here
    """

    def is_prime(self, num_int):
        """
        Your method documentation here
        """
        prime = True
        if num_int < 2:
            prime = False
        else:
            num = num_int // 2
            for iteration in range(2, num + 1):
                if num_int % iteration == 0:
                    prime = False
        return prime
