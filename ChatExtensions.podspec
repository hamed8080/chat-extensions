Pod::Spec.new do |s|
  s.name         = "ChatExtensions"
  s.version      = "2.1.0"
  s.summary      = "ChatExtensions"
  s.description  = "A set of extensions to ease using of repetitive useful over methods, variables, enum, classes of Chat Models, Classes and etc."
  s.homepage     = "https://pubgi.sandpod.ir/chat/ios/chat-extensions"
  s.license      = "MIT"
  s.author       = { "Hamed Hosseini" => "hamed8080@gmail.com" }
  s.platform     = :ios, "10.0"
  s.swift_versions = "5.6"
  s.source       = { :git => "https://pubgi.sandpod.ir/chat/ios/chat-extensions", :tag => s.version }
  s.source_files = "Sources/ChatExtensions/**/*.{h,swift,xcdatamodeld,m,momd}"
  s.frameworks  = "Foundation"
  s.dependency "ChatDTO" , '~> 2.1.0'
  s.dependency "ChatCore" , '~> 2.1.0'
  s.dependency "ChatCache" , '~> 2.1.0'
end
