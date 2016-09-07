
Pod::Spec.new do |s|

  s.name         = "oc_category"
  s.version      = "0.0.1"
  s.summary      = "oc_category"
  s.description  = "oc_category"

  s.homepage     = "https://github.com/awpmp777/oc_category"
  s.license      = "MIT"
  s.author       = { "awpmp777" => "awpmp777@126.com" }
  s.source       = { :git => "https://github.com/awpmp777/oc_category.git" }

  s.platform     = :ios, "8.0"
  s.requires_arc = true

  s.source_files  = "Classes", "Classes/**/*.{h,m}"
  s.public_header_files = "Classes/**/*.h"
  s.frameworks = 'Foundation', 'UIKit'
  s.module_name = 'oc_category'

end
