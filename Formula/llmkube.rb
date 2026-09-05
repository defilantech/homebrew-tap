class Llmkube < Formula
  desc "GPU-accelerated Kubernetes operator for local LLM inference"
  homepage "https://github.com/defilantech/LLMKube"
  version "0.9.25"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.25/LLMKube_0.9.25_darwin_arm64.tar.gz"
      sha256 "6947bbab9ce11bc062d569413b355e4894541d22ca2f84ac65b7735af6b8a434"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.25/LLMKube_0.9.25_darwin_amd64.tar.gz"
      sha256 "e22cdfd2bd75d524f1dbd683bf2c217f2faa6d70ac406b26b152576046d37aa1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.25/LLMKube_0.9.25_linux_arm64.tar.gz"
      sha256 "99c06aed78598966f92bd92e83b63dbab188f9e36dd34bc6e9df2c34db1321b5"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.25/LLMKube_0.9.25_linux_amd64.tar.gz"
      sha256 "7ba52bd7e62bfd1925719c0b0d0c713f44b120a2b0e355c08e91b5380bc8f6e0"
    end
  end

  def install
    bin.install "llmkube"
  end

  test do
    assert_match "llmkube", shell_output("#{bin}/llmkube version 2>&1")
  end
end
