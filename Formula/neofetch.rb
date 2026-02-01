# Neofetch - A command-line system information tool
# Actively maintained fork of dylanaraps/neofetch

class Neofetch < Formula
  desc "Fast, highly customizable system info script"
  homepage "https://github.com/Suparious/neofetch"
  url "https://github.com/Suparious/neofetch/archive/refs/tags/7.3.1.tar.gz"
  sha256 "fc6849f98d9754745ca1fe2ed48b5fe874c425a8f925812f6e427686862c1195"
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
