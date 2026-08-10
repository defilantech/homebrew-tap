class Llmkube < Formula
  desc "GPU-accelerated Kubernetes operator for local LLM inference"
  homepage "https://github.com/defilantech/LLMKube"
  version "0.9.16"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.16/LLMKube_0.9.16_darwin_arm64.tar.gz"
      sha256 "26bc62b8feea58a43d38848274c05c5c336c566482120a39ef1d13c7d1ecb87d"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.16/LLMKube_0.9.16_darwin_amd64.tar.gz"
      sha256 "b51879baa9952b3649750ad9a4bccc1e680d155c729451a157da4d6f2f749ce0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.16/LLMKube_0.9.16_linux_arm64.tar.gz"
      sha256 "71de690ab552067cd9dcb2d171bbd086acb6e8b04bc28351953182a5844adb50"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.16/LLMKube_0.9.16_linux_amd64.tar.gz"
      sha256 "dbf79221403c5a3fb935993c4cbc0a30e8012ee53c96789e403ded1c3c183057"
    end
  end

  def install
    bin.install "llmkube"
  end

  test do
    assert_match "llmkube", shell_output("#{bin}/llmkube version 2>&1")
  end
end
