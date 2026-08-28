class Llmkube < Formula
  desc "GPU-accelerated Kubernetes operator for local LLM inference"
  homepage "https://github.com/defilantech/LLMKube"
  version "0.9.22"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.22/LLMKube_0.9.22_darwin_arm64.tar.gz"
      sha256 "261c8d6c233098a2e7aa465b54d87c482f6efc0da07bad400326765872614628"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.22/LLMKube_0.9.22_darwin_amd64.tar.gz"
      sha256 "7feb89e4e3730b948aefd2166c211bce68c05f6f7906dc115881fae311eef2b3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.22/LLMKube_0.9.22_linux_arm64.tar.gz"
      sha256 "8653bea008806290386ffe77fe7198b2d2e99f9d9218eb889bc5a78d5bbe317d"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.22/LLMKube_0.9.22_linux_amd64.tar.gz"
      sha256 "89c5543bb2d1f3a840ce7a588aef3efdb450701c1e6787f97c784fcd0fc9e2ef"
    end
  end

  def install
    bin.install "llmkube"
  end

  test do
    assert_match "llmkube", shell_output("#{bin}/llmkube version 2>&1")
  end
end
