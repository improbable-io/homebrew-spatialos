cask 'unity-linux-support-for-editor@5.5.2' do
  version '5.5.2f1,3829d7f588f3'
  sha256 '434f86ba6b6cb36da1f7bd1cfb51c7e57381a2a46f448e6ff1ca46d68a891110'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Linux-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity Linux Build Support'
  homepage 'https://unity3d.com/unity/'

  depends_on cask: 'unity@5.5.2'

  pkg "UnitySetup-Linux-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.LinuxStandaloneSupport'
end
