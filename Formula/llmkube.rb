class Llmkube < Formula
  desc "GPU-accelerated Kubernetes operator for local LLM inference"
  homepage "https://github.com/defilantech/LLMKube"
  version "0.9.14"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.14/LLMKube_0.9.14_darwin_arm64.tar.gz"
      sha256 "edbede97201fe5d439ee2a480c81e9f97855c6948cc5a708cabf1f5d9da24b5d"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.14/LLMKube_0.9.14_darwin_amd64.tar.gz"
      sha256 "7a3cefca9349d49cb1a0735a47129e381bdacf8b59716854695ebc8916b5bf76"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.14/LLMKube_0.9.14_linux_arm64.tar.gz"
      sha256 "75c52847d9d5fa1017436d1b5e07a93b47f4d795772247681148c5237f7d3f31"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.14/LLMKube_0.9.14_linux_amd64.tar.gz"
      sha256 "4c8b9df422f032fb75284453b21c9337fa673feaf72d78e92f81244f71d6999d"
    end
  end

  def install
    bin.install "llmkube"
  end

  test do
    assert_match "llmkube", shell_output("#{bin}/llmkube version 2>&1")
  end
end
