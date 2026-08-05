class AltiroHhtracker < Formula
  desc "Work-hours MCP tracker for AI coding sessions"
  homepage "https://github.com/serumax/altiro-hhtracker"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/serumax/altiro-hhtracker/releases/download/v0.1.1/altiro-hhtracker_0.1.1_darwin_arm64.tar.gz"
      sha256 "f598a2ccf729f17d4b95ab2e5e82c9c228896971475c92e65fc99d88580f977c"
    end
    on_intel do
      url "https://github.com/serumax/altiro-hhtracker/releases/download/v0.1.1/altiro-hhtracker_0.1.1_darwin_amd64.tar.gz"
      sha256 "7982b7c3a9ed1d2c4a01dfd5556fc11f3fa3c1bec6d24c27fe8dbe9e6d887d57"
    end
  end

  def install
    bin.install "altiro-hhtracker"
  end

  test do
    assert_predicate bin/"altiro-hhtracker", :exist?
  end
end
