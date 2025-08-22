// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Payroll {
    struct Employee {
        uint256 salary;
        bool exists;
    }

    mapping(address => Employee) public employees;
    address public owner;

    event EmployeeAdded(address indexed employee, uint256 salary);
    event Paid(address indexed employee, uint256 amount);

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }

    function addEmployee(address _employee, uint256 _salary) external onlyOwner {
        require(_employee != address(0), "zero addr");
        employees[_employee] = Employee(_salary, true);
        emit EmployeeAdded(_employee, _salary);
    }

    function pay(address _employee) external payable onlyOwner {
        Employee memory e = employees[_employee];
        require(e.exists, "Employee not found");
        require(msg.value == e.salary, "send exact salary");
        (bool ok, ) = payable(_employee).call{value: msg.value}("");
        require(ok, "transfer failed");
        emit Paid(_employee, msg.value);
    }

    receive() external payable {}
}
