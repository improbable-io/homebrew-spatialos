cask 'mono-mdk@4.4.2' do
  version '4.4.2.11'
  sha256 :no_check # required as upstream package is updated in-place

  url "https://download.mono-project.com/archive/#{version.sub(%r{\.[^.]*$}, '')}/macos-10-universal/MonoFramework-MDK-#{version}.macos10.xamarin.universal.pkg"
  name 'Mono'
  homepage 'http://mono-project.com/'
  license :oss

  conflicts_with cask: 'mono-mdk', because: 'Both install to the same place. The package from caskroom is always "latest version", whereas the one from improbable-io/spatialos tap is a particular version. There are no other differences.'

  pkg "MonoFramework-MDK-#{version}.macos10.xamarin.universal.pkg"

  uninstall pkgutil: 'com.xamarin.mono-*'
end
