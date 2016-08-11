require 'formula'

class S < Formula
  homepage 'https://github.com/haosdent/s'
  url 'https://github.com/haosdent/s/archive/v1.1.tar.gz'
  sha256 '62504554a94e0a2f83363ebf2f5fea31053ebe8e048ffecb828d0315968a7e60'

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
