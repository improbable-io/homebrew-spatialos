cask 'unity-windows-support-for-editor@5.5.2' do
  version '5.5.2f1,3829d7f588f3'
  sha256 '950c63d769b673ffd4f22613f77c19efe127cfd2cb6a7495382ce3a062705787'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacEditorTargetInstaller/UnitySetup-Windows-Support-for-Editor-#{version.before_comma}.pkg"
  name 'Unity Windows Build Support'
  homepage 'https://unity3d.com/unity/'

  conflicts_with cask: 'unity-windows-support-for-editor'

  depends_on cask: 'unity@5.5.2'

  pkg "UnitySetup-Windows-Support-for-Editor-#{version.before_comma}.pkg"

  uninstall pkgutil: 'com.unity3d.WindowsStandaloneSupport'
end
