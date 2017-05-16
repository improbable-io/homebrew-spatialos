cask 'unity-standard-assets@5.6.0' do
  version '5.6.0f3,497a0f351392'
  sha256 '1ae038287257fd969b49d4d1f4906367aad05224cda71d1fd322485ca0ad5fe6'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacStandardAssetsInstaller/StandardAssets-#{version.before_comma}.pkg"
  name 'Unity Standard Assets'
  homepage 'https://unity3d.com/unity'

  conflicts_with cask: 'unity-standard-assets'

  depends_on cask: 'unity@5.6.0'

  pkg "StandardAssets-#{version.before_comma}.pkg"

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            pkgutil: 'com.unity3d.StandardAssets'
end
