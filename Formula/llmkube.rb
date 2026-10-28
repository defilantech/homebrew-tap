class Llmkube < Formula
  desc "GPU-accelerated Kubernetes operator for local LLM inference"
  homepage "https://github.com/defilantech/LLMKube"
  version "0.10.13"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.13/LLMKube_0.10.13_darwin_arm64.tar.gz"
      sha256 "6bc4e37fcbb653859318a8b24aa08b6e9b913885111da5d5b212513e6b97e2b8"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.13/LLMKube_0.10.13_darwin_amd64.tar.gz"
      sha256 "f564dc477c4ac5728c6d8a278fb0a4ed5f890ed65dc04dbc3e68ff1122aef78e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.13/LLMKube_0.10.13_linux_arm64.tar.gz"
      sha256 "2bc5f751de76428cf2a120e1a57e758daa0e2329bcfe169fb7dcd8fd77377849"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.13/LLMKube_0.10.13_linux_amd64.tar.gz"
      sha256 "ee61bf5cc483545374adda55925b0232c0f5bc17577fa26537c227233a87f8e2"
    end
  end

  def install
    bin.install "llmkube"
  end

  test do
    assert_match "llmkube", shell_output("#{bin}/llmkube version 2>&1")
  end
end
