Pod::Spec.new do |s|
  s.name         = "AstraeaVendor"
  s.version      = "0.0.5"
  s.summary      = "Astraea vendor for astraea sdk"
  s.description  = <<-DESC
  Astraea vendor for astraea swift sdk
                   DESC
  s.homepage     = "http://www.5ikankan.com/"
  s.license      = "MIT"
  s.author             = { "wenzhaot" => "tanwenzhao1025@gmail.com" }
  s.source       = { :git => "https://github.com/wenzhaot/AstraeaVendor.git", :tag => "#{s.version}" }
  s.ios.deployment_target = '8.0'

  s.subspec 'RongIM' do |ss|
    ss.ios.vendored_frameworks = [
      'IMKit/RongIMKit.framework',
      'IMLib/RongIMLib.framework'
    ]
    ss.ios.vendored_libraries = [
      'IMLib/libopencore-amrnb.a'
    ]
    ss.resources = ['IMKit/*.{plist,bundle,lproj}', 'IMLib/*.{plist}']
    ss.libraries = 'sqlite3.0', 'c++', 'z', 'c++abi', 'stdc++', 'xml2'

    ss.pod_target_xcconfig = {
      'FRAMEWORK_SEARCH_PATHS' => '$(PODS_ROOT)/AstraeaVendor/IMKit $(PODS_ROOT)/AstraeaVendor/IMLib',
      'LIBRARY_SEARCH_PATHS' => '$(PODS_ROOT)/AstraeaVendor/IMLib'
    }
  end

  s.subspec 'UMeng' do |ss|
    ss.vendored_frameworks = [
      'UMeng/UMMobClick.framework'
    ]
    ss.libraries = 'sqlite3.0', 'z'
    ss.frameworks = 'CoreTelephony'
    ss.xcconfig = {
      'LIBRARY_SEARCH_PATHS' => '$(PODS_ROOT)/AstraeaVendor/UMeng'
    }
  end

  s.subspec 'Agora' do |ss|
    ss.vendored_frameworks = [
      'Agora/AgoraRtcEngineKit.framework',
      'Agora/videoprp.framework'
    ]
    ss.ios.vendored_libraries = [
      'Agora/libagora_fat.a'
    ]
    ss.source_files = 'Agora/*.h'
    ss.xcconfig = {
      'OTHER_LDFLAGS' => '-ObjC'
    }
    ss.pod_target_xcconfig = {
      'FRAMEWORK_SEARCH_PATHS' => '$(PODS_ROOT)/AstraeaVendor/Agora',
      'LIBRARY_SEARCH_PATHS' => '$(PODS_ROOT)/AstraeaVendor/Agora',
      'HEADER_SEARCH_PATHS' => '$(PODS_ROOT)/AstraeaVendor/Agora'
    }
    ss.libraries = 'c++', 'resolv'
    ss.frameworks = 'SystemConfiguration', 'CoreTelephony', 'CoreMedia', 'AudioToolbox', 'AVFoundation', 'VideoToolbox'
  end

end
