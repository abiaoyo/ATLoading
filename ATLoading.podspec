Pod::Spec.new do |s|
  s.name             = 'ATLoading'
  s.version          = '1.0'
  s.summary          = 'ATLoading 用于处理视图加载状态(加载，结束，空，错误，无网络)，便于使用和自定义扩展'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/abiaoyo/ATLoading'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '347991555@qq.com' => '347991555@qq.com' }
  s.source           = { :git => 'https://github.com/abiaoyo/ATLoading.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'

  s.source_files = 'ATLoading/**/*'
end
