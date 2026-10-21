class Llmkube < Formula
  desc "GPU-accelerated Kubernetes operator for local LLM inference"
  homepage "https://github.com/defilantech/LLMKube"
  version "0.10.5"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.5/LLMKube_0.10.5_darwin_arm64.tar.gz"
      sha256 "bcd33ae12734e4a0456c88acafcca05f50b0a14539856ba7ce8dfca38e8bd35d"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.5/LLMKube_0.10.5_darwin_amd64.tar.gz"
      sha256 "3cd62b507f092a447e12f77bf059721ffa2380b43f230427b0fb524c8deea5b2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.5/LLMKube_0.10.5_linux_arm64.tar.gz"
      sha256 "d3c4862516ebafc587e1f876db8fddde8628df15e09b878102bd2b24c5a658bb"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.5/LLMKube_0.10.5_linux_amd64.tar.gz"
      sha256 "a6a62c90decd496ea24f35fd3e47c21340dd2b159362349b8e1f80d4cc6c87f2"
    end
  end

  def install
    bin.install "llmkube"
  end

  test do
    assert_match "llmkube", shell_output("#{bin}/llmkube version 2>&1")
  end
end
