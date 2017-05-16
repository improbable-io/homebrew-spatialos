cask 'unity-linux-support-for-editor@5.6.0' do
  version '5.6.0f3,497a0f351392'
  sha256 'bf8474c8ddb910a7b503bdf83e026039242becaff44b6e67b1b80a59a15e25d3'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Linux-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity Linux Build Support'
  homepage 'https://unity3d.com/unity/'

  conflicts_with cask: 'unity-linux-support-for-editor', because: 'Both install to the same place. The package from caskroom is always "latest version", whereas the one from improbable-io/spatialos tap is a particular version. There are no other differences.'

  depends_on cask: 'unity@5.6.0'

  pkg "UnitySetup-Linux-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.LinuxStandaloneSupport'
end
