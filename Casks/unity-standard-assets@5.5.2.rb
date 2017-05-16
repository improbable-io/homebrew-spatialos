cask 'unity-standard-assets@5.5.2' do
  version '5.5.2f1,3829d7f588f3'
  sha256 'ec50a31c7a33c784c3ef0004c23fa09182ae02b29acd93270dd5ae51fac7ca94'

  url "http://netstorage.unity3d.com/unity/#{version.after_comma}/MacStandardAssetsInstaller/StandardAssets-#{version.before_comma}.pkg"
  name 'Unity Standard Assets'
  homepage 'https://unity3d.com/unity'

  depends_on cask: 'unity@5.5.2'

  conflicts_with cask: 'unity-standard-assets', because: 'Both install to the same place. The package from caskroom is always "latest version", whereas the one from improbable-io/spatialos tap is a particular version. There are no other differences.'

  pkg "StandardAssets-#{version.before_comma}.pkg"

  uninstall quit:    'com.unity3d.UnityEditor5.x',
            pkgutil: 'com.unity3d.StandardAssets'
end
