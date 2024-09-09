{ pkgs ? import ../. {} }:
with pkgs;
with rosPackages.humble;

mkShell {
  nativeBuildInputs = [
    (buildEnv {
      paths = [
        ros-core
        colcon
        rosdep
        geometry-msgs
      ];
    })
  ];
}
