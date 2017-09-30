
Pod::Spec.new do |s|

  s.name         = "JWCountButton"
  s.version      = "0.0.1"
  s.summary      = "一款用于购物车，数量的加减按钮"

  s.homepage     = "https://github.com/junwangInChina/JWCountButton"

  s.license      = { :type => 'MIT', :file => 'LICENSE' }

  s.author       = { "wangjun" => "github_work@163.com" }

  s.platform     = :ios, '7.0'
  s.source       = { :git => "https://github.com/junwangInChina/JWCountButton.git", :tag => "0.0.1" }
  s.frameworks   =  'UIKit'

  s.source_files = "JWCountButton/JWCountButton/JWCountButton/**/*.{h,m}"

  s.requires_arc = true

end
