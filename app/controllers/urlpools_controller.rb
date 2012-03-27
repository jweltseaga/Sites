class UrlpoolsController < ApplicationController

  hobo_model_controller

  auto_actions :none

  def redirect
    @qResult = Urlpool.find_by_oldUrl(params['html'])
    

    if @qResult
      @mRedirect = @qResult.machine
    end
    
    if @mRedirect.nil? and !@qResult.nil?
       @cRedirect = @qResult.category
       redirect_to vending_solution_url(@cRedirect), :status => 301
    elsif  !@mRedirect.nil?
       @category = @mRedirect.categories.first
       redirect_to vending_solution_machine_url(@category,@mRedirect), :status => 301
    else
       redirect_to root_url, :status => 301
    end

  end

end
