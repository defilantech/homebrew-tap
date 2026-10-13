class Llmkube < Formula
  desc "GPU-accelerated Kubernetes operator for local LLM inference"
  homepage "https://github.com/defilantech/LLMKube"
  version "0.10.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.3/LLMKube_0.10.3_darwin_arm64.tar.gz"
      sha256 "7c40ece2c1c01365adc7e6f512f18df124d887505d61a5ec368034ff7e8adb9e"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.3/LLMKube_0.10.3_darwin_amd64.tar.gz"
      sha256 "229f73bbd8020e75cc8331cbf2e18d098b8c8b9a8fed72da947035318bf735c0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.3/LLMKube_0.10.3_linux_arm64.tar.gz"
      sha256 "608ae5a70ef2025f3579c5eb4934641e8e352d11ba694921c22e4c8562e247df"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.3/LLMKube_0.10.3_linux_amd64.tar.gz"
      sha256 "a9a5bd7f11c99121b1fefee9755c9caa80e272837b34e8992e627867da69367f"
    end
  end

  def install
    bin.install "llmkube"
  end

  test do
    assert_match "llmkube", shell_output("#{bin}/llmkube version 2>&1")
  end
end
