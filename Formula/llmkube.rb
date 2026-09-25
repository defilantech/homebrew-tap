class Llmkube < Formula
  desc "GPU-accelerated Kubernetes operator for local LLM inference"
  homepage "https://github.com/defilantech/LLMKube"
  version "0.9.30"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.30/LLMKube_0.9.30_darwin_arm64.tar.gz"
      sha256 "fd7cb2502916413aa2a3ced0b0e30e9acfff85c51ac93a46f9ac238cbfff5f81"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.30/LLMKube_0.9.30_darwin_amd64.tar.gz"
      sha256 "ab66ca48ddb43f69ebeb025341740195a7a5138d870674a7c0b82072724cecce"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.30/LLMKube_0.9.30_linux_arm64.tar.gz"
      sha256 "017f66c56241ad215e51a08f17836ff2a4116b05d96d618aed5293c75a35720d"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.30/LLMKube_0.9.30_linux_amd64.tar.gz"
      sha256 "7c29e0643d1b56aec94e6657d65631732654a584794027766e1741e4077b0456"
    end
  end

  def install
    bin.install "llmkube"
  end

  test do
    assert_match "llmkube", shell_output("#{bin}/llmkube version 2>&1")
  end
end
