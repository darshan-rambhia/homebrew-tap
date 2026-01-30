class Agentpane < Formula
  desc "Tmux-based long-running task orchestration for AI agents"
  homepage "https://github.com/darshan-rambhia/tmux-agentpane"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/darshan-rambhia/tmux-agentpane/releases/download/v0.1.1/tmux-agentpane_darwin_amd64.tar.gz"
      sha256 "b19578fa1c99bf0a11bf866ce4b78f5770772e4b10ffa7d0df93e4a5919b2bec
1deb838fbf291a1be3b12b5dc7c9385ba71e0e2ce24a24d1623d6038ca84191d"
    end
    on_arm do
      url "https://github.com/darshan-rambhia/tmux-agentpane/releases/download/v0.1.1/tmux-agentpane_darwin_arm64.tar.gz"
      sha256 "ec703cc9a99f1238ec71ab05b2b0b800e2f985a721c1e22aa7d79bc309d1ef76
ffe85581523ff34c3df74423332983a23e04065b8bf956584dc4c22f7c2e31a2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/darshan-rambhia/tmux-agentpane/releases/download/v0.1.1/tmux-agentpane_linux_amd64.tar.gz"
      sha256 "39dab7d41ef8214683be966e42fc73681ccab89718eaf6acef1831bad1be49c8
ef5a1c364bbded67c941d368d640c099700f228d93c5a0dc35c3f0b8d4446566"
    end
    on_arm do
      url "https://github.com/darshan-rambhia/tmux-agentpane/releases/download/v0.1.1/tmux-agentpane_linux_arm64.tar.gz"
      sha256 "72fdf29dd78ab5734b656347104697de5609885e7d0c8e31f9fd7adf4c73c84b
2d082c7ef61878662c2cdd80b5e3b9d153a047dcb549f5e29de879a170798974"
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
