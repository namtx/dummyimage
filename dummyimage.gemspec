Gem::Specification.new do |s|
  s.name        = "dummyimage"
  s.version     = "0.0.1"
  s.date        = "2017-10-22"
  s.summary     = "Dummy Image"
  s.description = "A simple gem which will generates a dummy image"
  s.authors     = ["Tran Xuan Nam"]
  s.email       = "tran.xuan.nam@framgia.com"
  s.files       = Dir.glob("lib/*.rb")
  s.executables << "dummyimage"
  s.homepage    =
    "https://rubygems.org/gems/dummyimage"
  s.license       = "MIT"

  s.add_development_dependency "mini_magick", "~> 4.5"
end
