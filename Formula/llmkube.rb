class Llmkube < Formula
  desc "GPU-accelerated Kubernetes operator for local LLM inference"
  homepage "https://github.com/defilantech/LLMKube"
  version "0.10.16"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.16/LLMKube_0.10.16_darwin_arm64.tar.gz"
      sha256 "ffea8e20ea37c76d7c0d6e491912cf58f0e2ea12d5871dd28c1eb66afd36d538"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.16/LLMKube_0.10.16_darwin_amd64.tar.gz"
      sha256 "f3294e61afa1ad5457289d1ade1c64430e448ebb6341cbfcaa9533210ffeec64"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.16/LLMKube_0.10.16_linux_arm64.tar.gz"
      sha256 "4db0ce1546a3435fa8bbddcf19e3c1f0f37ec32d8f1fdb66c9a20bd1da6730a9"
    end
    on_intel do
      url "https://github.com/defilantech/LLMKube/releases/download/v0.10.16/LLMKube_0.10.16_linux_amd64.tar.gz"
      sha256 "4054f052b39503f7720522ca8fafa94f7545d653777e2951584f605be5764b6e"
    end
  end

  def install
    bin.install "llmkube"
  end

  test do
    assert_match "llmkube", shell_output("#{bin}/llmkube version 2>&1")
  end
end
