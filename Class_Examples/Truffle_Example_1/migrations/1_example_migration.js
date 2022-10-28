var MyContract = artifacts.require("Calculator");

module.exports = function(deployer) {
  // deployment steps
  deployer.deploy(MyContract);
};
