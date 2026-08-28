class AltiroHhtracker < Formula
  desc "Work-hours MCP tracker for AI coding sessions"
  homepage "https://github.com/serumax/altiro-hhtracker"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/serumax/altiro-hhtracker/releases/download/v0.2.0/altiro-hhtracker_0.2.0_darwin_arm64.tar.gz"
      sha256 "b80626819059e8aa6ad0051ce0621eda02c7dfa29659a95e31ac20dc2a9c24b0"
    end
    on_intel do
      url "https://github.com/serumax/altiro-hhtracker/releases/download/v0.2.0/altiro-hhtracker_0.2.0_darwin_amd64.tar.gz"
      sha256 "b4959c7d529e2092bc47cb38b15cc0d7868956e84ef41db8289fca6ac03d821d"
    end
  end

  def install
    bin.install "altiro-hhtracker"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/altiro-hhtracker --version")
  end
end
