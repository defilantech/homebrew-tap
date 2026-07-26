class Llmkube < Formula
  desc "GPU-accelerated Kubernetes operator for local LLM inference"
  homepage "https://github.com/defilantech/LLMKube"
  version "0.9.12"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.12/LLMKube_0.9.12_darwin_arm64.tar.gz"
      sha256 "b35dfd347eb327408edd9254c268ebe402d8d2272d83220717c65ac96d6b2ce8"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.12/LLMKube_0.9.12_darwin_amd64.tar.gz"
      sha256 "a14be20b739e61c927072c84650f422ba3be30d25eb2ab93bf752f68ad5ae373"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.12/LLMKube_0.9.12_linux_arm64.tar.gz"
      sha256 "3ce7886060eda2e62b9f01e20413df6e2e10a7e3a762fb5bf2fde0f0e4440541"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.12/LLMKube_0.9.12_linux_amd64.tar.gz"
      sha256 "56987596fc169582554d5db497cd815a1f27a3e9e38137a8ce0255ded72fa782"
    end
  end

  def install
    bin.install "llmkube"
  end

  test do
    assert_match "llmkube", shell_output("#{bin}/llmkube version 2>&1")
  end
end
