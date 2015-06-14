{ stdenv 
}:

stdenv.mkDerivation rec {
  name = "samp";
  version = "0.0.1";

  src = ./.;

  installFlags = "PREFIX=$(out)";

  buildInputs = [ ];

  meta = with stdenv.lib; {
    description = "Sample input given some probability";
    homepage = "https://github.com/jb55/samp";
    maintainers = with maintainers; [ jb55 ];
    license = licenses.mit;
  };
}
