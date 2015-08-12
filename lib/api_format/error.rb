module ApiFormat
  class Error
    include ActiveModel::Model
    include ActiveModel::Serialization

    ATTRIBBUTES = %i(status error validations)
    attr_accessor(*ATTRIBBUTES)

    def attributes
      instance_values.with_indifferent_access
    end

    def to_json(options = {})
      ErrorSerializer.new(self).to_json options
    end
  end
end
