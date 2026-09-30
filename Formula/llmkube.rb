class Llmkube < Formula
  desc "GPU-accelerated Kubernetes operator for local LLM inference"
  homepage "https://github.com/defilantech/LLMKube"
  version "0.10.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.1/LLMKube_0.10.1_darwin_arm64.tar.gz"
      sha256 "c24b29220a03ae48af3372c9db9b2501f34929f38e13b82e6cfb497c153fccd5"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.1/LLMKube_0.10.1_darwin_amd64.tar.gz"
      sha256 "bafef13c0af1d680022e9276ab743eb839f6908052d976d6823f445fad6d9926"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.1/LLMKube_0.10.1_linux_arm64.tar.gz"
      sha256 "38c7afc8d78a92dab223d3b0519c73555fd43505894b3d4e9a4153cdeadec62b"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.1/LLMKube_0.10.1_linux_amd64.tar.gz"
      sha256 "8ea7dbc55dc718f2ebff5949825a61c671b5427add53de530dd263accf8b8a6d"
    end
  end

  def install
    bin.install "llmkube"
  end

  test do
    assert_match "llmkube", shell_output("#{bin}/llmkube version 2>&1")
  end
end
