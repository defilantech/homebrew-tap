class Llmkube < Formula
  desc "GPU-accelerated Kubernetes operator for local LLM inference"
  homepage "https://github.com/defilantech/LLMKube"
  version "0.9.27"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.27/LLMKube_0.9.27_darwin_arm64.tar.gz"
      sha256 "83984863dff0d841a2e1f786e29e26d41a158467d99197eae9087405e4a3a311"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.27/LLMKube_0.9.27_darwin_amd64.tar.gz"
      sha256 "0335809641f94a8e0aa612de769cc0edd4acace849b25791103cd16b4715b16c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.27/LLMKube_0.9.27_linux_arm64.tar.gz"
      sha256 "4ed3be082a6ee1f157c1f7825f0f943e0132addb9f7250a9539efce2af4e687a"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.27/LLMKube_0.9.27_linux_amd64.tar.gz"
      sha256 "6a53fbc3efec4aab9c73a7bfb6f4ace0e49328404110a66bb1a9fa4d659a5255"
    end
  end

  def install
    bin.install "llmkube"
  end

  test do
    assert_match "llmkube", shell_output("#{bin}/llmkube version 2>&1")
  end
end
