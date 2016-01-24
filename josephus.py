def josephus(n):
    def josephus_helper(n):
        if n == 1:
            return 0
        if n % 2 == 0:
            n /= 2
            return 2 * josephus_helper(n)
        n = (n - 1) / 2
        return 2 * (1 + josephus_helper(n))
    return 1 + josephus_helper(n)