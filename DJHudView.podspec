Pod::Spec.new do |s|
s.name = 'DJHudView'
s.version = '1.0.0'
s.license = 'MIT'
s.summary = 'A sample of hudView.'
s.homepage = 'https://github.com/emptyDexJay/DJHudView'
s.authors = { 'DexJay' => '1224469004@qq.com' }
s.source = { :git => "https://github.com/emptyDexJay/DJHudView.git", :tag => "1.0.0"}
s.requires_arc = true
s.ios.deployment_target = '8.0'
s.source_files = "DFTextStyle", "*.{h,m}"
end