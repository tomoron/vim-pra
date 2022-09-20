class Formatter
  def output_report(title,text)
    raise 'Called abstract method!'
  end
end

class HTMLFormatter < Formatter
  def output_report(report)
    puts ''
    report.text.each {|line| puts "#{line}"}
    puts ''
  end
end

class PlaneTextFormatter < Formatter
  def output_report(report)
    puts "-----#{report.title}----"
    report.text.each {|line| puts line}
  end
end


class Report
  attr_reader :title, :text
  attr_accessor :formatter

  def initialize(formatter)
    @title = "report title"
    @text = %w(text1 text2 text3)
    @formatter = formatter
  end
  
  def output_report
    @formatter.output_report(self)
  end
end

report = Report.new(HTMLFormatter.new)
report.output_report

report.formatter = PlaneTextFormatter.new
report.output_report

