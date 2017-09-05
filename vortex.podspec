Pod::Spec.new do |s|

  s.name         = 'vortex'
  s.version      = '1.0.1'
  s.summary      = 'A banner for iOS.'

  s.homepage     = 'https://github.com/xiaozhuzhu101127/vortex'



  s.license      = "MIT"

  s.ios.deployment_target = '7.0'
  s.authors = { 'xiaozhuzhu101127' => '36136055@qq.com' }

  s.source       = { :git => 'https://github.com/xiaozhuzhu101127/vortex.git', :tag => '1.0.1' }



  s.source_files  = "vortex/*"


  s.resources = "vortex/*.png"
  s.framework  = 'UIKit'
  s.requires_arc = true

  s.dependency 'Alamofire'
  s.dependency 'SwiftyJSON'

end