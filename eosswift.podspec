Pod::Spec.new do |spec|
  spec.name                   = 'eosswift'
  spec.version                = '2.0.0'
  spec.ios.deployment_target  = '11.0'
  spec.swift_version          = '5.0'
  spec.license                = { :type => 'APACHE-2.0' }
  spec.homepage               = 'https://github.com/memtrip/eos-swift'
  spec.authors                = { 'Samuel Kirton' => 'sam@memtrip.com' }
  spec.summary                = 'EOS libraries for swift, designed primarily for iOS development.'
  spec.source                 = { :git => 'https://github.com/memtrip/eos-swift.git', :tag => 'v2.0.0' }
  spec.source_files           = 'eosswift/**/*.{swift,h,c}'
  spec.pod_target_xcconfig    = {'SWIFT_INCLUDE_PATHS' => '$(SRCROOT)/eosswift/eosswift/microecc/**', 'LIBRARY_SEARCH_PATHS' => '$(SRCROOT)/eosswift/eosswift/'}
  spec.preserve_paths         = 'eosswift/microecc/module.modulemap'
  spec.public_header_files    = 'eosswift/*.h'
  spec.requires_arc           = true
  spec.dependency               'RxSwift','~> 5.0'
  spec.dependency               'RxCocoa', '~> 5.0'
  spec.dependency               'BigInt', '~> 5.0.0'
end
