{ hostName, ... }:
{
  imports = [
    ./${hostName}
    ./common
  ];
}
