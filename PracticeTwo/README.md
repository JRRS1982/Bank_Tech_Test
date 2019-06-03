# Project title

This is my second attempt at the Bank Tech Test, for practice and repetition.

## Motivation / Approach

This project was made to develop my object orientated programming skills, and
technical ability to build a Ruby project which is well encapsulated, DRY and
probably requires a fair bit of refactoring.

I decided to use Ruby as a language to solve this problem as its a language that
I am currently comfortable with, but am interested in getting better at. I enjoy
working with it!

### Build status

The project is currently under construction, it may not be completed as this is
a practice exercise.

### Screenshots / UML / Notes / Diagrams

Should there be any images, please find them in the images folder of the project.

### User Stories (being built up to fit acceptance criteria)

As a person with money,
I want to protect it in a guarded account,
so that I dont need to protect it myself.

As a person with money,
I want to add more to my account whenever I choose to do so,
so that i can build a big nest egg for retirement one day.

As a person with money,
I want to be able to see what i have in my account,
so that i can check that the bank hasn't stolen my money itself.

As a person with money,
I want to be able to withdral from the account i have saved into,
so that i can spend my hard earnt money.

As a person with money,
I want to see the balance of my account after each transaction,
so that i am aware of my current balance.

AT COMPLETION: PROGRESS OF SOLVING THE USER STORIES, HOW FAR DID I GET IN SOLVING THEM?

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

WHAT FURTHER FEATURES WOULD I ADD IF I HAD MORE TIME?

## Credits / team members

No contributions are required at this time, as this is a training exercise.

This is a solo project that requires reference to no external tutorials.

MODEL IN A CLASS DIAGRAM NOW

NOW CREATE A FEATURE TEST FIRST

describe 'Greeter' do
  it 'greets Rico' do
    THIS EXAMPLE NEEDS TO BE IMPROVED TO A GOOD FEATURE TEST
    expect(greet('Rico')).to eq('Hello, Rico, how are you today?')
  end
end

REMEMBER TO ADD A LIB AND FEATURES FOLDERS
AND REQUIRE RELATIVE OF CODE IN THE SPEC HELPER
AND REQUIRE SPEC HELPER IN SPEC FILE
