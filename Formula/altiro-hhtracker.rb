class AltiroHhtracker < Formula
  desc "Work-hours MCP tracker for AI coding sessions"
  homepage "https://github.com/serumax/altiro-hhtracker"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/serumax/altiro-hhtracker/releases/download/v0.1.0/altiro-hhtracker_0.1.0_darwin_arm64.tar.gz"
      sha256 "823ec0922d3e55f91d964777cb4a35e414d7beaeedae2cf63c93a457b8ede1a3"
    end
    on_intel do
      url "https://github.com/serumax/altiro-hhtracker/releases/download/v0.1.0/altiro-hhtracker_0.1.0_darwin_amd64.tar.gz"
      sha256 "2fd2dc5711cc9bed464989bdbdf83e21e78494f1e7b693ee1ecb07173df09c9b"
    end
  end

  def install
    bin.install "altiro-hhtracker"
  end

  test do
    assert_predicate bin/"altiro-hhtracker", :exist?
  end
end
