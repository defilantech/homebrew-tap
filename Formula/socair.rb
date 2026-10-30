class Socair < Formula
  desc "Signed assurance attestations for open-weight AI models"
  homepage "https://socair.ai"
  version "0.1.0-rc.7"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/defilantech/socair/releases/download/v0.1.0-rc.7/socair_0.1.0-rc.7_darwin_arm64"
      sha256 "0a7f9039473d9bdae7e62e2d596ca795849c0e7bda46fc6ebebd25ec5ac193fa"
    end
    on_intel do
      url "https://github.com/defilantech/socair/releases/download/v0.1.0-rc.7/socair_0.1.0-rc.7_darwin_amd64"
      sha256 "8b82c4cb8f1f7f7583344cdebf0d0d6ddab65c8798eedaa4b0bd82bd4ccff25d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/defilantech/socair/releases/download/v0.1.0-rc.7/socair_0.1.0-rc.7_linux_arm64"
      sha256 "92524aabf64dc33b3de2c20d90204467a93f9ae758664496858292d7e946986d"
    end
    on_intel do
      url "https://github.com/defilantech/socair/releases/download/v0.1.0-rc.7/socair_0.1.0-rc.7_linux_amd64"
      sha256 "49bf89246a03e2a57c362501f624d16d35af4797c7aec56ce90422358103e497"
    end
  end

  def install
    bin.install Dir["socair_*"].first => "socair"
  end

  test do
    assert_equal "socair #{version}", shell_output("#{bin}/socair version").strip
  end
end
