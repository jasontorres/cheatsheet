module Cheatsheet
  class Client

    SOURCE = "https://raw.githubusercontent.com/rstacruz/cheatsheets/gh-pages/"

    def self.fetch(*args)
      key = args[0].first
      uri = URI(SOURCE + key + ".md")

      begin
        puts self.fetch_raw(uri)
      rescue CheatSheetClientException => e
        puts e.message
      end
    end

    def self.fetch_raw(uri)
      response = Net::HTTP.get_response(uri)

      case response
      when Net::HTTPSuccess then
        Net::HTTP.get(uri)
      when Net::HTTPNotFound then
        raise CheatSheetClientException.new "We don't have that cheatsheet yet. Feel free to contribute here: https://github.com/rstacruz/cheatsheets"
      else
        response.value
      end
    end

  end
end

class CheatSheetClientException < Exception
end
