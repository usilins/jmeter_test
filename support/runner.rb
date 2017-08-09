require 'ruby-jmeter'

test do
  threads count: 5, loop: 10, ramup: 1 do
    get name: 'get_version', url: 'http://www.valid.parts-advisor.com/api/actuator/info'
  end
end.run(
       file: 'some_file.jmx',
       jtl: 'report.jtl'
)