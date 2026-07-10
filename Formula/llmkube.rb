class Llmkube < Formula
  desc "GPU-accelerated Kubernetes operator for local LLM inference"
  homepage "https://github.com/defilantech/LLMKube"
  version "0.9.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.3/LLMKube_0.9.3_darwin_arm64.tar.gz"
      sha256 "1ec669f6d66b955d6ea72de87de35ec15169b93874f5d0fd7732b9b13cea6a56"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.3/LLMKube_0.9.3_darwin_amd64.tar.gz"
      sha256 "63b8be8cdc7db27a9abb7734d78525294f57d2c33cf0ad8aef22ac83caf97ede"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.3/LLMKube_0.9.3_linux_arm64.tar.gz"
      sha256 "e8ad8914124e291b22253d2a6201049ae5b4d6ab2da1f5f0a374a9ffa96f3d11"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.3/LLMKube_0.9.3_linux_amd64.tar.gz"
      sha256 "e0312f28c3d76deba46ca212084521711ff930fb24b0077e78a981c612e78683"
    end
  end

  def install
    bin.install "llmkube"
  end

  test do
    assert_match "llmkube", shell_output("#{bin}/llmkube version 2>&1")
  end
end
