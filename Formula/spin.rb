class Spin < Formula

  desc 'A command-line tool for service and resource orchestration.'
  homepage 'https://github.com/lhazlewood/spin'
  url 'http://repo1.maven.org/maven2/com/leshazlewood/spin/spin/0.1.0/spin-0.1.0.zip'
  sha256 '309775c58be550d356ef2e4bd193a5d3a436e91dfa9ebd69f2e60126243b0af7'
  version '0.1.0'

  bottle :unneeded

  def install

    # Don't need Windows files
    rm_f Dir['bin/*.bat']

    libexec.install %w[bin lib]
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/spin", '--help'
  end
end