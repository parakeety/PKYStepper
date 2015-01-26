Pod::Spec.new do |s|
  s.name         = "PKYStepper"
  s.version      = "0.0.1"
  s.summary      = "Customizable Stepper Control"
  s.description  = <<-DESC
                    A customizabel stepper control with stepper & label combined.
                   DESC
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "yohei okada" => "okada.yohei@gmail.com" }
  s.platform     = :ios
  s.ios.deployment_target = "6.0"
  s.source       = { :git => "https://github.com/parakeety/PKYStepper.git", :tag => '0.1.1' }
  s.source_files  = "PKYStepper/**/*.{h,m}"
  s.frameworks = "Foundation", "UIKit", "QuartzCore"
  s.requires_arc = true
end
