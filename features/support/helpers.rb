module Helpers

  def base_employee_url
    "http://dummy.restapiexample.com/api/v1/"
  end

  def get(url)
    begin
      @response = HTTParty.get url
    rescue HTTParty::ExceptionWithResponse => ex
      @response = ex.response
    end
    puts "\n GET Request=> URL:#{url}\n\n GET Response:\n Code:#{@response.code}
                         \n Body:#{@response.body}\n"
    @response
  end

  def post(url, body)
    begin
      @response = HTTParty.post(url, :headers => {'content-type': 'application/json'}, :body => body.to_json)
    rescue HTTParty::ExceptionWithResponse => ex
      @response = ex.response
    end
    puts "\n POST Request=> URL:#{url}\n\n POST Response:\n Code:#{@response.code}
                         \n Body:#{@response.body}\n"
    @response
  end

    def delete(url, body='')
    begin
      @response = HTTParty.delete(url, :body => body.to_json)
    rescue HTTParty::ExceptionWithResponse => ex
      @response = ex.response
    end
    puts "\n POST Request=> URL:#{url}\n\n POST Response:\n Code:#{@response.code}
                         \n Body:#{@response.body}\n"
    @response
  end

  def last_response
    @response
  end

  def validate_schema(schema)
    JSON::Validator.validate!(schema, last_response.body)
  end

  def get_value(field)
    JSON.parse(@response.body, symbolize_names: true)[:"#{field}"]
  end

  def create_employee (payload)
    create_employee_url = base_employee_url + 'create'
    post(create_employee_url, @payload)
  end

  def get_created_employee
    get_employee_url = base_employee_url + 'employee/' + get_value('id')
    get(get_employee_url)
  end

  def delete_created_employee
    delete_employee_url = base_employee_url + 'delete/' + get_value('id')
    delete(delete_employee_url)
  end
end

DataMagic.add_translator Helpers