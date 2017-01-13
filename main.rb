require "./employee.rb"
require "./intern.rb"
require "./manager.rb"

majora = Employee.new({first_name: "Majora", last_name: "Carter", salary: 80000, active:true, birthdate: "Aug17"})
danilo = Employee.new({first_name: "Danilo", last_name: "Campos", salary: 70000, active:true, birthdate: "March10"})
majora.print_info
majora.give_annual_raise
majora.print_info

jim = Manager.new({first_name: "Jim", last_name: "Tekanyo", salary: 70000, active:true, birthdate: "March10", employees: [majora, danilo]})
# jim.send_report
# jim.print_info
# puts jim.employees
# puts majora.salary
# puts danilo.salary
# jim.give_all_raises
# puts majora.salary
# puts danilo.salary
jim.create_report

george = Intern.new({first_name: "George", last_name: "Mikhail", salary: 30000, active:true, birthdate: "Jan1"})
george.print_info
george.send_report
george.create_report