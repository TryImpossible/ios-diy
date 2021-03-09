# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

#def schema_post_install(installer)
#  installer.pods_project.targets.each do |target|
#    target.build_configurations.each do |config|
#      if config.name == 'DevDebug'
#        config.build_settings['GCC_PREPROCESSOR_DEFINITIONS'] ||= ['$(inherited)','DEBUG=1']
#      elsif config.name == 'ProdDebug'
#        config.build_settings['GCC_PREPROCESSOR_DEFINITIONS'] ||= ['$(inherited)','DEBUG=1']
#      end
#    end
#  end
#end

project 'app', 'DevRelease' => :release, 'ProdRelease' => :release, 'DevDebug' => :debug, 'ProdDebug' => :debug

target 'app' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for app
    
#  post_install do |installer|
#    schema_post_install(installer)
#  end

end


target 'multichannel' do
  pod 'DoraemonKit/Core', '~> 3.0.4', :configurations => ['Debug', 'DevDebug', 'ProdDebug'] #必选
  
end
