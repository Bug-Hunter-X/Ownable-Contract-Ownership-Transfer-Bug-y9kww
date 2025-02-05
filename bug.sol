function transferOwnership(newOwner) {
  require(newOwner != address(0), "Ownable: new owner is the zero address");
  emit TransferOwnership(owner, newOwner);
  owner = newOwner; //This line causes the bug.  It should be using the _transferOwnership internal function
}