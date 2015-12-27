class Event
  def self.service
    ActiveService.new
  end

  def self.find(params)
    build_object(service.search_by_keywords(params))
    binding.pry
  end


  private

    def self.build_object(data)
      OpenStruct.new(data)
    end
end
