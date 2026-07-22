class Llmkube < Formula
  desc "GPU-accelerated Kubernetes operator for local LLM inference"
  homepage "https://github.com/defilantech/LLMKube"
  version "0.9.10"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.10/LLMKube_0.9.10_darwin_arm64.tar.gz"
      sha256 "f585ee2fbca2b3087fdbb7ff2c39c95de1aca66e8863bbe86bc9a8a9f73f37a3"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.10/LLMKube_0.9.10_darwin_amd64.tar.gz"
      sha256 "73c558868faef2c387e0068d7557e8b491bad593ea679a0ad2f5cee39ccf63d5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.10/LLMKube_0.9.10_linux_arm64.tar.gz"
      sha256 "4c00f948df6aec4b93c916ae389d19eb2d0288774a663e614d1bccc38dbe9c7a"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.10/LLMKube_0.9.10_linux_amd64.tar.gz"
      sha256 "8a9d454137343675968e7f4bd4e8b993169c915220d33e7f648fb4c482049041"
    end
  end

  def install
    bin.install "llmkube"
  end

  test do
    assert_match "llmkube", shell_output("#{bin}/llmkube version 2>&1")
  end
end
