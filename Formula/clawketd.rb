class Clawketd < Formula
  desc "Clawket daemon — local-first work management state layer"
  homepage "https://github.com/clawket/daemon"
  version "0.2.3"
  license "MIT"

  depends_on "clawket" => :recommended

  on_macos do
    on_arm do
      url "https://github.com/clawket/daemon/releases/download/v#{version}/clawketd-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "4ba25f46ba5d8b6adca9904e7fa4ba87205c86f2c2e5a38be2884827239f3c9b"
    end
    on_intel do
      url "https://github.com/clawket/daemon/releases/download/v#{version}/clawketd-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "35b748d8fc8de33f46bd3a8f85eaaa4bfdd7fe1e9736e0278a03a2e108ec51ac"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/clawket/daemon/releases/download/v#{version}/clawketd-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0f4ec232b28e98e631d2c69dc138abcd368dbde1bee72224637ef71375e78959"
    end
    on_intel do
      url "https://github.com/clawket/daemon/releases/download/v#{version}/clawketd-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3972d461d1ae397c1bc6b0727ea3af30a71ce08881253b1584e7e1ff17c61d0c"
    end
  end

  def install
    bin.install "clawketd"
  end

  service do
    run [opt_bin/"clawketd"]
    keep_alive true
    log_path var/"log/clawketd.log"
    error_log_path var/"log/clawketd.err.log"
  end

  test do
    assert_match "clawketd", shell_output("#{bin}/clawketd --version")
  end
end
