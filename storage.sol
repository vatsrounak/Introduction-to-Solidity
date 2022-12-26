// This line specifies the version of the Solidity compiler that should be used to compile the contract
pragma solidity 0.8.8;

// This line defines the SimpleStorage contract
contract SimpleStorage {
    // This line defines a state variable called favoriteNumber that is of type uint256
    uint256 favoriteNumber;

    // This line defines a structure called People with two fields: favoriteNumber and name
    struct People {
        uint256 favoriteNumber;
        string name;
    }
    // This line defines an array called people of type People
    People[] public people;

    // This line defines a mapping called nameToFavoriteNumber from strings to uint256 values
    mapping(string => uint256) public nameToFavoriteNumber;

    // This function stores the input _favoriteNumber in the favoriteNumber state variable
    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }
    
    // This function returns the value of the favoriteNumber state variable
    function retrieve() public view returns (uint256){
        return favoriteNumber;
    }

    // This function adds a new person to the people array and stores their name and favorite number in the nameToFavoriteNumber mapping
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        // This line adds a new People structure to the people array with the input name and favorite number
        people.push(People(_favoriteNumber, _name));
        // This line stores the input name and favorite number in the nameToFavoriteNumber mapping
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
