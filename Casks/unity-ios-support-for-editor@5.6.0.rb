cask 'unity-ios-support-for-editor@5.6.0' do
  version '5.6.0f3,497a0f351392'
  sha256 'd775effce14b012c8e4302b6c28f84cb13b1880052853780ef0d48e019cbc6a9'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity iOS Build Support'
  homepage 'https://unity3d.com/unity/'

  conflicts_with cask: 'unity-ios-support-for-editor'

  depends_on cask: 'unity@5.6.0'

  pkg "UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.iOSSupport'
end
