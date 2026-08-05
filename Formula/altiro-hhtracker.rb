class AltiroHhtracker < Formula
  desc "Work-hours MCP tracker for AI coding sessions"
  homepage "https://github.com/serumax/altiro-hhtracker"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/serumax/altiro-hhtracker/releases/download/v0.1.2/altiro-hhtracker_0.1.2_darwin_arm64.tar.gz"
      sha256 "0b8fe08f0d6f4e65f35191a315c0771067da716aee8df211eaa30f132b2531cc"
    end
    on_intel do
      url "https://github.com/serumax/altiro-hhtracker/releases/download/v0.1.2/altiro-hhtracker_0.1.2_darwin_amd64.tar.gz"
      sha256 "c2d592208706e414715dd4a52b93f0eccc3bdefd32e4d792fd48b1aa4bd452d5"
    end
  end

  def install
    bin.install "altiro-hhtracker"
  end

  test do
    assert_predicate bin/"altiro-hhtracker", :exist?
  end
end
