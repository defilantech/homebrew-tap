class Socair < Formula
  desc "Signed assurance attestations for open-weight AI models"
  homepage "https://socair.ai"
  version "0.1.0-rc.5"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/defilantech/socair/releases/download/v0.1.0-rc.5/socair_0.1.0-rc.5_darwin_arm64"
      sha256 "14936686e914811a8b5d36881ed9eca9c80549a75cbccbd097485245c87cde9b"
    end
    on_intel do
      url "https://github.com/defilantech/socair/releases/download/v0.1.0-rc.5/socair_0.1.0-rc.5_darwin_amd64"
      sha256 "291921dab20785b8fe4cdbeb54163a2ea027a47915956c9634bcd842895ec2d9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/defilantech/socair/releases/download/v0.1.0-rc.5/socair_0.1.0-rc.5_linux_arm64"
      sha256 "8f2abd62011f6cbfac41ec5de2e08b584a8759c4742a328476a505e1e90b8309"
    end
    on_intel do
      url "https://github.com/defilantech/socair/releases/download/v0.1.0-rc.5/socair_0.1.0-rc.5_linux_amd64"
      sha256 "b5e47b9f4e4234325d887e241169b3e8e7f36d91f8702f660f53b60e17fa9d8a"
    end
  end

  def install
    bin.install Dir["socair_*"].first => "socair"
  end

  test do
    assert_equal "socair #{version}", shell_output("#{bin}/socair version").strip
  end
end
