# Brew formula for eb library and tools (EPWING format)

class Eb < Formula
  homepage ""
  url "ftp://ftp.sra.co.jp/pub/misc/eb/eb-4.4.3.tar.bz2"
  sha1 "1cc55c90fcac224bf299289e7a0fe1559f0761ab"

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    ebtools = %w[ebappendix ebfont ebinfo ebrefile ebstopcode ebunzip ebzip ebzipinfo]
    ebtools.each do |tool|
      system tool, "--version"
    end
  end
end
