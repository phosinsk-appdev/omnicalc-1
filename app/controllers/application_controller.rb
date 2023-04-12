class ApplicationController < ActionController::Base

  def blank_square_form
    render({:template => "calculation_templates/square_form.html.erb"})

  end 

  def calculate_square
    @square_num = params.fetch("number_for_square").to_f
    @square_of_num = @square_num**2

    render({:template => "calculation_templates/square_results.html.erb"})

  end 

  def blank_random_form
    render({:template => "calculation_templates/random_form.html.erb"})

  end 

  def calculate_random
    @lower = params.fetch("user_min").to_f
    @upper = params.fetch("user_max").to_f
    @rand_num = rand(@lower..@upper)

    render({:template => "calculation_templates/random_results.html.erb"})

  end 

  def blank_root_form

    render({:template => "calculation_templates/root_form.html.erb"})

  end 

  def calculate_root

    @root_num = params.fetch("number_for_root").to_f
    @root_of_num = Math.sqrt(@root_num)
    render({:template => "calculation_templates/root_results.html.erb"})

  end 

end
