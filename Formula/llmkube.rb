class Llmkube < Formula
  desc "GPU-accelerated Kubernetes operator for local LLM inference"
  homepage "https://github.com/defilantech/LLMKube"
  version "0.10.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.2/LLMKube_0.10.2_darwin_arm64.tar.gz"
      sha256 "ee1e1771cd7252ac968a7b6099457ec11c742421af6bcd60eae6f75f818340ed"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.2/LLMKube_0.10.2_darwin_amd64.tar.gz"
      sha256 "de07e4444b4b510d72e73553606e465cdb9bdddbdc50eb28efb5b31bd0a3f8c8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.2/LLMKube_0.10.2_linux_arm64.tar.gz"
      sha256 "562104200ca08624b809f641b4b8a00c0e7e6e0c4afaed7b569cc58e14fdd965"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.2/LLMKube_0.10.2_linux_amd64.tar.gz"
      sha256 "2286518257f8b9a0ee19fb791fadf257a57dfbae2320fedab50c5369f6d08710"
    end
  end

  def install
    bin.install "llmkube"
  end

  test do
    assert_match "llmkube", shell_output("#{bin}/llmkube version 2>&1")
  end
end
