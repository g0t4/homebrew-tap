cask 'sonos-s1' do
    version '11.2'
    sha256 '1a98300bd16bb2f727eb1921db80777cc23178a483d56b44a9bb5d95d9ea6602'
    # 1a98300bd16bb2f727eb1921db80777cc23178a483d56b44a9bb5d95d9ea6602  SonosDesktopController112.dmg

    # download page: https://support.sonos.com/s/downloads?language=en_US
    url "https://update-software.sonos.com/software/mac/mdcr/SonosDesktopController#{version.no_dots}.dmg"

    name 'Sonos S1 Controller'
    homepage 'https://support.sonos.com/s/downloads'

    auto_updates true

    app 'Sonos S1 Controller.app'

    # this is the release notes page (can see latest release here too)
    # appcast 'https://support.sonos.com/s/article/3521'

    zap trash: [
         '~/Library/Application Support/Sonos',
         '~/Library/Application Support/com.sonos.macController'
    ]
end
