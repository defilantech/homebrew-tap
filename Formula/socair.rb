class Socair < Formula
  desc "Signed assurance attestations for open-weight AI models"
  homepage "https://socair.ai"
  version "0.1.0-rc.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/defilantech/socair/releases/download/v0.1.0-rc.4/socair_0.1.0-rc.4_darwin_arm64"
      sha256 "27bc2a7a6f71fdda74d3c95dd748aef16179d200d30c27e0bf16003000f5cb79"
    end
    on_intel do
      url "https://github.com/defilantech/socair/releases/download/v0.1.0-rc.4/socair_0.1.0-rc.4_darwin_amd64"
      sha256 "35d1e82d526cfac3ba12201c07f33cf5bb10df47abd1617f434559be32066f1c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/defilantech/socair/releases/download/v0.1.0-rc.4/socair_0.1.0-rc.4_linux_arm64"
      sha256 "f0505c26c7efc0c5a93a3b85e2a519576bd7236ae6faf234dfab38f1b1ba8e92"
    end
    on_intel do
      url "https://github.com/defilantech/socair/releases/download/v0.1.0-rc.4/socair_0.1.0-rc.4_linux_amd64"
      sha256 "cf4870928c968d5b6f042d63bc43908011172fc2512d2a9d8e2918c9d1b02e3b"
    end
  end

  def install
    bin.install Dir["socair_*"].first => "socair"
  end

  test do
    assert_equal "socair #{version}", shell_output("#{bin}/socair version").strip
  end
end
