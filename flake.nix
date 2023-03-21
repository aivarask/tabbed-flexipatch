{
  inputs = { };
  outputs = { self, ... }@inputs: {
    overlays.default = final: prev: {
      st = prev.st.overrideAttrs (_oldAttrs: {
        src = ./.;
        conf = ./config.h;
      });
    };
  };
}
