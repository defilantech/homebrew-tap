class Llmkube < Formula
  desc "GPU-accelerated Kubernetes operator for local LLM inference"
  homepage "https://github.com/defilantech/LLMKube"
  version "0.9.9"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.9/LLMKube_0.9.9_darwin_arm64.tar.gz"
      sha256 "654043b0f6aa1080085fb53d06595ab07d6e9918f47a7ee5b6273d8e068a093f"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.9/LLMKube_0.9.9_darwin_amd64.tar.gz"
      sha256 "bcd635527cf20bbc912a6d9b9739374763363e4ac098016f60e5f8fa8ed618b5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.9/LLMKube_0.9.9_linux_arm64.tar.gz"
      sha256 "50ed978cbe3163fe9a997daa4f41538f1212653cbf66b093ce95ca88985da013"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.9/LLMKube_0.9.9_linux_amd64.tar.gz"
      sha256 "12a06443cbbeca2b1847895e092ee00cd5a6def4cb0b956450e36633176d937f"
    end
  end

  def install
    bin.install "llmkube"
  end

  test do
    assert_match "llmkube", shell_output("#{bin}/llmkube version 2>&1")
  end
end
