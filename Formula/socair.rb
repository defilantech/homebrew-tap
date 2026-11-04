class Socair < Formula
  desc "Signed assurance attestations for open-weight AI models"
  homepage "https://socair.ai"
  version "0.1.0-rc.9"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/defilantech/socair/releases/download/v0.1.0-rc.9/socair_0.1.0-rc.9_darwin_arm64"
      sha256 "6f9b3bb71ee12d35dcba9c44d2f65829fb24d95d7c6af0942260953c95ede570"
    end
    on_intel do
      url "https://github.com/defilantech/socair/releases/download/v0.1.0-rc.9/socair_0.1.0-rc.9_darwin_amd64"
      sha256 "7702a6b40a92a4452f3a277100051ce912ab98f6e3f305058c5658bfea20f1cc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/defilantech/socair/releases/download/v0.1.0-rc.9/socair_0.1.0-rc.9_linux_arm64"
      sha256 "907640f7e111a0dc8626bd27179ce996c51b4a3c0f1bfb5a6538dc4124050a54"
    end
    on_intel do
      url "https://github.com/defilantech/socair/releases/download/v0.1.0-rc.9/socair_0.1.0-rc.9_linux_amd64"
      sha256 "7a9102ae2b9f8116a5b1bf4f491c9b5ba01ccf2c7beda89917d40cef59b8f756"
    end
  end

  def install
    bin.install Dir["socair_*"].first => "socair"
  end

  test do
    assert_equal "socair #{version}", shell_output("#{bin}/socair version").strip
  end
end
