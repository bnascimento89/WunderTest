# Wunder QA Test

- Wunder QA Test, using the BDD framework Cucumber to provide documentation to automated tests.

        $ git clone https://github.com/bnascimento89/WunderTest

## Dependencies
 - Ruby 2.6.0

## Recommendations ##
 - Install bundler
         
         $ gem install bundler

## Project Installation

     $ bundle install
      
## Usage
 - To run all scenarios
     
       $ cucumber
       
  - To run create employee scenario
     
       $ cucumber -t @create_employee
       
  - To run validate the employee was created
     
       $ cucumber -t @validate_created_employee
  
  - To run validate delete created employee
     
       $ cucumber -t @delete_created_employee
  
  
  
     
