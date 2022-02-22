const To_do_app = artifacts.require("To_do_app");

module.exports = function (deployer) {
  deployer.deploy(To_do_app);
};
