cask 'sony-imaging-edge-webcam' do
  name 'Sony Imaging Edge Webcam'
  desc 'device driver to remotely access compatible sony cameras. Test with QuickTime => File => New Movie Recording => check in dropdown of cameras for "Sony Imaging Edge"'

  # version only seems listed here:
  # - https://support.d-imaging.sony.co.jp/app/webcam/en/
  # - See "Updates" at bottom
  # - correlate version #s to file names
  #   - macOS: IEW110_ => v1.1.00
  #   - Windows: IEW112 => v1.1.02
  # - Likely can find version once installed too
  version '1.1.00'
  sha256 '4e89da0d96741b1f77fb8a4787747186d101782f337050871ca5600d76781dfa'

  # original url (not tied to current version):
  # curl -I https://support.d-imaging.sony.co.jp/disoft_DL/webcam/mac\?fm\=en
  url 'https://di.update.sony.net/NEX/gvKlzuWNlL/IEW110_2111a.dmg'
  homepage 'https://support.d-imaging.sony.co.jp/app/webcam/en/'

  # Install via embedded pkg (inside dmg)
  pkg "IEW_INST.pkg"

  # Uninstall
  #
  # - Can't call Uninstall.app b/c it was downloaded (would have to approve in Security)
  #   uninstall script: {
  #     executable: "Uninstall.app"
  #     executable: "Uninstall.app/Contents/MacOS/Application\ Stub"
  #   }
  #
  # - Instead, using pkgutil (seems to work)... found pkg ID via pkgutil --pkgs"
  uninstall pkgutil: 'com.sony.Webcam'

  auto_updates false # TODO find out... given its not an app but a virtual device I don't see how there would be any sort of update daemon or interface... might be one in "Imaging Edge" software which IIGC is a superset of this webcam device driver plus camera controls and more...?

  # appcast 'https://screencast-o-matic.com/release-notes'

  # formula cookbook: https://docs.brew.sh/Formula-Cookbook
  # cask cookbook: https://docs.brew.sh/Cask-Cookbook
  # example cask (dmg => pkg) https://github.com/Homebrew/homebrew-cask/commit/49b2fc64931a58c6e3b099bd05081abff1f2fbf2
end
