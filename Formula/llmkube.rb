class Llmkube < Formula
  desc "GPU-accelerated Kubernetes operator for local LLM inference"
  homepage "https://github.com/defilantech/LLMKube"
  version "0.10.8"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.8/LLMKube_0.10.8_darwin_arm64.tar.gz"
      sha256 "e2ca8a3bcee8426dac5650d7525e173fd9605f00468f4b5541e9ed16195f91af"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.8/LLMKube_0.10.8_darwin_amd64.tar.gz"
      sha256 "e7a2f70530b36535e1138c2872027b8c5a1c17a93cad4ccaecce454f130393a9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.8/LLMKube_0.10.8_linux_arm64.tar.gz"
      sha256 "28a09c7e3f70299c4002fca594abab0c98c060e37443859072e55e53b60b0638"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.8/LLMKube_0.10.8_linux_amd64.tar.gz"
      sha256 "d09c97aea3f1c0c29ff9e345f5ffe485ef85bca87a10515d9609942dedc283cf"
    end
  end

  def install
    bin.install "llmkube"
  end

  test do
    assert_match "llmkube", shell_output("#{bin}/llmkube version 2>&1")
  end
end
