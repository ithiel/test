class TestController < ApplicationController

  auto_complete_for :person,:name

  def index
    (@graph1,@divname1) = open_flash_chart_object_and_div_name(300,150,"/test/graph_code","xx1")
    # @chart = open_flash_chart_object(300,150,"/test/graph_code")
    # @graph3 = open_flash_chart_object(300,150,"/test/graph_code")
    # @graph4 = open_flash_chart_object(300,150,"/test/graph_code")
  end
  def xyz
    render :text=>"1,2,3,4,5,6,7,8,9,10 "
  end
  def graph_code
    sleep 1
    title = Title.new("MY TITLE")
    bar = BarSketch.new('#d070ac','#666666',5)
    bar.set_values([rand(10),rand(10),rand(10),rand(10),rand(10),rand(10),rand(10),rand(10),rand(10)])
    chart = OpenFlashChart.new
    chart.set_title(title)
    chart.add_element(bar)
    render :text => chart.to_s
  end

  def show_graph
    (@graph1,@divname1) = open_flash_chart_object_and_div_name(300,150,"/test/graph_code","xx1")
    @graph2 = open_flash_chart_object(300,150,"/test/graph_code")
    @graph3 = open_flash_chart_object(300,150,"/test/graph_code")
    @graph4 = open_flash_chart_object(300,150,"/test/graph_code")
    render :inline => "<%=@graph1%> <br/> <%=@graph2%>"

  end

end
