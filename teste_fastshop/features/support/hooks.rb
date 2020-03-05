require_relative 'helper.rb'
require 'report_builder'


After do |scenario|
  scenario_name = scenario.name.gsub(/[^A-Za-z ]/, '').gsub(/\s+/, '_')

  if scenario.failed?
    take_screenshot(scenario_name.downcase!, 'failed')
  else
    take_screenshot(scenario_name.downcase!, 'passed')
  end
end

at_exit do
    ReportBuilder.input_path = "results/report.json"

    ReportBuilder.configure do |config|
      config.report_path = "results"
      config.report_types = [:retry, :html]

  options = {
      report_title: "Automacao QA"
  }
  ReportBuilder.build_report options
end
end
