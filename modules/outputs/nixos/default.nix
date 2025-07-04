{ inputs }: {
  peter-legion =
    import ../../../linux/hosts/x86-64/peter-legion { inherit inputs; };
}
