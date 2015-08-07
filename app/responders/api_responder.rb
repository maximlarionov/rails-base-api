class ApiResponder < ActionController::Responder
  def api_behavior
    fail MissingRenderer.new(format), "No renderer defined for format: #{format}" unless has_renderer?

    if get?
      display resource
    elsif post?
      display resource, status: :created, location: nil
    else
      head :no_content
    end
  end

  def resource_errors
    error = Error.new(code: :validation_error, validations: resource.errors)
    ErrorSerializer.new(error).as_json
  end
end
