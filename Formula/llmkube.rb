class Llmkube < Formula
  desc "GPU-accelerated Kubernetes operator for local LLM inference"
  homepage "https://github.com/defilantech/LLMKube"
  version "0.10.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.0/LLMKube_0.10.0_darwin_arm64.tar.gz"
      sha256 "50e42ba1754951f9b0aa8d65429d496587c718d482ee415753c5e3f429c84839"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.0/LLMKube_0.10.0_darwin_amd64.tar.gz"
      sha256 "075af6d9ad969f51eba3a452d6333e6360e552b7c6ab53b66a3d1bd4db7da3ed"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.0/LLMKube_0.10.0_linux_arm64.tar.gz"
      sha256 "30d49485b308006402c7a426740037fc846d634cf001ff4a5b268e05d7090439"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.0/LLMKube_0.10.0_linux_amd64.tar.gz"
      sha256 "e1274c9040bf2ac6f24bde021d6386596bfca84694d859c1f7752ab8be0aaf89"
    end
  end

  def install
    bin.install "llmkube"
  end

  test do
    assert_match "llmkube", shell_output("#{bin}/llmkube version 2>&1")
  end
end
