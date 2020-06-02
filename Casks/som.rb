cask 'som' do

    name 'Screencast-O-Matic'
    # Not yet sure if mac version is 'versioned' (windows IIUC is)... will find out with next release
    version '2.0'
    sha256 '75fbb7076faa74a9eeb63f9e2e849e1711b9252448fed952c7e47a57b4f211e9'

    url "https://files2.screencast-o-matic.com/install/InstallScreencastOMatic-#{version}.dmg"
    homepage 'https://screencast-o-matic.com'

    auto_updates true

    app 'Screencast-O-Matic v2.0.app'

    appcast 'https://screencast-o-matic.com/release-notes'
    # blog https://screencast-o-matic.com/blog/

end
