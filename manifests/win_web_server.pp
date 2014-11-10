class role::win_web_server {
  if $osfamily == 'windows' {
    include dotnet
    include chocolatey
    include profile::windows::baseline
    include profile::windows::iis
    include cmsapp
  }
}
