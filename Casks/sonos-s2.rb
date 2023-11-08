cask 'sonos-s2' do
    version :latest # I could get a version from the url but this app is auto update so why bother?
    sha256 :no_check
    # 7dcab807a75f9faef5941f96eff3e823771187e9f6fea3892d2674f192c0a02f  SonosDesktopController120.dmg

    # download page: https://support.sonos.com/s/downloads?language=en_US
    # - macOS S2 app link: https://www.sonos.com/redir/controller_software_mac2 # as of 2023-03-11
    #    FYI this link redirects to the current version, i.e. right now:
    #      https://update-software.sonos.com/software/veqbtaxi/Sonos_71.1-38240.dmg
    #      I last had version "12.0" and now it's "71.1"!? clearly this version scheme is radical and irrelevant IMO given that the app auto-updates so to install it I just need to grab latest version and then it will update itself thereafter.
    #         LOL ok so the version is marked as 15.2.1 while the file shows 71.1?! oh sonos...
    #           release notes: https://support.sonos.com/en/article/release-notes-for-sonos-s2
    url "https://www.sonos.com/en-us/redir/controller_software_mac2"

    name 'Sonos S2'
    homepage 'https://support.sonos.com/s/sonos-s2-overview?language=en_US'
    # Sonos S2 compatibility: https://support.sonos.com/s/article/4786?language=en_US

    auto_updates true

    app 'Sonos.app'

    # this is the release notes page (can see latest release here too)
    # appcast 'https://support.sonos.com/en/article/release-notes-for-sonos-s2'

    zap trash: [
         '~/Library/Application Support/SonosV2',
         '~/Library/Application Support/com.sonos.macController2'
    ]

end
