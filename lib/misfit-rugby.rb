require "misfit_gem"

class MisfitRugby 
  def initialize
    @client ||= MisfitGem::Client.new(
      consumer_key: ENV["MISFIT_API_KEY"],
      consumer_secret: ENV["MISFIT_API_SECRET"],
      token: oauth_access_token
    )
  end
end
