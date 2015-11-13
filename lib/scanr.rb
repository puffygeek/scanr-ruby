require 'rest-client'

class Scanr

  def initialize(token, lang = 'eng')
    @token = token
    @lang = lang
  end

  def ocr(path)
    params = {}
    if path.start_with?('http')
      params[:url] = path
    else
      params[:file] = File.new(path, 'rb')
    end
    JSON.parse RestClient.post(url, params)
  end
end

def url
  "https://api.scanr.xyz/ocr?token=#{@token}&lang=#{@lang}"
end

