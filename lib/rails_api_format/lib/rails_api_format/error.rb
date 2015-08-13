module RailsApiFormat
  class Error
    include ActiveModel::Model
    include ActiveModel::Serialization

    ATTRIBBUTES = %i(status error validations)
    attr_accessor(*ATTRIBBUTES)

    def attributes
      {
        status: status,
        error: error,
        validations: validations
      }.with_indifferent_access
    end

    def to_json(options = {})
      ErrorSerializer.new(self).to_json(options)
    end

    def status
      Rack::Utils.status_code(@status)
    end
  end
end
