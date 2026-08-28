class Llmkube < Formula
  desc "GPU-accelerated Kubernetes operator for local LLM inference"
  homepage "https://github.com/defilantech/LLMKube"
  version "0.9.23"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.23/LLMKube_0.9.23_darwin_arm64.tar.gz"
      sha256 "d7a7027f9243de78f5aa1441cf131ee7f84b66130ebc4129ec10655774032ab1"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.23/LLMKube_0.9.23_darwin_amd64.tar.gz"
      sha256 "71a75f646983c0759cea3e38d681fd322bbddfd61a8a49a5fae7856d897bd9e5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.23/LLMKube_0.9.23_linux_arm64.tar.gz"
      sha256 "f3ce83921a43701c6be7c03a09d75cf8d9bb6745ea3e92b8e3fccefc83cf12bf"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.23/LLMKube_0.9.23_linux_amd64.tar.gz"
      sha256 "b6d172ec080fdcdaac019028221d14d2acfb9ac0090d481c0f6167d954312e1d"
    end
  end

  def install
    bin.install "llmkube"
  end

  test do
    assert_match "llmkube", shell_output("#{bin}/llmkube version 2>&1")
  end
end
