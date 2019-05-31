# Project title

Bank tech test: this is a common tech test, which I will complete to test my ability as a developer. It will test my OO
and TDD skills, it will be completed solo, reuire me to refactor along the way and consider best practice.

### Motivation / Approach

This project was made to develop my software development skills, in this case, in Ruby and Rspec. I will attempt to TDD
the project, providing good code coverage and following SOLID principles.

I firstly created the repo on Github, and this readme, to contemplate the approach I will take with the project, and to
consider user stories, and therefore the classes and objects that are going to be required. I then installed the
required software (Rspec for testing).

### Build status

The project is currently under construction, it may not be completed as this is a practice exercise.

I will update this readme once I am happy with the final code quality / programme.

### Screenshots / UML / Notes / Diagrams

Should there be any images, please find them in the images folder of the repo.

### User Stories

As a bank customer,
So that i can keep my money safe,
I want to be able to deposit it in a bank.

As a bank customer,
So that i can spend my money,
I want to be able to withdraw it from the bank.

As a bank customer,
So that i can keep track of what i have saved,
On request I want to be provided a bank statement (with date of transactions, amount of transactions and a running balance on it).

## Problem Solving / Workings

My original consideration for the project was;

Inputs: an object, probably a transaction object, which has a variable for the amount, a value for the date of the
transaction and an attribute confirming if it is a deposit or a withdrawal.

Outputs: a statement, an object (probably best for encapsulation) that contains a table, that table displays all the
transaction objects and a running balance.

### Objects v1

* "Bank"
Variables: An array of "Account" objects.
Methods: Create an "Account" object.

* "Account"
Variables: An array of "Transaction" objects.
Methods: Create a "Transaction" object.
Methods: Create a "Statement" object.

* "Transaction"
Variables: "Date"
Variables: "Amount"
Variables: "Deposit?"
Methods: Ideally none, its just has attributes, when it is created.

* "Statement"
Variables: A "list of transaction dates"; as a string
Variables: A "list of deposits"; as integers
Variables: A "list of withdrawals"; as integers
Variables: A "list of the running balance"; as integers
Methods: Ideally none, the statement is displayed when created.

### Objects v2

* "Account"
Variables: transaction_history(array of transaction objects)
Methods: create_transaction(date:date.new, amount:int, deposit:boolean)
Methods: create_statement(transaction_history)

* "Transaction"
Variables: date:Date
Variables: amount:Float to two decimals
Variables: deposit:boolean
Methods: Ideally none, its just has attributes, when it is created.

* "Statement"
Variables: transaction_history
Methods: running_balance(transaction_history)
Methods: print_statement(transaction_history, running_balance)

Replacing my original object ideas with v2 here, means that the objects are
better encapsulated. I think that it makes better sense to me, although I am
aware that the print statement method is going to be fairly complex and may
require some refactoring.

## Tech / framework used

An apple macbook was used to write code using VSCode as an editor and;

* Ruby was used as the main language.
* RSpec used for testing.
* Capybara used for testing.
* Simplecov used for checking test coverage.
* Pry to assist with debugging.
* Timecop Gem used to create mock date/time for the transactions.

### Code style

Rubocop 0.65.0 was used for linting and stylying the Ruby code.

### Tests

A TDD process was used in the development of this project, please see the
attached spec files for details of the testing that was carried out.

## Installation / Running / How it works

If gems were used, please find attached a gem file listing those gems for
installation, else please use the following to run the file:

1) 
2)

## API Use

No API used in this project.

## Reflection / further development

What further features would I add if i had more time?

## Credits / team members

Full credit given to Makers Academy who suggested the project.

No contributions are required at this time, as this is a training exercise.