pragma solidity 0.8.10;

contract Storage{
    uint256 number;
    int256 num;
    string name;
    // bytes32 _name;
    address  public owner;
    address public setter;
    // enum  action {completed,incompleted};
    struct Newdata{
        uint256 _num;
        bool iscompleted;
        string data;
    }

    Newdata public datas;
    // action public actions;
    mapping(address =>bool)  public isowner;

    constructor(){
        owner = msg.sender;
        isowner[msg.sender] =true;

    }

    function store(string memory _name) public {
        name = _name;
        setter = msg.sender;

    }
    function getvalue() public  view returns(uint256){
        return number;
    }

    function getName() public view returns(string memory){
        return name;
    }

}
