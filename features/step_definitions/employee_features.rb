Given('I want to create an employee') do
  @payload = Employee.new
end

And('send the employee information to create endpoint') do
  create_employee(@payload)
end

Then('the employee should be create') do
  employee_schema = EmployeeSchema.new
  schema = employee_schema.create_schema
  expect(last_response.code).to eq 200
  expect(validate_schema(schema)).to be true
end

Given('I create an employee') do
  @payload = Employee.new
  create_employee(@payload)
  expect(last_response.code).to eq 200
end

And('send the employee id to employee endpoint') do
  validate_created_employee
end

Then('I should see the created employee') do
  employee_schema = EmployeeSchema.new
  schema = employee_schema.employee_schema
  expect(last_response.code).to eq 200
  expect(validate_schema(schema)).to be true
end

Given('send the employee id to delete endpoint') do
  delete_created_employee
end

Then('the employee should be deleted') do
  employee_schema = EmployeeSchema.new
  schema = employee_schema.delete_schema
  expect(last_response.code).to eq 200
  expect(validate_schema(schema)).to be true
end
