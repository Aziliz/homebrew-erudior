cask "erudior" do
  version :latest
  sha256 :no_check

  url "https://github.com/Aziliz/examiner/releases/latest/download/Erudior-macOS-universal.dmg",
      verified: "github.com/Aziliz/examiner/"
  name "Erudior"
  desc "Free courses, practice exams and homeschool records"
  homepage "https://app.erudior.com/"

  depends_on macos: ">= :catalina"

  app "Erudior.app"

  # Erudior isn't notarized by Apple yet; without this, macOS refuses to open it the first time.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Erudior.app"]
  end

  zap trash: [
    "~/Library/Application Support/com.erudior.app",
    "~/Library/Caches/com.erudior.app",
    "~/Library/WebKit/com.erudior.app",
  ]
end
