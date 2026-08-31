class AltiroHhtracker < Formula
  desc "Work-hours MCP tracker for AI coding sessions"
  homepage "https://github.com/serumax/altiro-hhtracker"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/serumax/altiro-hhtracker/releases/download/v0.3.0/altiro-hhtracker_0.3.0_darwin_arm64.tar.gz"
      sha256 "c5e2bed04124d433479084490e3f5d2d07107167f975a80428bf9a057942e269"
    end
    on_intel do
      url "https://github.com/serumax/altiro-hhtracker/releases/download/v0.3.0/altiro-hhtracker_0.3.0_darwin_amd64.tar.gz"
      sha256 "9895a3fa3c148264a42beb9fe0c072417f47a46fe883b4eec5d206b893aa8514"
    end
  end

  def install
    bin.install "altiro-hhtracker"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/altiro-hhtracker --version")
  end
end
