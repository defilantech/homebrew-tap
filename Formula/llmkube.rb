class Llmkube < Formula
  desc "GPU-accelerated Kubernetes operator for local LLM inference"
  homepage "https://github.com/defilantech/LLMKube"
  version "0.9.13"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.13/LLMKube_0.9.13_darwin_arm64.tar.gz"
      sha256 "dc07e9240bda275837dff6a767fd6e4bc1d1dbe251599e45a2e831af085e6fbc"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.13/LLMKube_0.9.13_darwin_amd64.tar.gz"
      sha256 "db5ac0d982e3c7222e0e079ccfe2fb9d6531dc124e41ada0fd432818efd1ec44"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.13/LLMKube_0.9.13_linux_arm64.tar.gz"
      sha256 "9d5884c9fb829b35e43708c3adfb5df589a1a860d588660ff6587e6b6194e1b0"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.13/LLMKube_0.9.13_linux_amd64.tar.gz"
      sha256 "1ed6eb6540904ae2b799750fd6c709c0483b097da7fce0bbe7e150b4ef11e421"
    end
  end

  def install
    bin.install "llmkube"
  end

  test do
    assert_match "llmkube", shell_output("#{bin}/llmkube version 2>&1")
  end
end
