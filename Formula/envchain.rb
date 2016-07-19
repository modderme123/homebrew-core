class Envchain < Formula
  desc "Secure your credentials in environment variables"
  homepage "https://github.com/sorah/envchain"
  url "https://github.com/sorah/envchain/archive/v1.0.1.tar.gz"
  sha256 "09af1fe1cfba3719418f90d59c29c081e1f22b38249f0110305b657bd306e9ae"
  head "https://github.com/sorah/envchain.git"

  bottle do
    cellar :any_skip_relocation
    revision 1
    sha256 "27fed93070f18030b9f4d4713a8b2973ddeaf4f7edf9f25326cd1cd7345fa97d" => :el_capitan
    sha256 "261098a2972096a92f825e8a399564bf2992273ef4a1c56ee3a8341916cffcdb" => :yosemite
    sha256 "9b4326d307d24a9a9f5656ca6d74c5dc9d4a8de8e02cfe721d4e4d0fc50f987f" => :mavericks
  end

  def install
    system "make", "DESTDIR=#{prefix}", "install"
  end

  test do
    assert_match /envchain version #{version}/, shell_output("#{bin}/envchain 2>&1", 2)
  end
end
