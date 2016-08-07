Pod::Spec.new do |s|
s.name         = "KBAlertController"
s.version      = "1.0.1"
s.summary      = "Custom UIAlertController"
s.homepage     = "https://github.com/dai-jing/KBAlertController"
s.license      = { :type => 'MIT', :file => 'LICENSE' }
s.author       = { "Jing Dai" => "daijing24@gmail.com" }
s.platform     = :ios
s.platform   	 = :ios, "8.0"
s.requires_arc = true
s.source       = {
:git => "https://github.com/dai-jing/KBAlertController.git",
:branch => "master",
:tag => s.version.to_s
}
s.source_files = "*.{h,m}"
s.public_header_files = "*.h"
end