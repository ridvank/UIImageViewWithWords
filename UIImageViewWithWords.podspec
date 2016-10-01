Pod::Spec.new do |s|
  s.name             = "UIImageViewWithWords"
  s.version          = "0.3.0"
  s.summary          = "Create imageView with Words."

  s.description      = <<-DESC
                        An extension for UIImageView to create image with words.
                       DESC

  s.homepage         = "https://github.com/ridvank/UIImageViewWithWords"
  s.license          = 'MIT'
  s.author           = { "Ridvan Kucuk" => "ridvankuccuk@gmail.com" }
  s.source           = { :git => "https://github.com/ridvank/UIImageViewWithWords.git", :tag => s.version.to_s }

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'

end
