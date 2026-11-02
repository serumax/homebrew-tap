class AltiroHhtracker < Formula
  desc "Work-hours MCP tracker for AI coding sessions"
  homepage "https://github.com/serumax/altiro-hhtracker"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/serumax/altiro-hhtracker/releases/download/v0.4.0/altiro-hhtracker_0.4.0_darwin_arm64.tar.gz"
      sha256 "1d6c90f12d49f653ae93504fa516b20da2510990964802bf60bd26789504eab1"
    end
    on_intel do
      url "https://github.com/serumax/altiro-hhtracker/releases/download/v0.4.0/altiro-hhtracker_0.4.0_darwin_amd64.tar.gz"
      sha256 "f9b76a4214fecde60ccd294a16ff825ff1f6eca42ec8383fb10ec12eed1ac804"
    end
  end

  def install
    bin.install "altiro-hhtracker"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/altiro-hhtracker --version")
  end
end
