cask 'unity-ios-support-for-editor@5.5.2' do
  version '5.5.2f1,3829d7f588f3'
  sha256 'bad75ba7392a981a2c01136b74889e306004a2c52e678528bd7e4b4d05e086c1'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity iOS Build Support'
  homepage 'https://unity3d.com/unity/'

  conflicts_with: 'unity-ios-support-for-editor', because: 'Both install to the same place. The package from caskroom is always "latest version", whereas the one from improbable-io/spatialos tap is a particular version. There are no other differences.'

  depends_on cask: 'unity@5.5.2'

  pkg "UnitySetup-iOS-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.iOSSupport'
end
