# scanR ruby client  

 gem build scanr.gemspec; sudo gem install ./scanr-ruby-0.0.2.gem
 irb
 require 'scanr'
 s = Scanr.new('token')
 p JSON.parse s.ocr '/Users/sagivo/dev/side/scanr-ruby/foo.pdf'

##use

```ruby
gem install scanr
scanr = Scanr.new 'YOUR_TOKEN', 'eng'
p scanr.ocr '/path/to/image.png'
```

(more docs)[http://docs.scanr.xyz]