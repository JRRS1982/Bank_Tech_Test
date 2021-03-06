# Project title

This is my second attempt at the Bank Tech Test, for practice and learning through repetition.

## Motivation / Approach

This project was made to develop my object orientated programming skills, and
technical ability to build a Ruby project which is well encapsulated, DRY and
probably requires a fair bit of refactoring.

I decided to use Ruby as a language to solve this problem as its a language that
I am currently comfortable with, but am interested in getting better at. I enjoy
working with it!

### Build status

The project is a practice exercise, so could and can be improved upon, but
I don't consider that necessary at this time.

### Screenshots / UML / Notes / Diagrams

Should there be any images, please find them in the images folder of the project.

### User Stories (being built up to fit acceptance criteria)

As a person with money,
I want to protect it in a guarded account,
so that I dont need to protect it myself.
DONE - account object. 

As a person with money,
I want to add more to my account whenever I choose to do so,
so that i can build a big nest egg for retirement one day.
DONE - deposit method on account object.

As a person with money,
I want to be able to see what i have in my account,
so that i can check that the bank hasn't stolen my money itself.
DONE - statement.

As a person with money,
I want to be able to withdral from the account i have saved into,
so that i can spend my hard earnt money.
DONE - withdrawal method on account object.

As a person with money,
I want to see the balance of my account after each transaction,
so that i am aware of my current balance.
DONE - deposit and withdrawal show balance after running.

As a person with money,
I want to see a nice tidy table of the transactions,
so that i am can look over all the transactions lazily.
DONE - formatting to the statement

As a person with money,
I want my statement to have a heading seperating the transactions,
so that it is clear which transaction is which.
DONE - statement header method.

As a person with money,
I want the body of my statement to contain the date, credit, debit and balance,
so that its nice and tidy.
DONE - statement.

I beleive that all of the user stories here are complete.

## Acceptance criteria (of the tech test)

Given a client makes a deposit of 1000 on 10-01-2012
And a deposit of 2000 on 13-01-2012
And a withdrawal of 500 on 14-01-2012
When she prints her bank statement
Then she would see

date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00

### Problem solving - workings

Inputs will be strings entered to the command line.

The output of the entered code will be stored data when entering transactions,
and presumably there will be a command that creates a statement displaying those
transactions.

## Tech / framework used

An apple macbook was used to write code using VSCode as an editor and;

* Ruby was used as the main language.
* RSpec used for testing.
* Simplecov is used for test coverage.

### Code style

Rubocop 0.65.0 was used for linting and stylying the Ruby code.

### Tests

A TDD process was used in the development of this project, please see the
attached spec files for details of the testing that was carried out.

## Installation / Running / How it works

Please find attached a gem file listing those gems for installation, use the
following to run the file:

1) git clone - this repository
2) enter irb and play away!

## API Use

No API used in this project.

## Reflection / further development

I am happy with the state of the project at the moment, I may
return to it at a later stage and redo the project but I have
learnt a fair bit while doing this and consider it a success.

Next time I approach the project I would be a bit tidier with
the code, as I think i could encapsulate the statement into
a seperate object. Mocking/stubbing would be done better and
I would probably spend less time on the problem, and complete
it in one go, rather than split over the broken hours that I
currently have available while abroad.

I would also make better use of spechelpers as didn't make it
as easy as i could have for myself!

## Credits / team members

No contributions are required at this time, as this is a training exercise.

This is a solo project that requires reference to no external tutorials.
