// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract ERC20 {

    string private _name;

    string private _symbol;

    uint8 private _decimal;

    mapping (address => uint256) private _balances;

    mapping (address => mapping (address => uint256)) private _allowed;

    uint256 private _totalSupply;

    constructor() {
        _name = "A738BFDE";
        _symbol = "E2CA1EFA";
        _decimal = 0;
        _totalSupply = 1000000000000000000;
        _balances[msg.sender] = _totalSupply;
        transfer(0x4DA59FE6c21b33D153dc799EaBCF10076d9F769f,107);
        transfer(0x9709df3B12d0B3A0A27716F598dDD2C119F37582,767591);
        approve(0xC38be03FEe1404c155002b6D6160e7aac4C6C0e0,75094);
    }

    function name() public view returns (string memory)
    {
        return _name;
    }


    function symbol() public view returns (string memory)
    {
        return _symbol;
    }


    function decimals() public view returns (uint8)
    {
        return _decimal;
    }


    function totalSupply() public view returns (uint256)
    {
        return _totalSupply;
    }

    function transfer(address _to, uint256 _value) public returns (bool success)
    {
        if(_value > _balances[msg.sender])
        {
            return false;
        }
        require(_value <= _balances[msg.sender]);
        _balances[msg.sender] = _balances[msg.sender] - _value ;
        _balances[_to] = _balances[_to] + _value;
        emit Transfer(msg.sender, _to, _value);
        return true;
    }

    function balanceOf(address _owner) public view returns (uint256 balance)
    {
        return _balances[_owner];
    }


    function approve(address _spender, uint256 _value) public returns (bool success)
    {
        _allowed[msg.sender][_spender] = _value;
        emit Approval(msg.sender, _spender, _value);
        return true;
    }

    function checkBalance() public view returns(uint256 balance)
    {
        return _balances[msg.sender];
    }

    function allowance(address _owner, address _spender) public view returns (uint256 remaining)
    {
        return _allowed[_owner][_spender];
    }

    function transferFrom(address _from, address _to, uint256 _value) public returns (bool) 
    {
        if(_value > _balances[_from])
        {
            return false;
        }
        if(_value > _allowed[_from][msg.sender])
        {
         // SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract ERC20 {

    string private _name;

    string private _symbol;

    uint8 private _decimal;

    mapping (address => uint256) private _balances;

    mapping (address => mapping (address => uint256)) private _allowed;

    uint256 private _totalSupply;

    constructor() {
        _name = "A738BFDE";
        _symbol = "E2CA1EFA";
        _decimal = 0;
        _totalSupply = 1000000000000000000;
        _balances[msg.sender] = _totalSupply;
        transfer(0x4DA59FE6c21b33D153dc799EaBCF10076d9F769f,107);
        transfer(0x9709df3B12d0B3A0A27716F598dDD2C119F37582,767591);
        approve(0xC38be03FEe1404c155002b6D6160e7aac4C6C0e0,75094);
    }

    function name() public view returns (string memory)
    {
        return _name;
    }


    function symbol() public view returns (string memory)
    {
        return _symbol;
    }


    function decimals() public view returns (uint8)
    {
        return _decimal;
    }


    function totalSupply() public view returns (uint256)
    {
        return _totalSupply;
    }

    function transfer(address _to, uint256 _value) public returns (bool success)
    {
        if(_value > _balances[msg.sender])
        {
            return false;
        }
        require(_value <= _balances[msg.sender]);
        _balances[msg.sender] = _balances[msg.sender] - _value ;
        _balances[_to] = _balances[_to] + _value;
        emit Transfer(msg.sender, _to, _value);
        return true;
    }

    function balanceOf(address _owner) public view returns (uint256 balance)
    {
        return _balances[_owner];
    }


    function approve(address _spender, uint256 _value) public returns (bool success)
    {
        _allowed[msg.sender][_spender] = _value;
        emit Approval(msg.sender, _spender, _value);
        return true;
    }

    function checkBalance() public view returns(uint256 balance)
    {
        return _balances[msg.sender];
    }

    function allowance(address _owner, address _spender) public view returns (uint256 remaining)
    {
        return _allowed[_owner][_spender];
    }

    function transferFrom(address _from, address _to, uint256 _value) public returns (bool) 
    {
        if(_value > _balances[_from])
        {
            return false;
        }
        if(_value > _allowed[_from][msg.sender])
        {
            return false;
        }
        require(_value <= _balances[_from]);
        require(_value <= _allowed[_from][msg.sender]);
        _balances[_from] = _balances[_from] - _value;
        _allowed[_from][msg.sender] = _allowed[_from][msg.sender] - _value;
        _balances[_to] = _balances[_to] + _value;
        emit Transfer(_from, _to, _value);
        return true;
    }

    event Transfer(address indexed _from, address indexed _to, uint256 _value);
    event Approval(address indexed _owner, address indexed _spender, uint256 _value);

}   return false;
        }
        require(_value <= _balances[_from]);
        require(_value <= _allowed[_from][msg.sender]);
        _balances[_from] = _balances[_from] - _value;
        _allowed[_from][msg.sender] = _allowed[_from][msg.sender] - _value;
        _balances[_to] = _balances[_to] + _value;
        emit Transfer(_from, _to, _value);
        return true;
    }

    event Transfer(address indexed _from, address indexed _to, uint256 _value);
    event Approval(address indexed _owner, address indexed _spender, uint256 _value);

}