require "./employee.rb"
require "./email-reportable.rb"

class Intern < Employee
  include EmailReportable
end










