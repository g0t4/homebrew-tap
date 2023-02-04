cask 'sony-imaging-edge-webcam' do
  name 'Sony Imaging Edge Webcam'
  desc 'webcam driver to remotely access sony cameras'

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
  license 'https://support.d-imaging.sony.co.jp/app/webcam/en/instruction/'

  # TODO: UNSURE # auto_updates true

  # TODO: app 'Screencast-O-Matic v2.0.app'

  appcast 'https://screencast-o-matic.com/release-notes'

  # formula cookbook: https://docs.brew.sh/Formula-Cookbook
end
