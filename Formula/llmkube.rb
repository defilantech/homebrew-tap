class Llmkube < Formula
  desc "GPU-accelerated Kubernetes operator for local LLM inference"
  homepage "https://github.com/defilantech/LLMKube"
  version "0.9.28"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.28/LLMKube_0.9.28_darwin_arm64.tar.gz"
      sha256 "4d1cb5fb3785d7d2b662466211560e016baa6d2f633053b1561ef7e2d25b4f92"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.28/LLMKube_0.9.28_darwin_amd64.tar.gz"
      sha256 "f8c1f075fd00a89e500d373118a6fdab90ee02d868143f51af1fbff3e073933c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.28/LLMKube_0.9.28_linux_arm64.tar.gz"
      sha256 "b9f45d811efd744a11e8ab847180d09fc237052b313cee114a01dede0f247af5"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.28/LLMKube_0.9.28_linux_amd64.tar.gz"
      sha256 "d11c641de7dad8475caed1beb532c3feb795b7736c5ef66f9c6cbe3dfef53f01"
    end
  end

  def install
    bin.install "llmkube"
  end

  test do
    assert_match "llmkube", shell_output("#{bin}/llmkube version 2>&1")
  end
end
