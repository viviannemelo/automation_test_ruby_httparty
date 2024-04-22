class Employee_Requests
  def search_employee
    Employee.get('/employees')
  end

  def create_employee(name, salary, age)
    Employee.post('/create', body: {
      "name": name,
      "salary": salary,
      "age": age
    }.to_json)
  end

  def update_employee(id, name, salary, age)
    Employee.put('/update/' + id.to_s, body: {
      "name": name,
      "salary": salary,
      "age": age
    }.to_json)
  end

  def delete_employee(id)
    Employee.delete('/delete/' + id.to_s)
  end
end
