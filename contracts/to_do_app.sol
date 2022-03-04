// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract To_do_app {
    uint256 public taskCount = 0;
    uint256 public userCount = 0;

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

    struct User {
        uint256 id;
        string name;
        string email;
        string profile;
    }

    mapping(uint256 => User) public users;
    mapping(uint256 => Task) public tasks;

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

        createUser("jonathan", "jonathan@gmail.com", "profile");
    }

    function createTasks(
        string memory _title,
        string memory _content,
        string memory _start_time,
        string memory _end_time,
        string memory _owner_name,
        string memory _owner_email,
        string memory _date,
        string memory _progress // uint256 _id
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

    function createUser(
        string memory _name,
        string memory _email,
        string memory _profile
    ) public payable {
        userCount++;
        users[userCount] = User(userCount, _name, _email, _profile);
    }

    function updateTaskStatus(uint256 _task_id) public payable {
        tasks[_task_id].completed = !tasks[_task_id].completed;
    }

    function deleteTask(uint256 _task_id) public payable {
        delete tasks[_task_id];
    }
}
