Given('the user queries employee information') do
  @get_list = Employee_Requests.new
end

When('they perform a search') do
  @list_employee = @get_list.search_employee
end

Then('a list of employees should be returned') do
  expect(@list_employee.code).to eql 200
  expect(@list_employee.message).to eql 'OK'
end

Given('the user registers a new employee') do
  @create_employee = Employee_Requests.new
  @assert = Assertions.new
end

When('they submit the employees information') do
  @new_employee = @create_employee.create_employee(DATABASE[:name][:name6], DATABASE[:salary][:salary6], DATABASE[:age][:age6])
end

Then('the employee will be registered') do
  @assert.request_success(@create_employee.code, @create_employee.message)
  expect(@create_employee["status"]).to eql 'success'
  expect(@create_employee["message"]).to eql 'Successfully! Record has been added.'
  expect(@create_employee['data']["employee_name"]).to eql DATABASE[:name][:name1]
  expect(@create_employee['data']["salary"]).to eql DATABASE[:salary][:salary1]
  expect(@create_employee['data']["age"]).to eql DATABASE[:age][:age1]
end

Given('the user update employee information') do
  @get_employee = Employee_Requests.new
  @assert = Assertions.new
end

When('they send new informations') do
  @update_employee = @get_employee.update_employee(@get_employee.search_employee['data'][0]['id'], DATABASE[:name][:name1], DATABASE[:salary][:salary1], DATABASE[:age][:age1])
end

Then('informations will be changed') do
  @assert.request_success(@update_employee.code, @update_employee.message)
  expect(@update_employee['status']).to eql 'success'
  expect(@update_employee['message']).to eql 'Successfully! Record has been updated.'
  expect(@update_employee['data']['name']).to eql DATABASE[:name][:name1]
end

Given('the user delete a employee') do
  @get_employee = Employee_Requests.new
  @assert = Assertions.new
end

When('they send identification') do
  @delete_employee = get_employee.delete_employee(@get_employee.search_employee['data'][0]['id'])
end

Then('employee will be deleted') do
  @assert.request_success(@delete_employee.code, @delete_employee.message)
  expect(@delete_employee['status']).to eql 'success'
  expect(@delete_employee['message']).to eql 'Successfully! Record has been deleted.'
  expect(@delete_employee['data']).to eql '1'
end
