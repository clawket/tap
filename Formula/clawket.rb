class Clawket < Formula
  desc "LLM-native work management CLI for Claude Code"
  homepage "https://github.com/clawket/clawket"
  version "0.2.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/clawket/cli/releases/download/v#{version}/clawket-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "30f5574ed854f9ceb86602add8415f7a7f817e4c72d76a7a99285ed3529bfc9f"
    end
    on_intel do
      url "https://github.com/clawket/cli/releases/download/v#{version}/clawket-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "73a32abf695afd6d2356941c40837d89b614975bf8c4c74ac587533e54498b61"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/clawket/cli/releases/download/v#{version}/clawket-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5e53a681730bf86572aa0a0313907d8b0a895e7ff2bc60d7495c477a96c723a1"
    end
    on_intel do
      url "https://github.com/clawket/cli/releases/download/v#{version}/clawket-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "722844a34a3629e55d20619b2be920a76f827bf6932a8fb64400df9aa7f0c501"
    end
  end

  def install
    bin.install "clawket"
  end

  test do
    assert_match "clawket #{version}", shell_output("#{bin}/clawket --version")
  end
end
