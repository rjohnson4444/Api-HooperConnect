class ActiveService
  attr_reader :connection

  def initialize
    @connection = Hurley::Client.new("http://api.amp.active.com/v2/search?")
  end

  def search_by_keywords(words)
    
  end

  private
    def parse_json(response)
      JSON.parse(response.body, symbolize_names: true)
    end

    def active_key
      "&api_key=#{ENV["activity_search_key"]}"
    end
end
