class Llmkube < Formula
  desc "GPU-accelerated Kubernetes operator for local LLM inference"
  homepage "https://github.com/defilantech/LLMKube"
  version "0.9.7"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.7/LLMKube_0.9.7_darwin_arm64.tar.gz"
      sha256 "990af325c22cb88cf261c6cb51003d5205451bbe5b86725e4ad3817bf7cdbbb3"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.7/LLMKube_0.9.7_darwin_amd64.tar.gz"
      sha256 "2bffed23c8814c7b064f200fd9cb47f599f5fcb3eb492ee16574bdd3dd58bc0b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.7/LLMKube_0.9.7_linux_arm64.tar.gz"
      sha256 "628be2f4a036445aa2d137ca720d06bbbf6f65033839584c4682cf7def95f95f"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.9.7/LLMKube_0.9.7_linux_amd64.tar.gz"
      sha256 "10d46b85359d6bed99cb744e93dee6be0c1a309cd3ac500e3e87fc217bf86cd5"
    end
  end

  def install
    bin.install "llmkube"
  end

  test do
    assert_match "llmkube", shell_output("#{bin}/llmkube version 2>&1")
  end
end
