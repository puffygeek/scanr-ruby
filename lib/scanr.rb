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
  "http://localhost:8080/ocr?token=#{@token}&lang=#{@lang}"
  # TEST: 
  # gem build scanr.gemspec; sudo gem install ./scanr-ruby-0.0.1.gem
  #irb
  # require 'scanr'
  #s = Scanr.new('token')
  #p JSON.parse s.ocr '/Users/sagivo/dev/side/scanr-ruby/foo.pdf'
end

