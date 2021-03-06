class Event
  def self.service
    ActiveService.new
  end

  def self.general_info(params)
    raw_data = service.response_results(params)
    new_data = raw_data[:results].map { |event| { event_name: event[:assetName],
                                                  event_registration_url: event[:urlAdr],
                                                  organization_name: event[:organization][:organizationName],
                                                  start_date: event[:activityStartDate],
                                                  end_date: event[:activityEndDate],
                                                  description: event[:assetDescriptions].first[:description],
                                                  gender: event[:regReqGenderCd] }
                                     }

    new_data.map { |event| build_object(event) }
  end

  private

    def self.build_object(data)
      OpenStruct.new(data)
    end
end
