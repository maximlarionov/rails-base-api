class ErrorsController < ApplicationController
  include Gaffe::Errors

  # Make sure anonymous users can see the page
  skip_before_action :authenticate_user!

  def show
    error = Error.new(code: @rescue_response, message: @exception.message)
    respond_with(error, status: @status_code)
  end
end
