cask 'sonos-controller' do
    # LEGACY NOW
    # rename ? https://docs.brew.sh/Rename-A-Formula
    version '10.6.1'
    sha256 '87201066dbd93e9ea806e1faa85e861dd8bb44cf3a4c98b352f37ec7fc4803d3'
    
    url "https://update.sonos.com/software/mac/mdcr/SonosDesktopController#{version.no_dots}.dmg"
    
    name 'Sonos Controller'
    homepage 'https://www.sonos.com/en-us/controller-app'

    auto_updates true    
    
    app 'Sonos.app'

    # this is the release notes page (can see latest release here too)
    appcast 'https://support.sonos.com/s/article/3521'

    zap trash: '~/Library/Application Support/Sonos'
end
