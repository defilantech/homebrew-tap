class Llmkube < Formula
  desc "GPU-accelerated Kubernetes operator for local LLM inference"
  homepage "https://github.com/defilantech/LLMKube"
  version "0.9.20"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.20/LLMKube_0.9.20_darwin_arm64.tar.gz"
      sha256 "9d3edfc06f4d0371e13ab0bc2de00e8b22dd255a9c2df40f21aab8da34357997"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.20/LLMKube_0.9.20_darwin_amd64.tar.gz"
      sha256 "3d20ff680ee5f6332c7acf4f6378509bbb2d9207a00795fefb4af95df325a3ed"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.20/LLMKube_0.9.20_linux_arm64.tar.gz"
      sha256 "49d4a000252fe24889e3baa3b1918bcd221d930c007eac891bac988104531276"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.20/LLMKube_0.9.20_linux_amd64.tar.gz"
      sha256 "24787de4821b73a37c7bf55582a54c0777aeb174217253e17f47798a2156969a"
    end
  end

  def install
    bin.install "llmkube"
  end

  test do
    assert_match "llmkube", shell_output("#{bin}/llmkube version 2>&1")
  end
end
