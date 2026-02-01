# Neofetch - A command-line system information tool
# Actively maintained fork of dylanaraps/neofetch

class Neofetch < Formula
  desc "Fast, highly customizable system info script"
  homepage "https://github.com/Suparious/neofetch"
  url "https://github.com/Suparious/neofetch/archive/refs/tags/7.3.0.tar.gz"
  sha256 "fe740fa2bdb7ae7129ec4cdbfda3eda5dc501ba5d439164d14236fac3c9f3da3"
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
