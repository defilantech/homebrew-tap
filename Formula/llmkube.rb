class Llmkube < Formula
  desc "GPU-accelerated Kubernetes operator for local LLM inference"
  homepage "https://github.com/defilantech/LLMKube"
  version "0.9.6"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.6/LLMKube_0.9.6_darwin_arm64.tar.gz"
      sha256 "ade7aa383a858ba65a3dacae402ff8513e8494e7daccedb0bb6d4fde96b6c0db"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.6/LLMKube_0.9.6_darwin_amd64.tar.gz"
      sha256 "79b9a366586cdcf2116041e3f5d8f00fc978ed5446a26e10cf47dc6a0905b94a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.6/LLMKube_0.9.6_linux_arm64.tar.gz"
      sha256 "9215270e01279dec020d9f02ca5456603c31df61682bf5fd16f447794f415442"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.6/LLMKube_0.9.6_linux_amd64.tar.gz"
      sha256 "2655c42fe30afedcea7b5d127b73832d1bf364dab89592261b84959dd7ee600e"
    end
  end

  def install
    bin.install "llmkube"
  end

  test do
    assert_match "llmkube", shell_output("#{bin}/llmkube version 2>&1")
  end
end
