class Llmkube < Formula
  desc "GPU-accelerated Kubernetes operator for local LLM inference"
  homepage "https://github.com/defilantech/LLMKube"
  version "0.10.7"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.7/LLMKube_0.10.7_darwin_arm64.tar.gz"
      sha256 "b43e7aa337f764ffb890659c4358660007917c4f3cf8162aad9afd3885ddd262"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.7/LLMKube_0.10.7_darwin_amd64.tar.gz"
      sha256 "ceb017afe1d252a57d130763fb147b298cdbdf003ede5cb3b909800c9e0066da"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.7/LLMKube_0.10.7_linux_arm64.tar.gz"
      sha256 "4f69a521f3d3fe939c0bf4edaf2141bd3250fe36055da410643bfc5bbc1141d5"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.7/LLMKube_0.10.7_linux_amd64.tar.gz"
      sha256 "15176d68cd07891c8b440396fb74d58b2ae68f67c961cbd799d32d4007a41d21"
    end
  end

  def install
    bin.install "llmkube"
  end

  test do
    assert_match "llmkube", shell_output("#{bin}/llmkube version 2>&1")
  end
end
