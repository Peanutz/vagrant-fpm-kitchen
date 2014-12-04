class Jsl < FPM::Cookery::Recipe
  description 'Javascript linter library'

  name 'jsl'
  version '0.3.0'
  homepage 'http://www.javascriptlint.com/'
  source "http://www.javascriptlint.com/download/jsl-#{version}-src.tar.gz"
  sha256 '86f16792d71fc59b96f65eca65b1b7466dc046efe6d5ac04c6632f1315e83cfa'

  def build
    safesystem "cd src && make -f Makefile.ref"
  end

  def install
    bin('jsl').install_p 'src/Linux_All_DBG.OBJ/jsl', 'jsl' 
  end
end
