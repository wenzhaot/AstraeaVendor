Pod::Spec.new do |s|
  s.name         = "AstraeaVendor"
  s.version      = "0.0.2"
  s.summary      = "Astraea vendor for astraea sdk"
  s.description  = <<-DESC
  Astraea vendor for astraea swift sdk
                   DESC
  s.homepage     = "http://www.5ikankan.com/"
  s.license      = "MIT"
  s.author             = { "wenzhaot" => "tanwenzhao1025@gmail.com" }
  s.source       = { :git => "https://github.com/wenzhaot/AstraeaVendor.git", :tag => "#{s.version}" }
  s.ios.deployment_target = '8.0'

  s.subspec 'Rong' do |ss|
    ss.ios.vendored_frameworks = [
      'AstraeaSwift/Classes/Vendor/IMKit/RongIMKit.framework',
      'AstraeaSwift/Classes/Vendor/IMLib/RongIMLib.framework'
    ]
    ss.vendored_libraries = [
      'AstraeaSwift/Classes/Vendor/IMLib/libopencore-amrnb.a'
    ]
    ss.resources = ['AstraeaSwift/Classes/Vendor/IMKit/*.{plist,bundle,lproj}', 'AstraeaSwift/Classes/Vendor/IMLib/*.{plist}']
    ss.libraries = 'sqlite3.0', 'c++', 'z', 'c++abi', 'stdc++', 'xml2'
  end

  s.pod_target_xcconfig = {
    'FRAMEWORK_SEARCH_PATHS' => '$(inherited) $(PODS_ROOT)/RongIMKit'
  }

end
