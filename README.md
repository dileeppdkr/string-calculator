# string-calculator

Ruby String Calculator

# Installation

`$ git clone git@github.com:dileeppdkr/string-calculator.git`

Ruby:

`$ cd string-calculator`

`$ rspec`

# string-calculator

1. Create a simple String calculator with a method int add(string numbers)

    `Input: a string of comma separated numbers`

    `Output: an integer, sum of the numbers`


    `Examples:`

    `Input: "", "1", "1,5"`

    `Output: 0, 1, 6`

  ## Hints:
  1. The method can take 0, 1 or 2 numbers, and will return their sum (for an empty string it will return 0) for example "" or "1" or "1,2"
  2. Start with the simplest test case of an empty string and move to 1 and two numbers
  3. Remember to solve things as simply as possible so that you force yourself to write tests you did not think about
  4. Remember to refactor after each passing test

2. Allow the Add method to handle an unknown amount of numbers
3. Allow the Add method to handle new lines between numbers (instead of commas).

  1. The following input is valid: "1\n2,3" (will return 6)
  2. The following input is invalid: "1,\n"

4. Support different delimiters

  1. To change a delimiter, the beginning of the string will contain a separate line that looks like this: "//[delimiter]\n[numbers...]" for example "//;\n1;2"  here the delimiter is ";" and this should return 3.



5. Calling add with a negative number will throw an exception "negative numbers not allowed <negative_number>".

  1. If there are multiple negative numbers, show all of them in the exception message, separated by commas

6. Numbers bigger than 1000 should be ignored, so adding 2 + 1001 = 2

7. Delimiters can be of any length with the following format: `“//[delimiter]\n”` for example: `“//[***]\n1***2***3”` should return 6

8. Allow multiple delimiters like this: `“//[delim1][delim2]\n”` for example `“//[*][%]\n1*2%3”` should return 6.

9. make sure you can also handle multiple delimiters with length longer than one char