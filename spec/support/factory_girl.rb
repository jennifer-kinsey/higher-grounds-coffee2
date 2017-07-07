RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods

  config.include Warden::Test::Helpers

  config.after :each do
    Warden.test_reset!
  end
end
