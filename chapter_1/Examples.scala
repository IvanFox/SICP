package sicp

import scala.annotation.tailrec

/**
  * @author IvanLis
  * @version 1.0
  * @since 19/03/2016.
  *
  *        scala
  */
class Examples {


  def sqrt(x: Double) = {
    def abs(x: Double): Double = if (x < 0) -x else x

    def sqrt_iter(guess: Double): Double = {
      if (isGoodEnough(guess)) guess
      else sqrt_iter(improve(guess))
    }

    def isGoodEnough(guess: Double): Boolean = abs(guess * guess - x) / x < 0.0001
    def improve(guess: Double) = (guess + x / guess) / 2
    sqrt_iter(1)
  }

  // tail recursion
  @tailrec
  final def gcd(num1: Int, num2: Int): Int = if (num2 == 0) num1 else gcd(num2, num1 % num2)


  // regular recursion
  def factorial(num: Int): Int = if (num == 0) 1 else num * factorial(num - 1)


  def tailFactorial(num: Int): Int = {
    @tailrec
    def factorial_iter(result: Int, counter: Int): Int = {
      if (counter == 0) result else factorial_iter(result * counter, counter - 1)
    }
    factorial_iter(1, num)

  }

  println(sqrt(9))

  println(gcd(21, 19))
    println(factorial(5))
  println(tailFactorial(5))
}
