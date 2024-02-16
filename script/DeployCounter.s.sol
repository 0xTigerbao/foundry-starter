// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.24;

import "forge-std/Script.sol";
import "../src/Counter.sol";

contract DeployCounter is Script {
    function run() external {
        uint256 deployPrk = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployPrk);
        Counter counter = new Counter();
        console.log("counter has deployed at: ", address(counter));
        vm.stopBroadcast();
    }
}
