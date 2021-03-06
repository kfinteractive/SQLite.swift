Pod::Spec.new do |s|
  s.name             = "SQLite.swift"
  s.version          = "0.11.0"
  s.summary          = "A type-safe, Swift-language layer over SQLite3 for iOS and OS X."

  s.description      = <<-DESC
    SQLite.swift provides compile-time confidence in SQL statement syntax and
    intent.
                       DESC

  s.homepage         = "https://github.com/kfinteractive/SQLite.swift"
  s.license          = 'MIT'
  s.author           = { "Stephen Celis" => "stephen@stephencelis.com" }
  s.source           = { :git => "https://github.com/kfinteractive/SQLite.swift.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/stephencelis'

  s.module_name      = 'SQLite'
  s.ios.deployment_target = "9.0"
  s.tvos.deployment_target = "9.0"
  s.osx.deployment_target = "10.11"
  s.watchos.deployment_target = "2.0"
  s.pod_target_xcconfig = {
    'SWIFT_VERSION' => '3.0',
  }

  s.source_files = 'SQLite/**/*.{c,h,m,swift}'
  s.private_header_files = 'SQLite/Core/fts3_tokenizer.h'

  s.library = 'sqlite3'
  s.preserve_paths = 'CocoaPods/**/*'
  s.pod_target_xcconfig = {
    'SWIFT_INCLUDE_PATHS[sdk=macosx*]'             => '$(SRCROOT)/SQLite.swift/CocoaPods/macosx',
    'SWIFT_INCLUDE_PATHS[sdk=macosx10.11]'         => '$(SRCROOT)/SQLite.swift/CocoaPods/macosx-10.11',
    'SWIFT_INCLUDE_PATHS[sdk=macosx10.12]'         => '$(SRCROOT)/SQLite.swift/CocoaPods/macosx-10.12',
    'SWIFT_INCLUDE_PATHS[sdk=iphoneos*]'           => '$(SRCROOT)/SQLite.swift/CocoaPods/iphoneos',
    'SWIFT_INCLUDE_PATHS[sdk=iphoneos10.0]'        => '$(SRCROOT)/SQLite.swift/CocoaPods/iphoneos-10.0',
    'SWIFT_INCLUDE_PATHS[sdk=iphonesimulator*]'    => '$(SRCROOT)/SQLite.swift/CocoaPods/iphonesimulator',
    'SWIFT_INCLUDE_PATHS[sdk=iphonesimulator10.0]' => '$(SRCROOT)/SQLite.swift/CocoaPods/iphonesimulator-10.0',
    'SWIFT_INCLUDE_PATHS[sdk=appletvos*]'          => '$(SRCROOT)/SQLite.swift/CocoaPods/appletvos',
    'SWIFT_INCLUDE_PATHS[sdk=appletvsimulator*]'   => '$(SRCROOT)/SQLite.swift/CocoaPods/appletvsimulator',
    'SWIFT_INCLUDE_PATHS[sdk=watchos*]'            => '$(SRCROOT)/SQLite.swift/CocoaPods/watchos',
    'SWIFT_INCLUDE_PATHS[sdk=watchsimulator*]'     => '$(SRCROOT)/SQLite.swift/CocoaPods/watchsimulator'
  }
end
