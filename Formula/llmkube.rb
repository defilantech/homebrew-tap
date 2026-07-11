class Llmkube < Formula
  desc "GPU-accelerated Kubernetes operator for local LLM inference"
  homepage "https://github.com/defilantech/LLMKube"
  version "0.9.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.4/LLMKube_0.9.4_darwin_arm64.tar.gz"
      sha256 "c58e969450c6ddbdffc56fdc10fac181e3c73cb2a9f081156e255119bd019aaa"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.4/LLMKube_0.9.4_darwin_amd64.tar.gz"
      sha256 "44ec41521c9075d9d169e64c37ec6c7d6ac50c768348e405a27f47481a548f31"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.4/LLMKube_0.9.4_linux_arm64.tar.gz"
      sha256 "36a1b8847a6f7d6833c9facf5334f763b250f05d00633bdc40b563bc2fc4512f"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.4/LLMKube_0.9.4_linux_amd64.tar.gz"
      sha256 "7fb562c2ff41d37449a988e785dcb2219e207bc43f72e7a36daeabb59989f068"
    end
  end

  def install
    bin.install "llmkube"
  end

  test do
    assert_match "llmkube", shell_output("#{bin}/llmkube version 2>&1")
  end
end
