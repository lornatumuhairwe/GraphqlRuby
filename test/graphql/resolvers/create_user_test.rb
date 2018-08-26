require 'test_helper'

class Resolvers::CreateUserTest < ActiveSupport::TestCase
  def perform(arg = {})
    Resolvers::CreateUser.new.call(nil, args, nil)
  end

  test 'create new user' do
    user = perform(
       name: 'Test User',
       authProvider: {
         email: {
           email: 'email@example.com',
           password: '123'
         }
       }
    )

    assert user.persisted?
    assert_equal user.name, 'Test User'
    assert_equal user.email, 'email@example.com'
  end
end