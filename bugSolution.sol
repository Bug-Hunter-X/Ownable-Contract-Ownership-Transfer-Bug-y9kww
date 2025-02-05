function _transferOwnership(newOwner) internal {
  require(newOwner != address(0), "Ownable: new owner is the zero address");
  emit TransferOwnership(owner, newOwner);
  owner = newOwner;
}

function transferOwnership(newOwner) {
  _transferOwnership(newOwner); 
}
