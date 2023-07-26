
// File: erc20/IERC20.sol


pragma solidity >=0.8.0 < 0.9.0;

/**
 * @title ERC20 interface
 * @dev see https://github.com/ethereum/EIPs/issues/20
 */
interface IERC20 {
  function totalSupply() external view returns (uint256);

  function balanceOf(address _owner) external view returns (uint256);

  function allowance(address owner, address spender)
    external view returns (uint256);

  function transfer(address to, uint256 value) external returns (bool);

  function approve(address spender, uint256 value)
    external returns (bool);

  function transferFrom(address from, address to, uint256 value)
    external returns (bool);

  event Transfer(
    address indexed from,
    address indexed to,
    uint256 value
  );

  event Approval(
    address indexed owner,
    address indexed spender,
    uint256 value
  );
}
// File: erc20/ERC20.sol


pragma solidity >=0.8.0 <0.9.0;


contract ERC20 is IERC20 {
    uint256 private _totalSupply;
    mapping(address => uint256) private _balance;

    mapping(address => mapping(address => uint256)) private _allowed;
    function totalSupply() public view returns (uint256) {
        return _totalSupply;
    }
    function balanceOf(address _owner) external view returns (uint256) {
        return _balance[_owner];
    }
    function approve(address spender, uint256 value)
    external returns (bool) {
        require(spender != address(0));
        _allowed[msg.sender][spender] = value;
        emit Approval(msg.sender, spender, value);
        return true;
    }
    function allowance(address owner, address spender)
    external view returns (uint256) {
        return _allowed[owner][spender];
    }
    function transfer(address to, uint256 value) external returns (bool) {
        require(_balance[msg.sender] >= value);
        require(to != address(0));
        _balance[msg.sender] = _balance[msg.sender] - value;
        _balance[to] += value;
        emit Transfer(msg.sender, to, value);
        return true;
    }
    function transferFrom(address from, address to, uint256 value)
    external returns (bool) {
        require(to != address(0));
        require(_balance[from] >= value);
        require(_allowed[from][msg.sender] >= value);
        _balance[from] -= value;
        _balance[to] += value;
        _allowed[from][msg.sender] = _allowed[from][msg.sender] - value;
        emit Transfer(from, to, value);
        return true;

    }
}