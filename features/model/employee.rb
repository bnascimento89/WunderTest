# frozen_string_literal: true

class Employee
  include DataMagic
  include ActiveModel::Serializers

  attr_reader :name, :salary, :age

  def initialize
    DataMagic.yml_directory = DATA_MAGIC_DIRECTORY
    employee = data_for 'employee/employee'

    @name = employee['name']
    @salary = employee['salary']
    @age = employee['age']
  end
end
