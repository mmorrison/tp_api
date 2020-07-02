class CreateUserSerializer < ActiveModel::Serializer
  attributes :id, :email, :first_name, :last_name, :pasword_digest
end
