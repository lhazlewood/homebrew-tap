class Spin < Formula

  desc 'A command-line tool for service and resource orchestration.'
  homepage 'https://github.com/lhazlewood/spin'
  url 'http://repo1.maven.org/maven2/com/leshazlewood/spin/spin/0.2.0/spin-0.2.0.zip'
  sha256 '918b24dab989ffda6c3c867aa227fced8f0d6c0da0c838ba61ae7f3e258175b5'
  version '0.2.0'

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
