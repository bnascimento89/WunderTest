class EmployeeSchema
  def employee_schema
    {
      'type': 'object',
      'title': 'The Employee Schema',
      'required': [
        'id',
        'employee_name',
        'employee_salary',
        'employee_age'
      ],
      'properties': {
        'id': {
          '$id': '#/properties/id',
          'type': 'string',
          'title': 'The Id Schema',
          'pattern': '^(.*)$'
        },
        'employee_name': {
          '$id': '#/properties/employee_name',
          'type': 'string',
          'title': 'The Employee Name Schema',
          'default': '',
          'pattern': '^(.*)$'
        },
        'employee_salary': {
          '$id': '#/properties/employee_salary',
          'type': 'string',
          'title': 'The Employee_salary Schema',
          'pattern': '^(.*)$'
        },
        'employee_age': {
          '$id': '#/properties/employee_age',
          'type': 'string',
          'title': 'The Employee_age Schema',
          'pattern': '^(.*)$'
        },
        'profile_image': {
          '$id': '#/properties/profile_image',
          'type': 'string',
          'title': 'The Profile_image Schema'
        }
      }
    }
  end

  def create_schema
    {
      'type': 'object',
      'title': 'The created Schema',
      'required': [
        'name',
        'salary',
        'age',
        'id'
      ],
      'properties': {
        'name': {
          '$id': '#/properties/name',
          'type': 'string',
          'title': 'The Name Schema',
          'pattern': '^(.*)$'
        },
        'salary': {
          '$id': '#/properties/salary',
          'type': 'string',
          'title': 'The Salary Schema',
          'pattern': '^(.*)$'
        },
        'age': {
          '$id': '#/properties/age',
          'type': 'string',
          'title': 'The Age Schema',
          'pattern': '^(.*)$'
        },
        'id': {
          '$id': '#/properties/id',
          'type': 'string',
          'title': 'The Id Schema',
          'pattern': '^(.*)$'
        }
      }
    }
  end

  def delete_schema
    {
      'type': 'object',
      'title': 'The delete Schema',
      'required': [
        'success'
      ],
      'properties': {
        'success': {
          '$id': '#/properties/success',
          'type': 'object',
          'title': 'The Success Schema',
          'required': [
            'text'
          ],
          'properties': {
            'text': {
              '$id': '#/properties/success/properties/text',
              'type': 'string',
              'enum': [
                'successfully! deleted Records'
              ],
              'title': 'The Text Schema'
            }
          }
        }
      }
    }
  end
end
