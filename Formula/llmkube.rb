class Llmkube < Formula
  desc "GPU-accelerated Kubernetes operator for local LLM inference"
  homepage "https://github.com/defilantech/LLMKube"
  version "0.9.17"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.17/LLMKube_0.9.17_darwin_arm64.tar.gz"
      sha256 "8346a0199267fa2ac2fced8d987c18905f4592630b80a5b9bada46dcf9aaad5b"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.17/LLMKube_0.9.17_darwin_amd64.tar.gz"
      sha256 "9e66299cd930af886e7029debef241a1be4dd7034d5c2d4871fc264a9946bb11"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.17/LLMKube_0.9.17_linux_arm64.tar.gz"
      sha256 "555c9e60ff9e44ab88eceb8062c8d8f20b5cdc16ee38a3ac9d268fc16b664f92"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.17/LLMKube_0.9.17_linux_amd64.tar.gz"
      sha256 "512256dbd2406b75e5145f09a295d6ccccac1999a322273a5d6a4950a693aed7"
    end
  end

  def install
    bin.install "llmkube"
  end

  test do
    assert_match "llmkube", shell_output("#{bin}/llmkube version 2>&1")
  end
end
