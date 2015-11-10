#scanR Node.js client

dead simple. fast ocr client  

  - No need for heavy libraries.
  - Simple to use.
  - Customize it easily. 

##Get Started

Simply install via [npm](https://npmjs.org/):

```javascript
npm install scanr-node
```
Load it and you're ready to go!

```ruby
gem install scanr
scanr = Scanr.new 'YOUR_TOKEN', 'eng'
p scanr.ocr '/path/to/image.png'

```

[more docs](http://docs.scanr.xyz)

##Contribute
Please do. Fork it, star it, share it and add your code to the project. Help others.  

##License
MIT




 gem build scanr.gemspec; sudo gem install ./scanr-ruby-0.0.2.gem
 irb
 require 'scanr'
 s = Scanr.new('token')
 p JSON.parse s.ocr '/Users/sagivo/dev/side/scanr-ruby/foo.pdf'

