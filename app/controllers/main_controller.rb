class MainController < ApplicationController

  def index
  end

  def fizz_buzz
    @num = params[:number]

    @calculator = Calculator.new
    @result = @calculator.calculate_fizz_buzz(@num.to_i)

    respond_to do |format|
      format.html
      format.json {
        begin
          Integer(@num)
          render json: @result.to_json
        rescue
          render json: {error: "Sorry, that is not an integer"}, status: 422
        end
      }
    end
  end

end
