class Socair < Formula
  desc "Signed assurance attestations for open-weight AI models"
  homepage "https://socair.ai"
  version "0.1.0-rc.8"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/defilantech/socair/releases/download/v0.1.0-rc.8/socair_0.1.0-rc.8_darwin_arm64"
      sha256 "43a4a406d95ecf5b14c3405faae1ce692da531020335744e1d23fda2b4fed214"
    end
    on_intel do
      url "https://github.com/defilantech/socair/releases/download/v0.1.0-rc.8/socair_0.1.0-rc.8_darwin_amd64"
      sha256 "8048c0e09519b52e49a3e9d35660f5d5c5f19ccbc78dd280aae70ebf824728e6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/defilantech/socair/releases/download/v0.1.0-rc.8/socair_0.1.0-rc.8_linux_arm64"
      sha256 "51fd1791168307d0fa5e55247a7bd5c375dc7a8c80b420abbf66a764eca5a41d"
    end
    on_intel do
      url "https://github.com/defilantech/socair/releases/download/v0.1.0-rc.8/socair_0.1.0-rc.8_linux_amd64"
      sha256 "214dc39afafd6ed1d3a3b0096e366ec140a229f1b062e94e5d54d2b595c80cac"
    end
  end

  def install
    bin.install Dir["socair_*"].first => "socair"
  end

  test do
    assert_equal "socair #{version}", shell_output("#{bin}/socair version").strip
  end
end
