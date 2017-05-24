class Spin < Formula

  desc 'A command-line tool for service and resource orchestration.'
  homepage 'https://github.com/lhazlewood/spin'
  url 'http://repo1.maven.org/maven2/com/leshazlewood/spin/spin/0.3.0/spin-0.3.0.zip'
  sha256 'a67c8e1f69ec221014a7b18515609f5ca977f382b8a365b7b1d6acca6f8633df'
  version '0.3.0'

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
