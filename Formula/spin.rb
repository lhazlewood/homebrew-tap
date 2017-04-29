class Spin < Formula

  desc 'A command-line tool for service and resource orchestration.'
  homepage 'https://github.com/lhazlewood/spin'
  url 'http://repo1.maven.org/maven2/com/leshazlewood/spin/spin/0.2.0/spin-0.2.0.zip'
  sha256 '56ca4942d727410b9c95b84ba877fb8d966d88a29d9bac81d0c10ea434695516'
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
