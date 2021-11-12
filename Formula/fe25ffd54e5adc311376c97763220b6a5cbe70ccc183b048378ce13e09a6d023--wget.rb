# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Fe25ffd54e5adc311376c97763220b6a5cbe70ccc183b048378ce13e09a6d023-Wget < Formula
  desc "Internet file retriever"
  homepage "https://www.gnu.org/software/wget/"
  url "https://github.com/wobushishanpao/homebrew-wb/blob/master/fe25ffd54e5adc311376c97763220b6a5cbe70ccc183b048378ce13e09a6d023--wget-1.21.2.catalina.bottle.tar.gz"
  sha256 "cd1d0fbec394c95dc56fdf4fd0479bf6d334ee3e2989b4047a45bbd8df617f29"
  license "GPL-3.0-or-later"

  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    system "./configure", *std_configure_args, "--disable-silent-rules"
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test fe25ffd54e5adc311376c97763220b6a5cbe70ccc183b048378ce13e09a6d023--wget`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
