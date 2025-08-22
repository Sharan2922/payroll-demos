# Payroll Demo – Web3 Smart Contract + Frontend

A minimal full-stack Web3 payroll demo showcasing:
- **Solidity Smart Contract** for managing employees and automated salary payments.
- **Hardhat** for development and deployment.
- **Ethers.js + MetaMask** frontend with a simple UI.

Deployed contract: **`0x84aCb26ee63E7B9a85BAdd40625ad3227c8004aC`** (Ethereum network)

---

## Features

- Add employee (address + salary in ETH).
- Pay employee directly from the contract.
- Wallet connection with MetaMask.
- Displays connected account and deployed contract address.

---

## Project Structure

```

payroll-demo/
├── contracts/          # Solidity contracts
├── scripts/            # Deployment scripts
├── frontend/           # Static frontend files
│   ├── index.html
│   └── constants/
│       └── Payroll.json  # ABI + deployed address
├── hardhat.config.js
├── package.json
└── README.md

````

---

## Prerequisites

- **Node.js** (>=16)
- **MetaMask** browser extension
- **Git** & **Hardhat**

---

## Smart Contract – Quick Start

1. Install dependencies:
    ```bash
    npm install
    ```
2. Compile contracts:
    ```bash
    npx hardhat compile
    ```
3. Deploy contract:
    ```bash
    npx hardhat run scripts/deploy.js --network sepolia
    ```
4. After deployment, update:
    - `frontend/constants/Payroll.json` with the new **address** and **ABI**.

---

## Frontend Demo (Local)

1. Go to frontend folder:
    ```bash
    cd frontend
    ```
2. Serve static files (any static server):
    ```bash
    npx serve .
    ```
3. Open `http://localhost:3000` in your browser.

---

## About

This is a **demo project** built for showcasing Web3 payroll automation with smart contracts.  
Built with ❤️ using **Solidity, Hardhat, and Ethers.js**.
 
