Final Payroll DApp (clean, tested)

Requirements: Node 16+ (Node 18+ recommended), npm

1) Install dependencies (project root)
   npm install

2) Compile contracts
   npx hardhat compile

3) Start local node (terminal A)
   npx hardhat node

4) Deploy to local (terminal B)
   npx hardhat run scripts/deploy.js --network localhost
   - This will print the deployed address and write frontend/constants/Payroll.json

5) Serve frontend (terminal C)
   npm run serve
   Open http://localhost:3000, connect MetaMask to Localhost 8545, then add/pay an employee.

Notes:
- The deploy script writes ABI+address to frontend/constants/Payroll.json so the static UI can load it.
- If you run into dependency errors, try removing node_modules & package-lock.json then `npm install` again.
