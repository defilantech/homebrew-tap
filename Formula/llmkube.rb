class Llmkube < Formula
  desc "GPU-accelerated Kubernetes operator for local LLM inference"
  homepage "https://github.com/defilantech/LLMKube"
  version "0.10.14"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.14/LLMKube_0.10.14_darwin_arm64.tar.gz"
      sha256 "5c44dd3291e73f74193d69fa05312d9d9541056b3022ca0463f40d72e72e4eba"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.14/LLMKube_0.10.14_darwin_amd64.tar.gz"
      sha256 "890703ae2eefcad381f6c870599bdef5d5b9f051c9b446f794b597813d0d32a6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.14/LLMKube_0.10.14_linux_arm64.tar.gz"
      sha256 "de4a40b58a6b795f7413e40d6cc0038c774b09b47d726bc8228b1fa12309b0c7"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.14/LLMKube_0.10.14_linux_amd64.tar.gz"
      sha256 "a4feaa16f564ff640860e77ccb3f226d43a31b40ae0c3ed92dc318cdac472ff7"
    end
  end

  def install
    bin.install "llmkube"
  end

  test do
    assert_match "llmkube", shell_output("#{bin}/llmkube version 2>&1")
  end
end
