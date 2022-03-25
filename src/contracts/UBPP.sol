pragma solidity ^0.5.0;
pragma experimental ABIEncoderV2;

contract UBPP {
  string public name;
  // uint public imageCount = 0;
  // uint public docCount = 0;
  // uint public mformCount = 0;
  // mapping(uint => Image) public images;
  // mapping(uint => Doc) public docs;
  // mapping(uint => Form) public mforms;
  // string public fullname = 'unanswered';
  // string public mail = 'unanswered';
  // string public phno = 'unanswered';
  // string public gender = 'unanswered';
  // string public date = 'unanswered';
  // string public height = 'unanswered';
  // string public weight = 'unanswered';
  // string public blood = 'unanswered';
  // string public vacc = 'unanswered';
  // string public all = 'unanswered';
  // string public pres = 'unanswered';
  // string public sym = 'unanswered';
  // string public trav = 'unanswered';
  // string public his = 'unanswered';
  // string public ename = 'unanswered';
  // string public eno = 'unanswered';
  // string public ex = 'unanswered';
  struct User {
    string username;
    string password;
    bool isUserLoggedIn;
    uint imageCount;
    uint docCount;
    uint mformCount;
    mapping(uint => Image) images;
    mapping(uint => Doc) docs;
    mapping(uint => Form) mforms;
    string fullname;
    string mail;
    string phno;
    string gender;
    string date;
    string height;
    string weight;
    string blood;
    string vacc;
    string all;
    string pres;
    string sym;
    string trav;
    string his;
    string ename;
    string eno;
    string ex;
  }

  mapping(address => User) public Users;

  function register(address _address, string memory _name, string memory _password) public returns (bool) {
    require(Users[_address] != msg.sender);
  }
//   struct MedicalForm {
// 	string fullname;
// 	string mail;
// 	string phno;
// 	string gender;
// 	string date;
// 	string height;
// 	string weight;
// 	string blood;
// 	string vacc;
// 	string all;
// 	string pres;
// 	string sym;
// 	string trav;
// 	string his;
// 	string ename;
// 	string eno;
// 	string ex;
// 	address payable author;
//   }
  
//   MedicalForm public form;
  
  Form public mform;

  

  struct Image {
    uint id;
    string hash;
    string description;
    uint tipAmount;
    address payable author;
  }

  struct Form {
    string formname;
  }

  struct Doc {
    uint id;
    string hash;
    string description;
    uint tipAmount;
    address payable author;
  }

  event ImageCreated(
    uint id,
    string hash,
    string description,
    uint tipAmount,
    address payable author
  );

  event DocCreated(
    uint id,
    string hash,
    string description,
    uint tipAmount,
    address payable author
  );

  event ImageTipped(
    uint id,
    string hash,
    string description,
    uint tipAmount,
    address payable author
  );

  event NameCreated(
    string name,
    address payable author
  );

  event FormCreated(
	string fullname,
	string mail,
	string phno,
	string gender,
	string date,
	string height,
	string weight,
	string blood,
	string vacc,
	string all,
	string pres,
	string sym,
	string trav,
	string his,
	string ename,
	string eno,
	string ex,
	address payable author
  );

  constructor() public {
    name = "UBPP";
	//name = "UBPP";
  }

  function testfunc() public returns (string memory) {
    return fullname;
  }

  function uploadImage(string memory _imgHash, string memory _description) public {
    // Make sure the image hash exists
    require(bytes(_imgHash).length > 0);
    // Make sure image description exists
    require(bytes(_description).length > 0);
    // Make sure uploader address exists
    require(msg.sender!=address(0));

    // Increment image id
    imageCount ++;

    // Add Image to the contract
    images[imageCount] = Image(imageCount, _imgHash, _description, 0, msg.sender);
    // Trigger an event
    emit ImageCreated(imageCount, _imgHash, _description, 0, msg.sender);
  }

  function uploadName(string memory _name) public returns (string memory){
    require(bytes(_name).length > 0);
    mformCount++;
    require(msg.sender!=address(0));
    mforms[mformCount] = Form(_name);
    fullname = _name;
    //emit NameCreated(_name, msg.sender);

    return fullname;
  }

  /*function uploadMail(string memory _name) public returns (string memory){
    require(bytes(_name).length > 0);

    require(msg.sender!=address(0));
    mforms[mformCount] = Form(_name);
    mail = _name;
    //emit NameCreated(_name, msg.sender);

    return mail;
  }*/
  
  function uploadPhno(string memory _name) public returns (string memory){
    require(bytes(_name).length > 0);
    mformCount++;
    require(msg.sender!=address(0));
    mforms[mformCount] = Form(_name);
    phno = _name;
    //emit NameCreated(_name, msg.sender);

    return phno;
  }
  
  function uploadGender(string memory _name) public returns (string memory){
    require(bytes(_name).length > 0);
    mformCount++;
    require(msg.sender!=address(0));
    mforms[mformCount] = Form(_name);
    gender = _name;
    //emit NameCreated(_name, msg.sender);

    return gender;
  }
  
  /*function uploadDob(string memory _name) public returns (string memory){
    require(bytes(_name).length > 0);
    mformCount++;
    require(msg.sender!=address(0));
    mforms[mformCount] = Form(_name);
    date = _name;
    //emit NameCreated(_name, msg.sender);

    return date;
  }*/
  
  /*function uploadHeight(string memory _name) public returns (string memory){
    require(bytes(_name).length > 0);
    mformCount++;
    require(msg.sender!=address(0));
    mforms[mformCount] = Form(_name);
    height = _name;
    //emit NameCreated(_name, msg.sender);

    return height;
  }*/
  
  /*function uploadWeight(string memory _name) public returns (string memory){
    require(bytes(_name).length > 0);
    mformCount++;
    require(msg.sender!=address(0));
    mforms[mformCount] = Form(_name);
    weight = _name;
    //emit NameCreated(_name, msg.sender);

    return weight;
  }*/
  
  /*function uploadBg(string memory _name) public returns (string memory){
    require(bytes(_name).length > 0);
    mformCount++;
    require(msg.sender!=address(0));
    mforms[mformCount] = Form(_name);
    blood = _name;
    //emit NameCreated(_name, msg.sender);

    return blood;
  }*/
  
  /*function uploadVacc(string memory _name) public returns (string memory){
    require(bytes(_name).length > 0);
    mformCount++;
    require(msg.sender!=address(0));
    mforms[mformCount] = Form(_name);
    vacc = _name;
    //emit NameCreated(_name, msg.sender);

    return vacc;
  }*/
  
  /*function uploadAller(string memory _name) public returns (string memory){
    require(bytes(_name).length > 0);
    mformCount++;
    require(msg.sender!=address(0));
    mforms[mformCount] = Form(_name);
    all = _name;
    //emit NameCreated(_name, msg.sender);

    return all;
  }*/
  
  /*function uploadPres(string memory _name) public returns (string memory){
    require(bytes(_name).length > 0);
    mformCount++;
    require(msg.sender!=address(0));
    mforms[mformCount] = Form(_name);
    pres = _name;
    //emit NameCreated(_name, msg.sender);

    return pres;
  }*/
  
  /*function uploadSym(string memory _name) public returns (string memory){
    require(bytes(_name).length > 0);
    mformCount++;
    require(msg.sender!=address(0));
    mforms[mformCount] = Form(_name);
    sym = _name;
    //emit NameCreated(_name, msg.sender);

    return sym;
  }*/
  
  /*function uploadTrav(string memory _name) public returns (string memory){
    require(bytes(_name).length > 0);
    mformCount++;
    require(msg.sender!=address(0));
    mforms[mformCount] = Form(_name);
    trav = _name;
    //emit NameCreated(_name, msg.sender);

    return trav;
  }*/
  
  /*function uploadHist(string memory _name) public returns (string memory){
    require(bytes(_name).length > 0);
    mformCount++;
    require(msg.sender!=address(0));
    mforms[mformCount] = Form(_name);
    his = _name;
    //emit NameCreated(_name, msg.sender);

    return his;
  }*/
  
  /*function uploadEmNam(string memory _name) public returns (string memory){
    require(bytes(_name).length > 0);
    mformCount++;
    require(msg.sender!=address(0));
    mforms[mformCount] = Form(_name);
    ename = _name;
    //emit NameCreated(_name, msg.sender);

    return ename;
  }*/
  
  /*function uploadEmNo(string memory _name) public returns (string memory){
    require(bytes(_name).length > 0);
    mformCount++;
    require(msg.sender!=address(0));
    mforms[mformCount] = Form(_name);
    eno = _name;
    //emit NameCreated(_name, msg.sender);

    return eno;
  }*/
  
  /*function uploadExt(string memory _name) public returns (string memory){
    require(bytes(_name).length > 0);
    mformCount++;
    require(msg.sender!=address(0));
    mforms[mformCount] = Form(_name);
    ex = _name;
    //emit NameCreated(_name, msg.sender);

    return ex;
  }*/

// function uploadForm(string memory _fullname, string memory _mail, string memory _phno, string memory _gender,
// string memory _date, string memory _height, string memory _weight, string memory _blood, string memory _vacc, 
// string memory _all, string memory _pres, string memory _sym, string memory _trav, string memory _his, string memory _ename,
// string memory _eno, string memory _ex) public {
// // @notice Explain to an end user what this does
// // @dev Explain to a developer any extra details
// // @param Documents a parameter just like in doxygen (must be followed by parameter name)) 	
//  	// require(bytes(_fullname).length > 0);
//  	// require(bytes(_phno).length > 0);
//  	// require(bytes(_gender).length > 0);
//  	require(msg.sender!=address(0));
//  	form = MedicalForm(_fullname, _mail, _phno, _gender, _date, _height, _weight, _blood, _vacc, _all, _pres, _sym, 
// 	 _trav, _his, _ename, _eno, _ex, msg.sender);
//  	//emit FormCreated(_fullname, _phno, _gender, msg.sender);
// }

function uploadMedicalForm(string[] memory user_input) public {
	require(msg.sender!=address(0));
	fullname = user_input[0];  
	mail = user_input[1];
	phno = user_input[2];
	gender = user_input[3];
	date = user_input[4];
	height = user_input[5];
	weight = user_input[6];
	blood = user_input[7];
	vacc = user_input[8];
	all = user_input[9];
	pres = user_input[10];
	sym = user_input[11];
	trav = user_input[12];
	his = user_input[13];
	ename = user_input[14];
	eno = user_input[15];
	ex = user_input[16];
}

function uploadDoc(string memory _docHash, string memory _description) public {
  // Make sure the image hash exists
    require(bytes(_docHash).length > 0);
    // Make sure image description exists
    require(bytes(_description).length > 0);
    // Make sure uploader address exists
    require(msg.sender!=address(0));

    // Increment image id
    docCount ++;

    // Add Image to the contract
    docs[docCount] = Doc(docCount, _docHash, _description, 0, msg.sender);
    // Trigger an event
    //emit DocCreated(docCount, _docHash, _description, 0, msg.sender);
  }

  function tipImageOwner(uint _id) public payable {
    // Make sure the id is valid
    require(_id > 0 && _id <= imageCount);
    // Fetch the image
    Image memory _image = images[_id];
    // Fetch the author
    address payable _author = _image.author;
    // Pay the author by sending them Ether
    address(_author).transfer(msg.value);
    // Increment the tip amount
    _image.tipAmount = _image.tipAmount + msg.value;
    // Update the image
    images[_id] = _image;
    // Trigger an event
    //emit ImageTipped(_id, _image.hash, _image.description, _image.tipAmount, _author);
  }
}
