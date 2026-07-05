class Cdkm < Formula
  desc "Terragrunt-style parallel fan-out for AWS CDK — deploy to every account from your laptop"
  homepage "https://github.com/nguyenquangkhai/cdk-manager"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nguyenquangkhai/cdk-manager/releases/download/v0.5.0/cdk-manager_0.5.0_darwin_arm64.tar.gz"
      sha256 "0fb2d207a1b62c6e80e329c3911ba1ad148635eb444b0b71eb2433e05ad60cf0"
    end
    on_intel do
      url "https://github.com/nguyenquangkhai/cdk-manager/releases/download/v0.5.0/cdk-manager_0.5.0_darwin_amd64.tar.gz"
      sha256 "9ed880459463021d3683bfaac0e8ef431c94248df3d9d2541ba2336def710f32"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nguyenquangkhai/cdk-manager/releases/download/v0.5.0/cdk-manager_0.5.0_linux_arm64.tar.gz"
      sha256 "521d4340eaa8afc42ceffb9733d7d54330f0d1a2f04d9a0bd7a7f79a5e145f2b"
    end
    on_intel do
      url "https://github.com/nguyenquangkhai/cdk-manager/releases/download/v0.5.0/cdk-manager_0.5.0_linux_amd64.tar.gz"
      sha256 "39969441888b7e95fa1b14d71a68061da76873e8d0fbaf38328a4002d1558bce"
    end
  end

  def install
    bin.install "cdkm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cdkm --version")
  end
end
