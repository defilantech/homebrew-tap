class Llmkube < Formula
  desc "GPU-accelerated Kubernetes operator for local LLM inference"
  homepage "https://github.com/defilantech/LLMKube"
  version "0.10.6"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.6/LLMKube_0.10.6_darwin_arm64.tar.gz"
      sha256 "7d3e464d75190851b34c7e8a55f60d4a801a23e826baa4de8f6cd46dd5c03af9"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.6/LLMKube_0.10.6_darwin_amd64.tar.gz"
      sha256 "e089e824f75913efb876b35b4bbc618d3a059cce7a19140227c377d3d442bcac"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.6/LLMKube_0.10.6_linux_arm64.tar.gz"
      sha256 "5fe86edfbd640eb6b6c55c2bb91cf7cd36348bf43d543a452bd754f4a9ff57a3"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.6/LLMKube_0.10.6_linux_amd64.tar.gz"
      sha256 "ca43e955da4633afc00fe7a970ae92a52ebac18bc62eb9d6db67ebc3d5bcdf93"
    end
  end

  def install
    bin.install "llmkube"
  end

  test do
    assert_match "llmkube", shell_output("#{bin}/llmkube version 2>&1")
  end
end
