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
    p url, params
    JSON.parse RestClient.post(url, params)
  end
end

def url
  "http://api.scanr.xyz/ocr?token=#{@token}&lang=#{@lang}"
end

