// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract To_do_app {
    uint256 public taskCount = 0;

    struct Task {
        uint256 id;
        string content;
        bool remind;
        string start_time;
        string end_time;
        bool completed;
        string owner_name;
        string owner_email;
    }

    mapping(uint256 => Task) public tasks;

    constructor() {
        createTasks(
            "welcome to the to do Dapp",
            "00:00",
            "00:00",
            "Jonathan",
            "jonathan@gmail.com"
        );
    }

    function createTasks(
        string memory _content,
        string memory _start_time,
        string memory _end_time,
        string memory _owner_name,
        string memory _owner_email
    ) public {
        taskCount++;

        tasks[taskCount] = Task(
            taskCount,
            _content,
            true,
            _start_time,
            _end_time,
            false,
            _owner_name,
            _owner_email
        );
    }
}
