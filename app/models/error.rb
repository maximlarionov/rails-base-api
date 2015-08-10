class Error
  include ActiveModel::Model
  include ActiveModel::Serialization

  ATTRIBBUTES = %i(code message validations)
  attr_accessor(*ATTRIBBUTES)

  def attributes
    instance_values.with_indifferent_access
  end
end
