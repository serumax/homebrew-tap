class Devtop < Formula
  desc "k9s/htop-style TUI: inventory and start/stop control for local projects"
  homepage "https://github.com/serumax/devtop"
  url "https://codeload.github.com/serumax/devtop/tar.gz/refs/tags/v0.1.0"
  sha256 "8198fd8e0c9ad06460615a2e10c5d2955d0330719a39b8b971249e34e1bf5f29"
  version "0.1.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_path_exists bin/"devtop"
  end
end
