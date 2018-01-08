# -*- ruby -*-

class PipSocos < Formula
  include Language::Python::Virtualenv

  desc 'CLI tool for controlling Sonos devices.'
  homepage 'http://python-soco.com/'
  url 'https://pypi.python.org/packages/8f/95/522c6a34c3fde45619492a14a2e7b0794cc16c57fac23bfd2dbf8995813d/socos-0.1.tar.gz'
  sha256 '9b6fa4e1f2ae9e344a6f2688431f8972c2050d3ffb88090b592f5fa464f50818'

  resource 'certifi' do
    url 'https://pypi.python.org/packages/23/3f/8be01c50ed24a4bd6b8da799839066ce0288f66f5e11f0367323467f0cbc/certifi-2017.11.5.tar.gz'
    sha256 '5ec74291ca1136b40f0379e1128ff80e866597e4e2c1e755739a913bbc3613c0'
  end

  resource 'chardet' do
    url 'https://pypi.python.org/packages/fc/bb/a5768c230f9ddb03acc9ef3f0d4a3cf93462473795d18e9535498c8f929d/chardet-3.0.4.tar.gz'
    sha256 '84ab92ed1c4d4f16916e05906b6b75a6c0fb5db821cc65e70cbd64a3e2a5eaae'
  end

  resource 'idna' do
    url 'https://pypi.python.org/packages/f4/bd/0467d62790828c23c47fc1dfa1b1f052b24efdf5290f071c7a91d0d82fd3/idna-2.6.tar.gz'
    sha256 '2c6a5de3089009e3da7c5dde64a141dbc8551d5b7f6cf4ed7c2568d0cc520a8f'
  end

  resource 'requests' do
    url 'https://pypi.python.org/packages/b0/e1/eab4fc3752e3d240468a8c0b284607899d2fbfb236a56b7377a329aa8d09/requests-2.18.4.tar.gz'
    sha256 '9c443e7324ba5b85070c4a818ade28bfabedf16ea10206da1132edaa6dda237e'
  end

  resource 'soco' do
    url 'https://pypi.python.org/packages/db/3d/5accc89b931b9959e8f5b736cdefc277151cd4c6fff4cad68f4d0d3cd4c4/soco-0.7.tar.gz'
    sha256 '9d2cf791939392a7ca4d4811d6448431e66279a6e6c4ee1c75e8079fa5d548a6'
  end

  resource 'urllib3' do
    url 'https://pypi.python.org/packages/ee/11/7c59620aceedcc1ef65e156cc5ce5a24ef87be4107c2b74458464e437a5d/urllib3-1.22.tar.gz'
    sha256 'cc44da8e1145637334317feebd728bd869a35285b93cbb4cca2577da7e62db4f'
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/socos", '--help'
  end
end
# EOF
