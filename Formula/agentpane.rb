class Agentpane < Formula
  desc "Tmux-based long-running task orchestration for AI agents"
  homepage "https://github.com/darshan-rambhia/tmux-agentpane"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/darshan-rambhia/tmux-agentpane/releases/download/v0.1.2/tmux-agentpane_darwin_amd64.tar.gz"
      sha256 "6eba57757c4b5444e7208e99bf5337d55e634205dd946f350db38252f5f95fd4"
    end
    on_arm do
      url "https://github.com/darshan-rambhia/tmux-agentpane/releases/download/v0.1.2/tmux-agentpane_darwin_arm64.tar.gz"
      sha256 "dc6aaca5056b6f0cae4a3518c606ce9fa68c6b21edac2ec3251f0a48d01b636d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/darshan-rambhia/tmux-agentpane/releases/download/v0.1.2/tmux-agentpane_linux_amd64.tar.gz"
      sha256 "e69d82e07b2bb9ff4187cbb88506a9d13122afa904cb66a4381216f9ef09951c"
    end
    on_arm do
      url "https://github.com/darshan-rambhia/tmux-agentpane/releases/download/v0.1.2/tmux-agentpane_linux_arm64.tar.gz"
      sha256 "eed387805d9a5d8954054c2d55c5637b47eeca85c832cbcce5f0c1d8f5fc7d29"
    end
  end

  depends_on "tmux"

  def install
    bin.install "agentpane"
  end

  test do
    system "#{bin}/agentpane", "--help"
  end
end
