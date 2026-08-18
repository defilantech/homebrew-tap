class Llmkube < Formula
  desc "GPU-accelerated Kubernetes operator for local LLM inference"
  homepage "https://github.com/defilantech/LLMKube"
  version "0.9.18"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.18/LLMKube_0.9.18_darwin_arm64.tar.gz"
      sha256 "ab97cdff103dab47c80698b6db79b9ffdee9117a830e0662609b8ab606a55df4"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.18/LLMKube_0.9.18_darwin_amd64.tar.gz"
      sha256 "50a984a478922a1962315cd4f7a537ed13381dbbf7b44afa5da4754e83ba0628"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.18/LLMKube_0.9.18_linux_arm64.tar.gz"
      sha256 "77d4e69fb8e118ffa99eab152ec9feb6546678cac81b6e2126f1844b1170bb2f"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.18/LLMKube_0.9.18_linux_amd64.tar.gz"
      sha256 "98c3e43acee4cb7781483ce36e43a9592b5215e769505c707536a5d00ff9b6ec"
    end
  end

  def install
    bin.install "llmkube"
  end

  test do
    assert_match "llmkube", shell_output("#{bin}/llmkube version 2>&1")
  end
end
