$ESC = [char]27;
$limeFg = "$ESC[38;2;150;255;50m";
$navyBg = "$ESC[48;2;0;0;128m";
$limeBg = "$ESC[48;2;100;200;70m";
$yellowBg = "$ESC[48;2;200;200;70m";
$orangeBg = "$ESC[48;2;230;130;95m";
$whiteFg = "$ESC[38;2;255;255;255m";
$blackFg = "$ESC[38;2;0;0;0m";
$bold = "$ESC[1m";
$reset = "$ESC[0m";

function prompt {
  $gitBranch = "";
  $time = Get-Date -Format "hh:mm:ss tt";
  if (Test-Path .git) {
    $gitBranch = " $(git rev-parse --abbrev-ref HEAD) ";
  }
  "$bold$whiteFg$navyBg [$time] " +
  "$blackFg$limeBg @$Env:username " +
  "$yellowBg $(Get-Location) $orangeBg$gitBranch$reset`n" +
  "$bold$limeFg$ $reset"
}