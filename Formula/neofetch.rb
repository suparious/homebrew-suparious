# Neofetch - A command-line system information tool
# Actively maintained fork of dylanaraps/neofetch

class Neofetch < Formula
  desc "Fast, highly customizable system info script"
  homepage "https://github.com/Suparious/neofetch"
  url "https://github.com/Suparious/neofetch/archive/refs/tags/7.1.1.tar.gz"
  sha256 "8bbd607438b093049c0a0c1cdec6e49050a91e73f8ea0b3e00c0a743672bd6d2"
  license "MIT"
  head "https://github.com/Suparious/neofetch.git", branch: "master"

  # Neofetch is a bash script with no compiled dependencies
  # It works with bash 3.2+ which is included with macOS

  def install
    inreplace "neofetch", "/usr/share", "#{prefix}/share"
    bin.install "neofetch"
    man1.install "neofetch.1"
    (share/"neofetch").install Dir["ascii/*"]
  end

  test do
    system "#{bin}/neofetch", "--version"
  end
end
