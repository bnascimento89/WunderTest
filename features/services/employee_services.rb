module EmployeeServices
  def base_employee_url
    'http://dummy.restapiexample.com/api/v1/'
  end

  def create_employee(payload)
    create_employee_url = base_employee_url + 'create'
    post(create_employee_url, payload)
  end

  def validate_created_employee
    get_employee_url = base_employee_url + 'employee/' + get_value('id')
    get(get_employee_url)
  end

  def delete_created_employee
    delete_employee_url = base_employee_url + 'delete/' + get_value('id')
    delete(delete_employee_url)
  end
end

World(EmployeeServices)
