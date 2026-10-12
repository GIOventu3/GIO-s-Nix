{ config, pkgs, ... }: {

  imports = [
    ./hardware-configuration.nix
  ];

  # Install Firefox with Privacy Hardening + 144Hz/Hardware Acceleration Fixes
  programs.firefox = {
    enable = true;
    policies = {
      DisableTelemetry = true;
      DisableFirefoxStudies = true;
      DisablePocket = true;
      EnableTrackingProtection = {
        Value = true;
        Cryptomining = true;
        Fingerprinting = true;
      };
