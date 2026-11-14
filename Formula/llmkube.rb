class Llmkube < Formula
  desc "GPU-accelerated Kubernetes operator for local LLM inference"
  homepage "https://github.com/defilantech/LLMKube"
  version "0.10.18"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.18/LLMKube_0.10.18_darwin_arm64.tar.gz"
      sha256 "3acd816584167b58dd1ddacb8908dd0ca2b1a12acd6779be3673b51caad27524"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.18/LLMKube_0.10.18_darwin_amd64.tar.gz"
      sha256 "443a74879df0ef9d346c43191e8b8930193d7bc901dd4bc9cd7f92d9a66dd33b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.18/LLMKube_0.10.18_linux_arm64.tar.gz"
      sha256 "ada599fb323cb2903b86f8de1a047c322cfc4b07ae52a25c1ff4b723ebbdb180"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.18/LLMKube_0.10.18_linux_amd64.tar.gz"
      sha256 "3f9d83d9747635da8fd8a6d0bba51bb6fc62369e06d6075e4c49b4eca6418cb8"
    end
  end

  def install
    bin.install "llmkube"
  end

  test do
    assert_match "llmkube", shell_output("#{bin}/llmkube version 2>&1")
  end
end
