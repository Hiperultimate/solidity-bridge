// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {HampToken} from "../src/HampToken.sol";

contract HampTokenScript is Script {
    HampToken public token;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        token = new HampToken();

        vm.stopBroadcast();
    }
}
