cask 'freemind' do
    version '1.1.0_Beta2'
    # to get sha256, `wget <url below>` 
      # then `shasum FreeMind_1.1.0_Beta_2.dmg` 
        # then, verify output matches source forge download page sha1 value 
            # (open url below in browser to find it - under "i" information icon on right side of link)
        # ensure you use HTTPS to get sha1!!
      # if matches, then `shasum -a 256 FreeMind_1.1.0_Beta_2.dmg` to calculate the sha256 value and copy in here:
    sha256 '85106da4cf36faae0b50b153f11ac4f65e666a4fbb78a9f03d8e671515be625d'
    url "https://downloads.sourceforge.net/project/freemind/freemind-unstable/1.1.0_Beta2/FreeMind_1.1.0_Beta_2.dmg"

    # remainder copied from "stable" freemind formula: https://github.com/Homebrew/homebrew-cask/blob/master/Casks/freemind.rb
    # url "https://downloads.sourceforge.net/freemind/freemind/#{version}/FreeMind_#{version}.dmg"
    appcast 'https://sourceforge.net/projects/freemind/rss?path=/freemind'
    name 'FreeMind'
    homepage 'http://freemind.sourceforge.net/wiki/index.php/Main_Page'
    app 'FreeMind.app'
end
