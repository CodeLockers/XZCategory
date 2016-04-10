Pod::Spec.new do |s|
  s.name         = "XZCategory"
  s.version      = "0.0.3"
  s.summary      = "A group of categories that commonly used for IOS."
  s.homepage     = "https://github.com/CodeLockers/XZCategory"
  s.license      = "MIT"
  s.author       = {"codeLocker" => "codeLockers@outlook.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/CodeLockers/XZCategory.git", :tag => "0.0.3"}
  s.source_files  = "XZCategory","XZCategory/Category/**/*.{h,m}"
end
