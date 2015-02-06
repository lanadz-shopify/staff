require 'benchmark/ips'
 
  def rescue_exception(divider)
    1 / divider
    rescue ZeroDivisionError
  end
 
  def without_rescue(divider)
    1 / divider
  end
 

  Benchmark.ips do |x|
    x.report('rescue') do |t|
      rescue_exception t
    end
  
    x.report('regular') do |t|
      without_rescue t
    end
    x.compare!
end
