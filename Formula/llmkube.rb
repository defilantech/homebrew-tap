class Llmkube < Formula
  desc "GPU-accelerated Kubernetes operator for local LLM inference"
  homepage "https://github.com/defilantech/LLMKube"
  version "0.10.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.4/LLMKube_0.10.4_darwin_arm64.tar.gz"
      sha256 "9a277714849e0e839ab2fbc78b7a5e4ca68bf6d6bd681f0d8102089568ec2b21"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.4/LLMKube_0.10.4_darwin_amd64.tar.gz"
      sha256 "3c9cecd23a70dfb054f97dcf6fdfc50c622244f0c06107c4be2418db173b7f21"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.4/LLMKube_0.10.4_linux_arm64.tar.gz"
      sha256 "f164e5dbd48e40d2c3583d8af019a6928d88ff641a9ec9cf8607f1a8b95d38cb"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.4/LLMKube_0.10.4_linux_amd64.tar.gz"
      sha256 "d3bc6fb8d819c21b0da8065d970dc9c81aee16979d048429aeb2282f19d58e35"
    end
  end

  def install
    bin.install "llmkube"
  end

  test do
    assert_match "llmkube", shell_output("#{bin}/llmkube version 2>&1")
  end
end
