cask "noodle" do
  version "26.11.1"
  sha256 "44c69e16e11780df21f10e9dcbc33b205e95a0ab6e95fce4107e6ad58d57646c" # set by update-cask.sh

  url "https://github.com/ansumanshah/noodle/releases/download/v#{version}/Noodle-#{version}.dmg"
  name "Noodle"
  desc "Docker-compatible container runtime and local models for macOS"
  homepage "https://getnoodle.dev"

  depends_on arch: :arm64
  depends_on macos: ">= :tahoe"

  app "Noodle.app"
  binary "#{appdir}/Noodle.app/Contents/Helpers/noodle"

  uninstall quit: "dev.getnoodle.Noodle"

  zap trash: [
    "~/.noodle",
    "~/Library/Application Support/Noodle",
    "~/Library/LaunchAgents/dev.getnoodle.noodled.plist",
    "~/Library/LaunchAgents/dev.getnoodle.runners.plist",
    "~/Library/Preferences/dev.getnoodle.Noodle.plist",
  ]

  caveats <<~EOS
    Before removing Noodle, run `noodle uninstall` to stop the daemon and remove its
    login item. Add `--delete-data --yes` to also delete containers and images.
  EOS
end
