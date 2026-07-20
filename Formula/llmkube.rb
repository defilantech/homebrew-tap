class Llmkube < Formula
  desc "GPU-accelerated Kubernetes operator for local LLM inference"
  homepage "https://github.com/defilantech/LLMKube"
  version "0.9.8"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.8/LLMKube_0.9.8_darwin_arm64.tar.gz"
      sha256 "5304d1ebbc9cadea2852019121262d4b146a66f36ff0d888327fd6e463d7cd26"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.8/LLMKube_0.9.8_darwin_amd64.tar.gz"
      sha256 "88c9e97f2f964b73c622dd18376e83082f115622756e4dd924d7129ee85adde9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.8/LLMKube_0.9.8_linux_arm64.tar.gz"
      sha256 "d4329af299dfa0cebcb5c5d3a48b002000718b96cd019993413a5de58c24c1a2"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.8/LLMKube_0.9.8_linux_amd64.tar.gz"
      sha256 "ecabab4a84a0d9c7171abc9f17ddddbab0a3e99280dbc08728144ba9fa47a488"
    end
  end

  def install
    bin.install "llmkube"
  end

  test do
    assert_match "llmkube", shell_output("#{bin}/llmkube version 2>&1")
  end
end
