class UserSerializer < ActiveModel::Serializer
  attributes :email, :say_hello

  def say_hello
  	"Hello #{object.email}"
  end
end
