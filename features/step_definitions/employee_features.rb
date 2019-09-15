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

Given('send the employee id to employee endpoint') do
  get_employee_url = base_employee_url + 'employee/' + get_value(id)
  get
end

Then('I should see the created employee') do
  pending # Write code here that turns the phrase above into concrete actions
end

Given('send the employee id to delete endpoint') do
  pending # Write code here that turns the phrase above into concrete actions
end

Then('the employee should be deleted') do
  pending # Write code here that turns the phrase above into concrete actions
end
