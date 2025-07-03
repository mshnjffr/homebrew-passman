class Passman < Formula
  desc "Beautiful terminal password manager built with Go and Bubble Tea"
  homepage "https://github.com/mshnjffr/passman"
  url "https://github.com/mshnjffr/passman/archive/refs/tags/v1.0.3.tar.gz"
  sha256 "b25e533d21faec1358a8eb2b90cd77b79286cff8af0b7d3c07e58c6d83145d27"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-ldflags", "-s -w", "-o", bin/"passman"
  end

  test do
    assert_match "passman", shell_output("#{bin}/passman --version")
  end
end
