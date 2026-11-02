class Ghtop < Formula
  desc "k9s/htop-style live view of GitHub Actions runs across your orgs"
  homepage "https://github.com/serumax/ghtop"
  url "https://codeload.github.com/serumax/ghtop/tar.gz/refs/tags/v0.1.0"
  sha256 "0785e22c624b7b2e8a96ad57346f4e2ff343999768dfa51aaad73edd55ade455"
  version "0.1.0"

  depends_on "go" => :build
  depends_on "gh"

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_path_exists bin/"ghtop"
  end
end
