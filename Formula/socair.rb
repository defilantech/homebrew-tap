class Socair < Formula
  desc "Signed assurance attestations for open-weight AI models"
  homepage "https://socair.ai"
  version "0.1.0-rc.6"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/defilantech/socair/releases/download/v0.1.0-rc.6/socair_0.1.0-rc.6_darwin_arm64"
      sha256 "1486a667ef5f3da4c8c1fca2632a7df6015a6af78892c983c2b446dc208fdb35"
    end
    on_intel do
      url "https://github.com/defilantech/socair/releases/download/v0.1.0-rc.6/socair_0.1.0-rc.6_darwin_amd64"
      sha256 "aadfbe3c5dc84f93bba151822d84a921a450c150c19b2a94cfcc389299fabe8c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/defilantech/socair/releases/download/v0.1.0-rc.6/socair_0.1.0-rc.6_linux_arm64"
      sha256 "9ba6e5541548316994274f0712148b3be53c7f52df9bd03bc2276ad75b22c1f9"
    end
    on_intel do
      url "https://github.com/defilantech/socair/releases/download/v0.1.0-rc.6/socair_0.1.0-rc.6_linux_amd64"
      sha256 "dfae66cc0b5c76fb13bcf59fe62d5c2b39438d14c09ac21d4bc7c9cd72c0491f"
    end
  end

  def install
    bin.install Dir["socair_*"].first => "socair"
  end

  test do
    assert_equal "socair #{version}", shell_output("#{bin}/socair version").strip
  end
end
