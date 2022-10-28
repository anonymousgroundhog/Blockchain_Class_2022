var MyContract = artifacts.require("Calculator");

module.exports = function(deployer) {
  deployer.deploy(MyContract);
};
