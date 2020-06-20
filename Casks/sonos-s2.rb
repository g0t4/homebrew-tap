cask 'sonos-s2' do
    version '12.0'
    sha256 '7dcab807a75f9faef5941f96eff3e823771187e9f6fea3892d2674f192c0a02f'
    # 7dcab807a75f9faef5941f96eff3e823771187e9f6fea3892d2674f192c0a02f  SonosDesktopController120.dmg

    # download page: https://support.sonos.com/s/downloads?language=en_US
    url "https://update-software.sonos.com/software/mac/mdcr/SonosDesktopController#{version.no_dots}.dmg"

    name 'Sonos S2'
    homepage 'https://support.sonos.com/s/sonos-s2-overview?language=en_US'
    # Sonos S2 compatibility: https://support.sonos.com/s/article/4786?language=en_US

    auto_updates true

    app 'Sonos.app'

    # this is the release notes page (can see latest release here too)
    appcast 'https://support.sonos.com/s/article/3521'

    zap trash: [
         '~/Library/Application Support/SonosV2',
         '~/Library/Application Support/com.sonos.macController2'
    ]

end
