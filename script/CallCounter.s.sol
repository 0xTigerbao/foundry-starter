// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.24;
import "forge-std/Script.sol";
import "../src/Counter.sol";

contract CallCounter is Script {
    function run() external {
        uint256 deployPrk = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployPrk);
        Counter counter = Counter(0x8295Ef326D21aa083D06574694D1566b6B5F08A8);
        counter.increment();
        console.log("counter number is: ", counter.number());
        vm.stopBroadcast();
    }
}
