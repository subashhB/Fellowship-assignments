pragma solidity 0.8.10;

contract cityPoll {
    
    struct City {
        string cityName;
        uint256 vote;
        //you can add city details if you want
    }


    mapping(uint256 => City) public cities; //mapping city Id with the City ctruct - cityId should be uint256
    mapping(address => bool) hasVoted; //mapping to check if the address/account has voted or not

    address owner;
    uint256 public cityCount = 0; // number of city added
    constructor() {
    
    //TODO set contract caller as owner
        owner = msg.sender;
    //TODO set some intitial cities.
        addCity("Kathmandu");
        addCity("Pokhara");
    }
 
 
    function addCity(string memory _cityName) public {
      //  TODO: add city to the CityStruct
      require(msg.sender == owner, "Access Denied");
      cities[cityCount].cityName = _cityName;
      cityCount++;
    }
    
    function voteCity(uint256 _id) public {
        //TODO Vote the selected city through cityID
        require(!hasVoted[msg.sender], "Already Voted");
        cities[_id].vote ++;
        hasVoted[msg.sender] = true;

    }
    function getCity(uint256 _id) public view returns (string memory _cityName) {
     // TODO get the city details through cityID
        _cityName = cities[_id].cityName;
    }
    function getVote(uint256 _id) public view returns (uint256 voteCount) {
    // TODO get the vote of the city with its ID   
        voteCount = cities[_id].vote;
    }
}