include Helpers

Given('I want to create an employee') do
  @payload = Employee.new
end

And('send the employee information to create endpoint') do
  create_employee(@payload)
end

Then('the employee should be create') do
  employeeSchema = EmployeeSchema.new
  schema = employeeSchema.create_schema
  expect(last_response.code).to eq 200
  expect(validate_schema(schema)).to be true
end

Given('I create an employee') do
  @payload = Employee.new
  create_employee(@payload)
  expect(last_response.code).to eq 200
end

And('send the employee id to employee endpoint') do
  get_created_employee
end

Then('I should see the created employee') do
  employeeSchema = EmployeeSchema.new
  schema = employeeSchema.get_schema
  expect(last_response.code).to eq 200
  expect(validate_schema(schema)).to be true
end

Given('send the employee id to delete endpoint') do
  delete_created_employee
end

Then('the employee should be deleted') do
  employeeSchema = EmployeeSchema.new
  schema = employeeSchema.delete_schema
  expect(last_response.code).to eq 200
  expect(validate_schema(schema)).to be true
end
