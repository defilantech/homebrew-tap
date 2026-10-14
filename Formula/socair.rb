class Socair < Formula
  desc "Signed assurance attestations for open-weight AI models"
  homepage "https://socair.ai"
  version "0.1.0-rc.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/defilantech/socair/releases/download/v0.1.0-rc.3/socair_0.1.0-rc.3_darwin_arm64"
      sha256 "57049219f67e651790671e31f43bfe2d66209abdfd1594b3fc7a8d08c2aeaf6e"
    end
    on_intel do
      url "https://github.com/defilantech/socair/releases/download/v0.1.0-rc.3/socair_0.1.0-rc.3_darwin_amd64"
      sha256 "2ea05b9374759429b41b5824fd2e0c9e78ce4995d17b3c6f20854224d17b4f26"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/defilantech/socair/releases/download/v0.1.0-rc.3/socair_0.1.0-rc.3_linux_arm64"
      sha256 "5606bbde2ee3b7e95421eb12a7a50c00a9cfbb904aa822f9528d722479458971"
    end
    on_intel do
      url "https://github.com/defilantech/socair/releases/download/v0.1.0-rc.3/socair_0.1.0-rc.3_linux_amd64"
      sha256 "5c008f3529b8bbc1dd83a483723c4b9056332878719de4a66b56c40f2383e3b3"
    end
  end

  def install
    bin.install Dir["socair_*"].first => "socair"
  end

  test do
    assert_equal "socair #{version}", shell_output("#{bin}/socair version").strip
  end
end
