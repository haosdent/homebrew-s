require 'formula'

class S < Formula
  homepage 'https://github.com/haosdent/s'
  url 'https://github.com/haosdent/s/archive/v1.1.tar.gz'
  sha1 '95bad2147b17dfe911bf1e5ae01e828af51e58d3'

  head 'https://github.com/haosdent/s.git'

  def install
    (prefix/'etc/profile.d').install 's.sh'
    man1.install 's.1'
  end

  def caveats; <<-EOS.undent
    For Bash or Zsh, put something like this in your $HOME/.bashrc or $HOME/.zshrc:
      . `brew --prefix`/etc/profile.d/s.sh
    EOS
  end
end
