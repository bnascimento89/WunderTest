class EmployeeSchema
  def get_schema
    {
      "type": "object",
      "title": "The Employee Schema",
      "required": [
        "id",
        "employee_name",
        "employee_salary",
        "employee_age"
      ],
      "properties": {
        "id": {
          "$id": "#/properties/id",
          "type": "string",
          "title": "The Id Schema",
          "pattern": "^(.*)$"
        },
        "employee_name": {
          "$id": "#/properties/employee_name",
          "type": "string",
          "title": "The Employee Name Schema",
          "default": "",
          "pattern": "^(.*)$"
        },
        "employee_salary": {
          "$id": "#/properties/employee_salary",
          "type": "string",
          "title": "The Employee_salary Schema",
          "pattern": "^(.*)$"
        },
        "employee_age": {
          "$id": "#/properties/employee_age",
          "type": "string",
          "title": "The Employee_age Schema",
          "pattern": "^(.*)$"
        },
        "profile_image": {
          "$id": "#/properties/profile_image",
          "type": "string",
          "title": "The Profile_image Schema"
        }
      }
    }
  end
end