cask 'unity-windows-support-for-editor@5.6.0' do
  version '5.6.0f3,497a0f351392'
  sha256 '5958941e2b13fa96f42e28c2413f9b2b709ea1db8a79355652ee62c30de82713'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Windows-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity Windows Build Support'
  homepage 'https://unity3d.com/unity/'

  conflicts_with cask: 'unity-windows-support-for-editor', because: 'Both install to the same place. The package from caskroom is always "latest version", whereas the one from improbable-io/spatialos tap is a particular version. There are no other differences.'

  depends_on cask: 'unity@5.6.0'

  pkg "UnitySetup-Windows-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.WindowsStandaloneSupport'
end
