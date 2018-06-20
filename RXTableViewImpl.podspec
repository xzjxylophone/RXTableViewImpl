



Pod::Spec.new do |s|
  s.name     = "RXTableViewImpl"
  s.version  = "0.1"
  s.license  = "MIT"
  s.summary  = "RXTableViewImpl is a UITableView Impl"
  s.homepage = "https://github.com/xzjxylophone/RXTableViewImpl"
  s.author   = { 'Rush.D.Xzj' => 'xzjxylophoe@gmail.com' }
  s.social_media_url = "http://weibo.com/xzjxylophone"
  s.source   = { :git => 'https://github.com/xzjxylophone/RXTableViewImpl.git', :tag => "v#{s.version}" }
  s.description = %{
       RXTableViewImpl is a UITableView Impl.
  }
  s.source_files = 'RXTableViewImpl/*.{h,m}'
  s.frameworks = 'Foundation', 'UIKit'
  s.requires_arc = true
  s.platform = :ios, '7.0'

end



