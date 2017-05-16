cask 'unity-standard-assets@5.5.2' do
  version '5.5.2f1,3829d7f588f3'
  sha256 'ec50a31c7a33c784c3ef0004c23fa09182ae02b29acd93270dd5ae51fac7ca94'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacStandardAssetsInstaller/StandardAssets-#{version.before_comma}.pkg"
  name 'Unity Standard Assets'
  homepage 'https://unity3d.com/unity'

  conflicts_with cask: 'unity-standard-assets'

  depends_on cask: 'unity@5.5.2'

  pkg "StandardAssets-#{version.before_comma}.pkg"

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            pkgutil: 'com.unity3d.StandardAssets'
end
