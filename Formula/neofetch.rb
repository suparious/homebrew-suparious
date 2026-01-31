# Neofetch - A command-line system information tool
# Actively maintained fork of dylanaraps/neofetch

class Neofetch < Formula
  desc "Fast, highly customizable system info script"
  homepage "https://github.com/Suparious/neofetch"
  url "https://github.com/Suparious/neofetch/archive/refs/tags/7.2.1.tar.gz"
  sha256 "0607249a8e24778117ba2591aaa3d3e09fac5de2e3e9a367f56c4b843e07c662"
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
