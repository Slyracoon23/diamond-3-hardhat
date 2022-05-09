# Do you need pure or view for external readups?

 function name() external view returns (string memory) {
        return LibDiamond.name();
    }  

    or
      function name() external pure returns (string memory) {
        return LibDiamond.name();
    } 

# Do you need to use () for lookup

 return LibDiamond.name();
 or
  return LibDiamond.name; Correct variables are not callable functions internall probably but exernally are probablly