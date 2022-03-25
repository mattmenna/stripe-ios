Pod::Spec.new do |s|
    s.name                           = 'StripeConnections'
  
    # Do not update s.version directly.
    # Instead, update the VERSION file and run ./ci_scripts/update_version.sh
    s.version                        = '21.13.0'
  
    s.summary                        = 'Securely connect financial accounts to Stripe\'s merchant account.'
    s.license                        = { :type => 'MIT', :file => 'LICENSE' }
    s.homepage                       = 'https://stripe.com/docs/mobile/ios'
    s.authors                        = { 'Stripe' => 'support+github@stripe.com' }
    s.source                         = { :git => 'https://github.com/stripe/stripe-ios.git', :tag => "#{s.version}" }
    s.frameworks                     = 'Foundation', 'WebKit', 'UIKit'
    s.requires_arc                   = true
    s.platform                       = :ios
    s.ios.deployment_target          = '12.0'
    s.swift_version		               = '5.0'
    s.weak_framework = 'SwiftUI'
    s.dependency   'StripeCore', "#{s.version}"
    s.dependency   'StripeUICore', "#{s.version}"
    s.source_files                   = 'StripeConnections/StripeConnections/**/*.swift'
    s.ios.resource_bundle            = { 'StripeConnections' => 'StripeConnections/StripeConnections/Resources/**/*.{lproj,xcassets,png}' }
end