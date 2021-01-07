#
# Be sure to run `pod lib lint ZFAdSdk.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'ZFAdSdk'
    s.version          = '1.0.0'
    s.summary          = 'A short summary of ZFAdSdk.'

    # This description is used to generate tags and improve search results.
    #   * Think: What does it do? Why did you write it? What is the focus?
    #   * Try to keep it short, snappy and to the point.
    #   * Write the description between the DESC delimiters below.
    #   * Finally, don't worry about the indent, CocoaPods strips it!
    
    s.description      = 'A short description of ZFAdSdk.'

    s.homepage         = 'https://github.com/Havarry/ZFAdSdk'
    # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'Havarry' => '15622308894@163.com' }
    s.source           = { :git => 'https://github.com/Havarry/ZFAdSdk.git', :tag => s.version.to_s }
    # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

    s.ios.deployment_target = '9.0'
    s.static_framework = true
    
    s.subspec 'ZFCore' do |b|
        b.source_files = 'ZFAdSdk/Classes/**/*'
        b.dependency 'SVProgressHUD'
        b.dependency 'FFToast'
        b.frameworks = 'AdSupport','CoreData','SystemConfiguration','AVFoundation','CoreMedia'
    end
    
    s.subspec 'admob_sdk' do |admob|
        admob.dependency 'Google-Mobile-Ads-SDK','7.68.0'
        admob.pod_target_xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) ADMOB_ADS_ENABLED'}
    end
    
    s.subspec 'byte_dance_ads_sdk' do |byte_dance_ads_sdk|
        #     byte_dance_ads_sdk.source 'https://github.com/CocoaPods/Specs.git'
        byte_dance_ads_sdk.dependency 'Bytedance-UnionAD','3.3.6.2'
        byte_dance_ads_sdk.pod_target_xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) BYTE_DANCE_ADS_ENABLED'}
    end
    
    s.subspec 'gdt_ads_sdk' do |gdt_ad|
        gdt_ad.dependency 'GDTMobSDK','4.12.1'
        gdt_ad.pod_target_xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) GDT_ADS_ENABLED'}
    end
    
end
