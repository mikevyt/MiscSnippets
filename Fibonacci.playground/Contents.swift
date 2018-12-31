// 0, 1, 1, 2, 3, 5, 8, 13, 21...

func fib(n: Int) -> Int {
    if (n <= 0) {
        return 0
    } else if (n == 1) {
        return 1
    } else {
        return fib(n: n - 1) + fib(n: n - 2)
    }
}
