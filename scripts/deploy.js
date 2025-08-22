const hre = require("hardhat");
const fs = require("fs");

async function main() {
  const Payroll = await hre.ethers.deployContract("Payroll");
  await Payroll.waitForDeployment();

  console.log("Payroll deployed to:", Payroll.target);

  // Save ABI + address to frontend
  const data = {
    address: Payroll.target,
    abi: JSON.parse(Payroll.interface.formatJson()),
  };

  fs.writeFileSync(
    "./frontend/constants/Payroll.json",
    JSON.stringify(data, null, 2)
  );
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
