Pod::Spec.new do |s|

  s.name         = 'vortex'
  s.version      = '1.0.2'
  s.summary      = 'A banner for iOS.'

  s.homepage     = 'https://github.com/xiaozhuzhu101127/vortex'



  s.license      = "MIT"

  s.ios.deployment_target = '8.0'
  s.authors = { 'xiaozhuzhu101127' => '36136055@qq.com' }

  s.source       = { :git => 'https://github.com/xiaozhuzhu101127/vortex.git', :tag => 'v1.0.2' }



  s.source_files  = "vortex/*"


  s.resources = "vortex/*"
  s.framework  = 'UIKit'
  s.requires_arc = true

  s.dependency  'Alamofire'
  s.dependency  'SwiftyJSON'

end