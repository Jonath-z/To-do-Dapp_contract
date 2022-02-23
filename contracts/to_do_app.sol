// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract To_do_app {
    uint256 public taskCount = 0;
    uint256 public userCount = 0;

    struct User {
        uint256 id;
        string name;
        string email;
    }

    struct Task {
        uint256 id;
        string title;
        string content;
        string start_time;
        string end_time;
        bool remind;
        bool completed;
        string owner_name;
        string owner_email;
        string date;
        string progress;
    }

    mapping(uint256 => Task) public tasks;
    mapping(uint256 => User) public users;

    constructor() {
        createTasks(
            "First task",
            "welcome to the to do Dapp",
            "00:00",
            "00:00",
            "Jonathan",
            "jonathan@gmail.com",
            "Mon Jun 12 2023",
            "100"
        );

        createUser("jonathan", "jonathan@gmail.com");
    }

    function createTasks(
        string memory _title,
        string memory _content,
        string memory _start_time,
        string memory _end_time,
        string memory _owner_name,
        string memory _owner_email,
        string memory _date,
        string memory _progress
    ) public payable {
        taskCount++;

        tasks[taskCount] = Task(
            taskCount,
            _title,
            _content,
            _start_time,
            _end_time,
            true,
            false,
            _owner_name,
            _owner_email,
            _date,
            _progress
        );
    }

    function createUser(string memory _name, string memory _email)
        public
        payable
    {
        userCount++;
        users[userCount] = User(userCount, _name, _email);
    }
}
