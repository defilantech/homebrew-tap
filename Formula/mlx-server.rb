# typed: false
# frozen_string_literal: true

class MlxServer < Formula
  desc "OpenAI-compatible HTTP server for mlx-swift-lm on Apple Silicon"
  homepage "https://github.com/defilantech/mlx-server"
  url "https://github.com/defilantech/mlx-server/releases/download/v0.1.0/mlx-server-0.1.0-macos-arm64.tar.gz"
  version "0.1.0"
  sha256 "4e27fc90fdd11c3d7b3dd63c44c834a2063e3e2250526772eb58434ecf3457e9"
  license "Apache-2.0"

  # Apple Silicon only; MLX is Metal-backed. Built against the macOS 14 SDK.
  depends_on arch: :arm64
  depends_on macos: :sonoma

  def install
    # The runnable product is the executable plus its colocated resource
    # bundles: mlx-swift_Cmlx.bundle carries the Metal default.metallib, and
    # a lone binary fails at runtime with "Failed to load the default
    # metallib". Install the whole product into libexec, then shim it into
    # bin so the binary always runs with its bundles as siblings.
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"mlx-server"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mlx-server --version")
  end
end
