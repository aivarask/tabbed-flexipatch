{
  inputs = { };
  outputs = { self, ... }@inputs: {
    overlays.default = final: prev: {
      tabbed = prev.st.overrideAttrs (_oldAttrs: {
        src = ./.;
        conf = ./config.h;
      });
    };
  };
}
