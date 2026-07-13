class Llmkube < Formula
  desc "GPU-accelerated Kubernetes operator for local LLM inference"
  homepage "https://github.com/defilantech/LLMKube"
  version "0.9.5"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.5/LLMKube_0.9.5_darwin_arm64.tar.gz"
      sha256 "4458e6bd5ee830a4a24e402f61866f9f2c6a9e75cfeebf1599e1be4b71155cd9"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.5/LLMKube_0.9.5_darwin_amd64.tar.gz"
      sha256 "361fb353ece995ac53bd3170939f444e8486133fea4a7abdafd26d36823590ab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.5/LLMKube_0.9.5_linux_arm64.tar.gz"
      sha256 "f47368c76b479e6ea1c9ba820bd4343e7c584cf8a7cdead6e6dcf1e1b2a82508"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.5/LLMKube_0.9.5_linux_amd64.tar.gz"
      sha256 "5f8d2dbb5e9db2460533bb662db12c6236432e51a57d0f9ec153a91d79deca4a"
    end
  end

  def install
    bin.install "llmkube"
  end

  test do
    assert_match "llmkube", shell_output("#{bin}/llmkube version 2>&1")
  end
end
