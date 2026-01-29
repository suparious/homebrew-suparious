# Neofetch - A command-line system information tool
# Actively maintained fork of dylanaraps/neofetch

class Neofetch < Formula
  desc "Fast, highly customizable system info script"
  homepage "https://github.com/Suparious/neofetch"
  url "https://github.com/Suparious/neofetch/archive/refs/tags/7.1.1.tar.gz"
  sha256 "62b4a7ad69ee31d8b1a1b64b23ea34ab2c8d3c6c560ac7bd35422a463af68169"
  license "MIT"
  head "https://github.com/Suparious/neofetch.git", branch: "master"

  def install
    inreplace "neofetch", "/usr/share", "#{prefix}/share"
    bin.install "neofetch"
    man1.install "neofetch.1"
  end

  test do
    system "#{bin}/neofetch", "--version"
  end
end
