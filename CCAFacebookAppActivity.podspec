Pod::Spec.new do |s|
  s.name         = "UIActivity+CCAFacebookAppActivity”
  s.version      = "1.0.0"
  s.summary      = "Hacking the default Facebook UIActivity"
  s.description  = <<-DESC
                   Launch the Facebook app from UIActivityViewController instead of the default share sheet.
                   DESC 

  s.homepage     = "https://github.com/jilouc/CCAFacebookAppActivity"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { 'Jean-Luc Dagon' => 'jldagon@cocoapps.fr' }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/jilouc/CCAFacebookAppActivity.git", :tag => s.version.to_s }
  s.source_files = 'UIActivity+CCAFacebookAppActivity.{h,m}'
  s.dependency 'Facebook-iOS-SDK'
end