# -*- encoding: utf-8 -*-

module Hatefreeweb
  class Client
    include HTTParty
    base_uri "https://admin.emotiscore.com/api/v1"
    format :json

    attr_reader :api_key

    # Get a free api_key @ https://www.hatefreeweb.org
    def initialize(api_key = nil)
      @api_key = api_key
      @api_key ||= Hatefreeweb.api_key
      @api_path = ""
    end

    def detect(body, lang)
      options = {:body => {:body => body, :lang => lang}, :query => self.default_options}
      results = Mash.new(self.class.post("/detection", options))
      detection = results.message
    end

    protected

    def default_options
      {:api_key => @api_key}
    end
  end
end
