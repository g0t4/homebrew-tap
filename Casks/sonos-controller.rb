cask 'sonos-controller' do
    version '8.6'
    sha256 '5485547c0c8c520e8562c151be9bc1b73b076a977cf4d6ed2bf7926a9bed7746'
    
    url "https://update.sonos.com/software/mac/mdcr/SonosDesktopController#{version.no_dots}.dmg"
    name 'Sonos Controller'
    homepage 'https://www.sonos.com/en-us/controller-app'

    auto_updates true    
    
    app 'Sonos.app'

    # this is the release notes page (can see latest release here too)
    appcast 'https://www.sonos.com/en-us/software/release/8-6'

    zap trash: '~/Library/Application Support/Sonos'
end
