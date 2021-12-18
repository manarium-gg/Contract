// SPDX-License-Identifier: MIT

pragma solidity 0.8.4;

// CAUTION
// This version of SafeMath should only be used with Solidity 0.8 or later,
// because it relies on the compiler's built in overflow checks.

/**
 * @dev Wrappers over Solidity's arithmetic operations.
 *
 * NOTE: `SafeMath` is no longer needed starting with Solidity 0.8. The compiler
 * now has built in overflow checking.
 */
library SafeMath {
    /**
     * @dev Returns the addition of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function tryAdd(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            uint256 c = a + b;
            if (c < a) return (false, 0);
            return (true, c);
        }
    }

    /**
     * @dev Returns the substraction of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function trySub(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            if (b > a) return (false, 0);
            return (true, a - b);
        }
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function tryMul(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            // Gas optimization: this is cheaper than requiring 'a' not being zero, but the
            // benefit is lost if 'b' is also tested.
            // See: https://github.com/OpenZeppelin/openzeppelin-contracts/pull/522
            if (a == 0) return (true, 0);
            uint256 c = a * b;
            if (c / a != b) return (false, 0);
            return (true, c);
        }
    }

    /**
     * @dev Returns the division of two unsigned integers, with a division by zero flag.
     *
     * _Available since v3.4._
     */
    function tryDiv(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            if (b == 0) return (false, 0);
            return (true, a / b);
        }
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers, with a division by zero flag.
     *
     * _Available since v3.4._
     */
    function tryMod(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            if (b == 0) return (false, 0);
            return (true, a % b);
        }
    }

    /**
     * @dev Returns the addition of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `+` operator.
     *
     * Requirements:
     *
     * - Addition cannot overflow.
     */
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        return a + b;
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting on
     * overflow (when the result is negative).
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        return a - b;
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `*` operator.
     *
     * Requirements:
     *
     * - Multiplication cannot overflow.
     */
    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        return a * b;
    }

    /**
     * @dev Returns the integer division of two unsigned integers, reverting on
     * division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator.
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        return a / b;
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * reverting when dividing by zero.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(uint256 a, uint256 b) internal pure returns (uint256) {
        return a % b;
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting with custom message on
     * overflow (when the result is negative).
     *
     * CAUTION: This function is deprecated because it requires allocating memory for the error
     * message unnecessarily. For custom revert reasons use {trySub}.
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(
        uint256 a,
        uint256 b,
        string memory errorMessage
    ) internal pure returns (uint256) {
        unchecked {
            require(b <= a, errorMessage);
            return a - b;
        }
    }

    /**
     * @dev Returns the integer division of two unsigned integers, reverting with custom message on
     * division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator. Note: this function uses a
     * `revert` opcode (which leaves remaining gas untouched) while Solidity
     * uses an invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(
        uint256 a,
        uint256 b,
        string memory errorMessage
    ) internal pure returns (uint256) {
        unchecked {
            require(b > 0, errorMessage);
            return a / b;
        }
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * reverting with custom message when dividing by zero.
     *
     * CAUTION: This function is deprecated because it requires allocating memory for the error
     * message unnecessarily. For custom revert reasons use {tryMod}.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(
        uint256 a,
        uint256 b,
        string memory errorMessage
    ) internal pure returns (uint256) {
        unchecked {
            require(b > 0, errorMessage);
            return a % b;
        }
    }
}

// SPDX-License-Identifier: MIT

pragma solidity 0.8.4;

/**
 * @dev Provides information about the current execution context, including the
 * sender of the transaction and its data. While these are generally available
 * via msg.sender and msg.data, they should not be accessed in such a direct
 * manner, since when dealing with meta-transactions the account sending and
 * paying for execution may not be the actual sender (as far as an application
 * is concerned).
 *
 * This contract is only required for intermediate, library-like contracts.
 */
abstract contract Context {
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        return msg.data;
    }
}

// SPDX-License-Identifier: MIT

pragma solidity 0.8.4;

/**
 * @dev Collection of functions related to the address type
 */
library Address {
    /**
     * @dev Returns true if `account` is a contract.
     *
     * [IMPORTANT]
     * ====
     * It is unsafe to assume that an address for which this function returns
     * false is an externally-owned account (EOA) and not a contract.
     *
     * Among others, `isContract` will return false for the following
     * types of addresses:
     *
     *  - an externally-owned account
     *  - a contract in construction
     *  - an address where a contract will be created
     *  - an address where a contract lived, but was destroyed
     * ====
     */
    function isContract(address account) internal view returns (bool) {
        // This method relies on extcodesize, which returns 0 for contracts in
        // construction, since the code is only stored at the end of the
        // constructor execution.

        uint256 size;
        assembly {
            size := extcodesize(account)
        }
        return size > 0;
    }

    /**
     * @dev Replacement for Solidity's `transfer`: sends `amount` wei to
     * `recipient`, forwarding all available gas and reverting on errors.
     *
     * https://eips.ethereum.org/EIPS/eip-1884[EIP1884] increases the gas cost
     * of certain opcodes, possibly making contracts go over the 2300 gas limit
     * imposed by `transfer`, making them unable to receive funds via
     * `transfer`. {sendValue} removes this limitation.
     *
     * https://diligence.consensys.net/posts/2019/09/stop-using-soliditys-transfer-now/[Learn more].
     *
     * IMPORTANT: because control is transferred to `recipient`, care must be
     * taken to not create reentrancy vulnerabilities. Consider using
     * {ReentrancyGuard} or the
     * https://solidity.readthedocs.io/en/v0.5.11/security-considerations.html#use-the-checks-effects-interactions-pattern[checks-effects-interactions pattern].
     */
    function sendValue(address payable recipient, uint256 amount) internal {
        require(address(this).balance >= amount, "Address: insufficient balance");

        (bool success, ) = recipient.call{value: amount}("");
        require(success, "Address: unable to send value, recipient may have reverted");
    }

    /**
     * @dev Performs a Solidity function call using a low level `call`. A
     * plain `call` is an unsafe replacement for a function call: use this
     * function instead.
     *
     * If `target` reverts with a revert reason, it is bubbled up by this
     * function (like regular Solidity function calls).
     *
     * Returns the raw returned data. To convert to the expected return value,
     * use https://solidity.readthedocs.io/en/latest/units-and-global-variables.html?highlight=abi.decode#abi-encoding-and-decoding-functions[`abi.decode`].
     *
     * Requirements:
     *
     * - `target` must be a contract.
     * - calling `target` with `data` must not revert.
     *
     * _Available since v3.1._
     */
    function functionCall(address target, bytes memory data) internal returns (bytes memory) {
        return functionCall(target, data, "Address: low-level call failed");
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`], but with
     * `errorMessage` as a fallback revert reason when `target` reverts.
     *
     * _Available since v3.1._
     */
    function functionCall(
        address target,
        bytes memory data,
        string memory errorMessage
    ) internal returns (bytes memory) {
        return functionCallWithValue(target, data, 0, errorMessage);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but also transferring `value` wei to `target`.
     *
     * Requirements:
     *
     * - the calling contract must have an ETH balance of at least `value`.
     * - the called Solidity function must be `payable`.
     *
     * _Available since v3.1._
     */
    function functionCallWithValue(
        address target,
        bytes memory data,
        uint256 value
    ) internal returns (bytes memory) {
        return functionCallWithValue(target, data, value, "Address: low-level call with value failed");
    }

    /**
     * @dev Same as {xref-Address-functionCallWithValue-address-bytes-uint256-}[`functionCallWithValue`], but
     * with `errorMessage` as a fallback revert reason when `target` reverts.
     *
     * _Available since v3.1._
     */
    function functionCallWithValue(
        address target,
        bytes memory data,
        uint256 value,
        string memory errorMessage
    ) internal returns (bytes memory) {
        require(address(this).balance >= value, "Address: insufficient balance for call");
        require(isContract(target), "Address: call to non-contract");

        (bool success, bytes memory returndata) = target.call{value: value}(data);
        return verifyCallResult(success, returndata, errorMessage);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but performing a static call.
     *
     * _Available since v3.3._
     */
    function functionStaticCall(address target, bytes memory data) internal view returns (bytes memory) {
        return functionStaticCall(target, data, "Address: low-level static call failed");
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-string-}[`functionCall`],
     * but performing a static call.
     *
     * _Available since v3.3._
     */
    function functionStaticCall(
        address target,
        bytes memory data,
        string memory errorMessage
    ) internal view returns (bytes memory) {
        require(isContract(target), "Address: static call to non-contract");

        (bool success, bytes memory returndata) = target.staticcall(data);
        return verifyCallResult(success, returndata, errorMessage);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but performing a delegate call.
     *
     * _Available since v3.4._
     */
    function functionDelegateCall(address target, bytes memory data) internal returns (bytes memory) {
        return functionDelegateCall(target, data, "Address: low-level delegate call failed");
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-string-}[`functionCall`],
     * but performing a delegate call.
     *
     * _Available since v3.4._
     */
    function functionDelegateCall(
        address target,
        bytes memory data,
        string memory errorMessage
    ) internal returns (bytes memory) {
        require(isContract(target), "Address: delegate call to non-contract");

        (bool success, bytes memory returndata) = target.delegatecall(data);
        return verifyCallResult(success, returndata, errorMessage);
    }

    /**
     * @dev Tool to verifies that a low level call was successful, and revert if it wasn't, either by bubbling the
     * revert reason using the provided one.
     *
     * _Available since v4.3._
     */
    function verifyCallResult(
        bool success,
        bytes memory returndata,
        string memory errorMessage
    ) internal pure returns (bytes memory) {
        if (success) {
            return returndata;
        } else {
            // Look for revert reason and bubble it up if present
            if (returndata.length > 0) {
                // The easiest way to bubble the revert reason is using memory via assembly

                assembly {
                    let returndata_size := mload(returndata)
                    revert(add(32, returndata), returndata_size)
                }
            } else {
                revert(errorMessage);
            }
        }
    }
}

// SPDX-License-Identifier: MIT

pragma solidity 0.8.4;

import "../utils/Context.sol";

/**
 * @dev Contract module which provides a basic access control mechanism, where
 * there is an account (an owner) that can be granted exclusive access to
 * specific functions.
 *
 * By default, the owner account will be the one that deploys the contract. This
 * can later be changed with {transferOwnership}.
 *
 * This module is used through inheritance. It will make available the modifier
 * `onlyOwner`, which can be applied to your functions to restrict their use to
 * the owner.
 */
abstract contract Ownable is Context {
    address private _owner;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Initializes the contract setting the deployer as the initial owner.
     */
    constructor() {
        _setOwner(_msgSender());
    }

    /**
     * @dev Returns the address of the current owner.
     */
    function owner() public view virtual returns (address) {
        return _owner;
    }

    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner() {
        require(owner() == _msgSender(), "Ownable: caller is not the owner");
        _;
    }

    /**
     * @dev Leaves the contract without owner. It will not be possible to call
     * `onlyOwner` functions anymore. Can only be called by the current owner.
     *
     * NOTE: Renouncing ownership will leave the contract without an owner,
     * thereby removing any functionality that is only available to the owner.
     */
    function renounceOwnership() public virtual onlyOwner {
        _setOwner(address(0));
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Can only be called by the current owner.
     */
    function transferOwnership(address newOwner) public virtual onlyOwner {
        require(newOwner != address(0), "Ownable: new owner is the zero address");
        _setOwner(newOwner);
    }

    function _setOwner(address newOwner) private {
        address oldOwner = _owner;
        _owner = newOwner;
        emit OwnershipTransferred(oldOwner, newOwner);
    }
}


// SPDX-License-Identifier: MIT

pragma solidity 0.8.4;

/**
 * @dev Interface of the ERC20 standard as defined in the EIP.
 */
interface IERC20 {
    /**
     * @dev Returns the amount of tokens in existence.
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the amount of tokens owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev Moves `amount` tokens from the caller's account to `recipient`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transfer(address recipient, uint256 amount) external returns (bool);

    /**
     * @dev Returns the remaining number of tokens that `spender` will be
     * allowed to spend on behalf of `owner` through {transferFrom}. This is
     * zero by default.
     *
     * This value changes when {approve} or {transferFrom} are called.
     */
    function allowance(address owner, address spender) external view returns (uint256);

    /**
     * @dev Sets `amount` as the allowance of `spender` over the caller's tokens.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * IMPORTANT: Beware that changing an allowance with this method brings the risk
     * that someone may use both the old and the new allowance by unfortunate
     * transaction ordering. One possible solution to mitigate this race
     * condition is to first reduce the spender's allowance to 0 and set the
     * desired value afterwards:
     * https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
     *
     * Emits an {Approval} event.
     */
    function approve(address spender, uint256 amount) external returns (bool);

    /**
     * @dev Moves `amount` tokens from `sender` to `recipient` using the
     * allowance mechanism. `amount` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(
        address sender,
        address recipient,
        uint256 amount
    ) external returns (bool);

    /**
     * @dev Emitted when `value` tokens are moved from one account (`from`) to
     * another (`to`).
     *
     * Note that `value` may be zero.
     */
    event Transfer(address indexed from, address indexed to, uint256 value);

    /**
     * @dev Emitted when the allowance of a `spender` for an `owner` is set by
     * a call to {approve}. `value` is the new allowance.
     */
    event Approval(address indexed owner, address indexed spender, uint256 value);
}


// SPDX-License-Identifier: MIT

pragma solidity 0.8.4;

import "../IERC20.sol";

/**
 * @dev Interface for the optional metadata functions from the ERC20 standard.
 *
 * _Available since v4.1._
 */
interface IERC20Metadata is IERC20 {
    /**
     * @dev Returns the name of the token.
     */
    function name() external view returns (string memory);

    /**
     * @dev Returns the symbol of the token.
     */
    function symbol() external view returns (string memory);

    /**
     * @dev Returns the decimals places of the token.
     */
    function decimals() external view returns (uint8);
}


// SPDX-License-Identifier: MIT

pragma solidity 0.8.4;


interface IDEXFactory {
    function createPair(address tokenA, address tokenB) external returns (address pair);
}

interface IDEXRouter {
    function factory() external pure returns (address);
    function WETH() external pure returns (address);

    function addLiquidity(
        address tokenA,
        address tokenB,
        uint amountADesired,
        uint amountBDesired,
        uint amountAMin,
        uint amountBMin,
        address to,
        uint deadline
    ) external returns (uint amountA, uint amountB, uint liquidity);

    function addLiquidityETH(
        address token,
        uint amountTokenDesired,
        uint amountTokenMin,
        uint amountETHMin,
        address to,
        uint deadline
    ) external payable returns (uint amountToken, uint amountETH, uint liquidity);

    function swapExactTokensForTokensSupportingFeeOnTransferTokens(
        uint amountIn,
        uint amountOutMin,
        address[] calldata path,
        address to,
        uint deadline
    ) external;

    function swapExactETHForTokensSupportingFeeOnTransferTokens(
        uint amountOutMin,
        address[] calldata path,
        address to,
        uint deadline
    ) external payable;

    function swapExactTokensForETHSupportingFeeOnTransferTokens(
        uint amountIn,
        uint amountOutMin,
        address[] calldata path,
        address to,
        uint deadline
    ) external;
}

// SPDX-License-Identifier: MIT

pragma solidity 0.8.4;

interface IDividendDistributor {
    function setShare(address shareholder, uint256 amount) external;
    function deposit() external payable;
    function claimDividend(address shareholder) external;
    function getUnpaidEarnings(address shareholder) external view returns(uint256);
    function getRealisedEarnings(address shareholder) external view returns(uint256);
}


// SPDX-License-Identifier: MIT
pragma solidity 0.8.4;

interface ILiquidityRestrictor {
	function assureByAgent(
		address token,
		address from,
		address to
	) external returns (bool allow, string memory message);

	function assureLiquidityRestrictions(address from, address to)
		external
		returns (bool allow, string memory message);
}

interface IAntisnipe {
	function assureCanTransfer(
		address sender,
		address from,
		address to,
		uint256 amount
	) external returns (bool response);
}


// SPDX-License-Identifier: MIT

pragma solidity 0.8.4;

import "./IERC20.sol";
import "./extensions/IERC20Metadata.sol";
import "../../utils/Context.sol";

/**
 * @dev Implementation of the {IERC20} interface.
 *
 * This implementation is agnostic to the way tokens are created. This means
 * that a supply mechanism has to be added in a derived contract using {_mint}.
 * For a generic mechanism see {ERC20PresetMinterPauser}.
 *
 * TIP: For a detailed writeup see our guide
 * https://forum.zeppelin.solutions/t/how-to-implement-erc20-supply-mechanisms/226[How
 * to implement supply mechanisms].
 *
 * We have followed general OpenZeppelin Contracts guidelines: functions revert
 * instead returning `false` on failure. This behavior is nonetheless
 * conventional and does not conflict with the expectations of ERC20
 * applications.
 *
 * Additionally, an {Approval} event is emitted on calls to {transferFrom}.
 * This allows applications to reconstruct the allowance for all accounts just
 * by listening to said events. Other implementations of the EIP may not emit
 * these events, as it isn't required by the specification.
 *
 * Finally, the non-standard {decreaseAllowance} and {increaseAllowance}
 * functions have been added to mitigate the well-known issues around setting
 * allowances. See {IERC20-approve}.
 */
contract ERC20 is Context, IERC20, IERC20Metadata {
    mapping(address => uint256) private _balances;

    mapping(address => mapping(address => uint256)) private _allowances;

    uint256 private _totalSupply;

    string private _name;
    string private _symbol;

    /**
     * @dev Sets the values for {name} and {symbol}.
     *
     * The default value of {decimals} is 18. To select a different value for
     * {decimals} you should overload it.
     *
     * All two of these values are immutable: they can only be set once during
     * construction.
     */
    constructor(string memory name_, string memory symbol_) {
        _name = name_;
        _symbol = symbol_;
    }

    /**
     * @dev Returns the name of the token.
     */
    function name() public view virtual override returns (string memory) {
        return _name;
    }

    /**
     * @dev Returns the symbol of the token, usually a shorter version of the
     * name.
     */
    function symbol() public view virtual override returns (string memory) {
        return _symbol;
    }

    /**
     * @dev Returns the number of decimals used to get its user representation.
     * For example, if `decimals` equals `2`, a balance of `505` tokens should
     * be displayed to a user as `5.05` (`505 / 10 ** 2`).
     *
     * Tokens usually opt for a value of 18, imitating the relationship between
     * Ether and Wei. This is the value {ERC20} uses, unless this function is
     * overridden;
     *
     * NOTE: This information is only used for _display_ purposes: it in
     * no way affects any of the arithmetic of the contract, including
     * {IERC20-balanceOf} and {IERC20-transfer}.
     */
    function decimals() public view virtual override returns (uint8) {
        return 18;
    }

    /**
     * @dev See {IERC20-totalSupply}.
     */
    function totalSupply() public view virtual override returns (uint256) {
        return _totalSupply;
    }

    /**
     * @dev See {IERC20-balanceOf}.
     */
    function balanceOf(address account) public view virtual override returns (uint256) {
        return _balances[account];
    }

    /**
     * @dev See {IERC20-transfer}.
     *
     * Requirements:
     *
     * - `recipient` cannot be the zero address.
     * - the caller must have a balance of at least `amount`.
     */
    function transfer(address recipient, uint256 amount) public virtual override returns (bool) {
        _transfer(_msgSender(), recipient, amount);
        return true;
    }

    /**
     * @dev See {IERC20-allowance}.
     */
    function allowance(address owner, address spender) public view virtual override returns (uint256) {
        return _allowances[owner][spender];
    }

    /**
     * @dev See {IERC20-approve}.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     */
    function approve(address spender, uint256 amount) public virtual override returns (bool) {
        _approve(_msgSender(), spender, amount);
        return true;
    }

    /**
     * @dev See {IERC20-transferFrom}.
     *
     * Emits an {Approval} event indicating the updated allowance. This is not
     * required by the EIP. See the note at the beginning of {ERC20}.
     *
     * Requirements:
     *
     * - `sender` and `recipient` cannot be the zero address.
     * - `sender` must have a balance of at least `amount`.
     * - the caller must have allowance for ``sender``'s tokens of at least
     * `amount`.
     */
    function transferFrom(
        address sender,
        address recipient,
        uint256 amount
    ) public virtual override returns (bool) {
        _transfer(sender, recipient, amount);

        uint256 currentAllowance = _allowances[sender][_msgSender()];
        require(currentAllowance >= amount, "ERC20: transfer amount exceeds allowance");
        unchecked {
            _approve(sender, _msgSender(), currentAllowance - amount);
        }

        return true;
    }

    /**
     * @dev Atomically increases the allowance granted to `spender` by the caller.
     *
     * This is an alternative to {approve} that can be used as a mitigation for
     * problems described in {IERC20-approve}.
     *
     * Emits an {Approval} event indicating the updated allowance.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     */
    function increaseAllowance(address spender, uint256 addedValue) public virtual returns (bool) {
        _approve(_msgSender(), spender, _allowances[_msgSender()][spender] + addedValue);
        return true;
    }

    /**
     * @dev Atomically decreases the allowance granted to `spender` by the caller.
     *
     * This is an alternative to {approve} that can be used as a mitigation for
     * problems described in {IERC20-approve}.
     *
     * Emits an {Approval} event indicating the updated allowance.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     * - `spender` must have allowance for the caller of at least
     * `subtractedValue`.
     */
    function decreaseAllowance(address spender, uint256 subtractedValue) public virtual returns (bool) {
        uint256 currentAllowance = _allowances[_msgSender()][spender];
        require(currentAllowance >= subtractedValue, "ERC20: decreased allowance below zero");
        unchecked {
            _approve(_msgSender(), spender, currentAllowance - subtractedValue);
        }

        return true;
    }

    /**
     * @dev Moves `amount` of tokens from `sender` to `recipient`.
     *
     * This internal function is equivalent to {transfer}, and can be used to
     * e.g. implement automatic token fees, slashing mechanisms, etc.
     *
     * Emits a {Transfer} event.
     *
     * Requirements:
     *
     * - `sender` cannot be the zero address.
     * - `recipient` cannot be the zero address.
     * - `sender` must have a balance of at least `amount`.
     */
    function _transfer(
        address sender,
        address recipient,
        uint256 amount
    ) internal virtual {
        require(sender != address(0), "ERC20: transfer from the zero address");
        require(recipient != address(0), "ERC20: transfer to the zero address");

        _beforeTokenTransfer(sender, recipient, amount);

        uint256 senderBalance = _balances[sender];
        require(senderBalance >= amount, "ERC20: transfer amount exceeds balance");
        unchecked {
            _balances[sender] = senderBalance - amount;
        }
        _balances[recipient] += amount;

        emit Transfer(sender, recipient, amount);

        _afterTokenTransfer(sender, recipient, amount);
    }

    /** @dev Creates `amount` tokens and assigns them to `account`, increasing
     * the total supply.
     *
     * Emits a {Transfer} event with `from` set to the zero address.
     *
     * Requirements:
     *
     * - `account` cannot be the zero address.
     */
    function _mint(address account, uint256 amount) internal virtual {
        require(account != address(0), "ERC20: mint to the zero address");

        _beforeTokenTransfer(address(0), account, amount);

        _totalSupply += amount;
        _balances[account] += amount;
        emit Transfer(address(0), account, amount);

        _afterTokenTransfer(address(0), account, amount);
    }

    /**
     * @dev Destroys `amount` tokens from `account`, reducing the
     * total supply.
     *
     * Emits a {Transfer} event with `to` set to the zero address.
     *
     * Requirements:
     *
     * - `account` cannot be the zero address.
     * - `account` must have at least `amount` tokens.
     */
    function _burn(address account, uint256 amount) internal virtual {
        require(account != address(0), "ERC20: burn from the zero address");

        _beforeTokenTransfer(account, address(0), amount);

        uint256 accountBalance = _balances[account];
        require(accountBalance >= amount, "ERC20: burn amount exceeds balance");
        unchecked {
            _balances[account] = accountBalance - amount;
        }
        _totalSupply -= amount;

        emit Transfer(account, address(0), amount);

        _afterTokenTransfer(account, address(0), amount);
    }

    /**
     * @dev Sets `amount` as the allowance of `spender` over the `owner` s tokens.
     *
     * This internal function is equivalent to `approve`, and can be used to
     * e.g. set automatic allowances for certain subsystems, etc.
     *
     * Emits an {Approval} event.
     *
     * Requirements:
     *
     * - `owner` cannot be the zero address.
     * - `spender` cannot be the zero address.
     */
    function _approve(
        address owner,
        address spender,
        uint256 amount
    ) internal virtual {
        require(owner != address(0), "ERC20: approve from the zero address");
        require(spender != address(0), "ERC20: approve to the zero address");

        _allowances[owner][spender] = amount;
        emit Approval(owner, spender, amount);
    }

    /**
     * @dev Hook that is called before any transfer of tokens. This includes
     * minting and burning.
     *
     * Calling conditions:
     *
     * - when `from` and `to` are both non-zero, `amount` of ``from``'s tokens
     * will be transferred to `to`.
     * - when `from` is zero, `amount` tokens will be minted for `to`.
     * - when `to` is zero, `amount` of ``from``'s tokens will be burned.
     * - `from` and `to` are never both zero.
     *
     * To learn more about hooks, head to xref:ROOT:extending-contracts.adoc#using-hooks[Using Hooks].
     */
    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 amount
    ) internal virtual {}

    /**
     * @dev Hook that is called after any transfer of tokens. This includes
     * minting and burning.
     *
     * Calling conditions:
     *
     * - when `from` and `to` are both non-zero, `amount` of ``from``'s tokens
     * has been transferred to `to`.
     * - when `from` is zero, `amount` tokens have been minted for `to`.
     * - when `to` is zero, `amount` of ``from``'s tokens have been burned.
     * - `from` and `to` are never both zero.
     *
     * To learn more about hooks, head to xref:ROOT:extending-contracts.adoc#using-hooks[Using Hooks].
     */
    function _afterTokenTransfer(
        address from,
        address to,
        uint256 amount
    ) internal virtual {}
}

// SPDX-License-Identifier: MIT

pragma solidity 0.8.4;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "@openzeppelin/contracts/utils/Address.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "./core/interfaces/IDex.sol";
import "./core/interfaces/ILiquidityRestrictor.sol";
import "./core/DividendDistributor.sol";
import "./core/interfaces/IDividendDistributor.sol";


contract Manarium is ERC20, Ownable
{
    using SafeMath for uint256;
    using Address for address;

    // WBNB MAINNET: 0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c
    address constant WBNB = 0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c;
    
    address public prizePoolWallet = 0x3e44881b4BC060FC3cF202b796147022Cd8e80C3;
    address public developmentWallet = 0x1664a715B15345C50bdd3b92Bf3EB7a4E4d39B4A;
    address constant public REFERRAL_WALLET = 0x739F3d09fF6AD00610e1D5B34B21eA8Bf4F6C125;
    address constant public AIRDROP_WALLET = 0x38D457F0BAA0aa3cC6Cf0496e9eb12870a2AecdF;

    address private _pair;
    
    IDEXRouter private _router;    
    IDividendDistributor private _distributor;

    IAntisnipe public antisnipe = IAntisnipe(address(0));
    ILiquidityRestrictor public liquidityRestrictor = ILiquidityRestrictor(0xeD1261C063563Ff916d7b1689Ac7Ef68177867F2);

    uint256 public buyTax = 5; // 5%
    uint256 public sellTax = 8; // 8%

    uint256 public prizePoolProcent = 50; // 50% Threshold tax
    uint256 public distributionProcent = 25; // 25% Threshold tax
    uint256 public developmentProcent = 25; // 25% Threshold tax

    uint256 public swapThreshold = 1000 * 10 ** 18; // 1000 
    uint256 constant public PROCENT_DENOMINATOR = 100; // 100%

    bool public antisnipeEnabled = true;
   bool public liquidityRestrictionEnabled = true;

    bool public feesEnabled = true;
    bool private _inSwap;    

    mapping(address => bool) private _isExcludedFromFees;
    mapping(address => bool) private _isExcludedFromDividends;
    mapping(address => bool) private _isBurneable;
    mapping(address => bool) private _tournaments;

    event AntisnipeDisabled(uint256 timestamp, address user);
	event LiquidityRestrictionDisabled(uint256 timestamp, address user);
	event AntisnipeAddressChanged(address addr);
	event LiquidityRestrictionAddressChanged(address addr);

    event SendTokensForDividends(uint256 amount);
    event SendTokensForRewards(uint256 amount);
    event Burned(uint256 amount);

    modifier swapping() 
    {
        _inSwap = true;
        _; 
        _inSwap = false; 
    }

    receive() external payable {}

    constructor() ERC20("Manarium", "ARI"){

        // MAINNET 0xcF0feBd3f17CEf5b47b0cD257aCf6025c5BFf3b7 - APESWAP
        _router = IDEXRouter(0xcF0feBd3f17CEf5b47b0cD257aCf6025c5BFf3b7);
        _pair = IDEXFactory(_router.factory()).createPair(WBNB, address(this));
        _distributor = new DividendDistributor(address(_router));

        excludeFromFeesAndDividends(address(this), true);
        excludeFromFeesAndDividends(address(0), true);
        excludeFromFeesAndDividends(msg.sender, true);
        excludeFromFeesAndDividends(prizePoolWallet, true);
        excludeFromFeesAndDividends(REFERRAL_WALLET, true);
        excludeFromFeesAndDividends(developmentWallet, true);
        excludeFromFeesAndDividends(AIRDROP_WALLET, true);

        _isBurneable[msg.sender] = true;
        _isExcludedFromDividends[address(_pair)] = true;
        _approve(address(this), address(_router), type(uint128).max);
        _mint(msg.sender, 100000000 * 10**18); // 100 000 000
    }

    
    function isExcludedFromFees(address account_) external view returns(bool){
        return _isExcludedFromFees[account_];
    }

    function isExcludedFromDividends(address account_) external view returns(bool){
        return _isExcludedFromDividends[account_];
    }

    function canBurn(address address_) public view returns(bool){
        return _isBurneable[address_];
    }

    function getUnpaidEarnings(address shareholder) external view returns (uint256) {
        return _distributor.getUnpaidEarnings(shareholder);
    }

    function getRealisedEarnings(address shareholder) external view returns (uint256) {
        return _distributor.getRealisedEarnings(shareholder);
    }

    function enableFees(bool state) external onlyOwner {
        feesEnabled = state;
    }

    function enableBurneable(address address_, bool state_) external onlyOwner {
        _isBurneable[address_] = state_;
    }

    function excludeFromFees(address account_, bool excluded_) public onlyOwner{
        _isExcludedFromFees[account_] = excluded_;
    }

    function multiExcludeFromFees(address[] memory account_, bool excluded_) public onlyOwner{
        require(account_.length > 0);
        for(uint256 i = 0; i < account_.length; i++){
            _isExcludedFromFees[account_[i]] = excluded_; 
        }
    }

    function excludeFromDividends(address account_, bool excluded_) public onlyOwner{
        _isExcludedFromDividends[account_] = excluded_; 
    }

    function multiExcludeFromDividends(address[] memory account_, bool excluded_) public onlyOwner{
        require(account_.length > 0);
        for(uint256 i = 0; i < account_.length; i++){
            _isExcludedFromDividends[account_[i]] = excluded_; 
        }
    }

    function excludeFromFeesAndDividends(address account_, bool excluded_) public onlyOwner{
        excludeFromFees(account_, excluded_);
        excludeFromDividends(account_, excluded_);
    }

    function multiExcludeFromFeesAndDividends(address[] memory account_, bool excluded_) public onlyOwner{
        require(account_.length > 0);
        for(uint256 i = 0; i < account_.length; i++){
            _isExcludedFromFees[account_[i]] = excluded_; 
            _isExcludedFromDividends[account_[i]] = excluded_; 
        }
    }

    function setAntisnipeDisable() external onlyOwner {
	require(antisnipeEnabled);
	antisnipeEnabled = false;
	emit AntisnipeDisabled(block.timestamp, msg.sender);
    }

    function setLiquidityRestrictorDisable() external onlyOwner {
	require(liquidityRestrictionEnabled);
	liquidityRestrictionEnabled = false;
	emit LiquidityRestrictionDisabled(block.timestamp, msg.sender);
   }

    function setAntisnipeAddress(address addr) external onlyOwner {
	antisnipe = IAntisnipe(addr);
	emit AntisnipeAddressChanged(addr);
    }

    function setLiquidityRestrictionAddress(address addr) external onlyOwner {
	liquidityRestrictor = ILiquidityRestrictor(addr);
	emit LiquidityRestrictionAddressChanged(addr);
    }

    function updateBuyTax(uint256 tax) external onlyOwner {
        buyTax = tax;
    }

    function updateSellTax(uint256 tax) external onlyOwner {
        sellTax = tax;
    }

    function updatePrizePoolWallet(address address_) external onlyOwner{
        require(address_ != prizePoolWallet);
        prizePoolWallet = address_;
    }

    function updateDevelopmentWallet(address address_) external onlyOwner{
        require(address_ != developmentWallet);
        developmentWallet = address_;
    }

    function updateThresholdProcents(uint256 prizePool, uint256 distribution, uint256 development) external onlyOwner {
        require(prizePool.add(distribution).add(development) <= 100);
        prizePoolProcent = prizePool;
        distributionProcent = distribution;
        developmentProcent = development;
    }


    function updateRouter(address newAddress) public onlyOwner {
        require(newAddress != address(_router), "The router already has that address");
        _router = IDEXRouter(newAddress);
        _pair = IDEXFactory(_router.factory()).createPair(WBNB, address(this));
        _isExcludedFromDividends[_pair] = true;
        _approve(address(this), address(_router), type(uint128).max);
    }

    function updateDividendContract(address _contract) public onlyOwner{
        require(_contract != address(_distributor), "The dividend already has that address");
        _distributor = IDividendDistributor(_contract);
    }

    function registerTournament(address tournament) external onlyOwner {
        require(tournament.isContract());
        require(!_tournaments[tournament]);
        _tournaments[tournament] = true;
        _isBurneable[tournament] = true;
        excludeFromFeesAndDividends(tournament, true);
    }

    function unregisterTournament(address tournament) external onlyOwner{
        require(_tournaments[tournament]);
        _tournaments[tournament] = false;
        _isBurneable[tournament] = false;
        excludeFromFeesAndDividends(tournament, false);
    }

    function setSwapBackSettings(uint256 amount) external onlyOwner {
        swapThreshold = amount;
    }


    function burn(uint256 amount) external{
        require(canBurn(msg.sender), "Burn can only burneable addresses");
        require(amount <= balanceOf(msg.sender));
        
        _burn(msg.sender, amount);
        emit Burned(amount);
    }

    function transferFrom(
        address sender,
        address recipient,
        uint256 amount
    ) public override returns (bool) {

        // Tokens from the Prize Pool Wallet do not require approve. 
        // They can only be used by tournament contracts (check on _transfer)
        if(sender == prizePoolWallet) {
            _transfer(sender, recipient, amount);
            return true;
        }
        
        // Tokens do not require approve to enter the tournament.
        // Only tournament contract 
        if(_tournaments[recipient] && _tournaments[msg.sender]){
            _transfer(sender, recipient, amount);
            return true;
        }

        return super.transferFrom(sender, recipient, amount);
    } 

    function _beforeTokenTransfer(
		address from,
		address to,
		uint256 amount
	) internal override {
		if (from == address(0) || to == address(0)) return;
		if (liquidityRestrictionEnabled && address(liquidityRestrictor) != address(0)) {
			(bool allow, string memory message) = liquidityRestrictor
				.assureLiquidityRestrictions(from, to);
			require(allow, message);
		}

		if (antisnipeEnabled && address(antisnipe) != address(0)) {
			require(antisnipe.assureCanTransfer(msg.sender, from, to, amount));
		}
	}

    function _transfer(
        address sender,
        address recipient,
        uint256 amount)
    internal override {
        if(sender == prizePoolWallet) require(_tournaments[msg.sender], 'Tokens from PRIZE_POOL_WALLET can sends only from tournaments.');

        if(shouldTakeFee(sender, recipient))
            amount = takeFee(sender, amount);

        if(shouldSwapBack())
            swapBack();

        super._transfer(sender, recipient, amount);
        
        if(!_isExcludedFromDividends[sender]){ try _distributor.setShare(sender, balanceOf(sender)) {} catch {} }
        if(!_isExcludedFromDividends[recipient]){ try _distributor.setShare(recipient, balanceOf(recipient)) {} catch {} }
    }

    function shouldTakeFee( address sender, address recipient) internal view returns(bool){
        return feesEnabled && !_isExcludedFromFees[sender] && !_isExcludedFromFees[recipient];
    }

    function takeFee(address sender, uint256 amount) internal returns (uint256) {
        uint256 tax = (sender == address(_pair)) ? buyTax : sellTax;
        uint256 _amountFee = amount.mul(tax).div(PROCENT_DENOMINATOR);
        super._transfer(sender, address(this), _amountFee);
        return amount.sub(_amountFee);
    }

    function shouldSwapBack() internal view returns (bool) {
        return msg.sender != _pair
               && !_inSwap
               && !_tournaments[msg.sender]
               && balanceOf(address(this)) >= swapThreshold;
    }

    function swapBack() internal swapping {
        
        uint256 amount = balanceOf(address(this));
        uint256 prizePoolAmount = amount.mul(prizePoolProcent).div(PROCENT_DENOMINATOR);
        
        uint256 amountBNB = swapTokens(amount.sub(prizePoolAmount));
        uint256 developmentAmount = amountBNB.mul(developmentProcent).div(PROCENT_DENOMINATOR.sub(prizePoolProcent));
        uint256 distributionAmount = amountBNB.sub(developmentAmount);

        sendToDevelopment(developmentAmount);
        sendToDistribution(distributionAmount);
        sendToPrizePool(prizePoolAmount);
    }

    function swapTokens(uint256 amount) private returns (uint256)
    {
        address[] memory path = new address[](2);
        path[0] = address(this);
        path[1] = WBNB;

        _router.swapExactTokensForETHSupportingFeeOnTransferTokens(
            amount,
            0,
            path,
            address(this),
            block.timestamp
        );

        uint256 amountBNB = address(this).balance;
        return amountBNB;
    }

    function sendToDevelopment(uint256 amount) private returns (bool){
        (bool success, ) = payable(developmentWallet).call{value: amount, gas: 30000}("");
        return success;
    }

    function sendToDistribution(uint256 amount) private{
        try _distributor.deposit{value: amount}() {} catch {}
        emit SendTokensForDividends(amount);
    }
    
    function sendToPrizePool(uint256 amount) private {
        _transfer(address(this), prizePoolWallet, amount);
        emit SendTokensForRewards(amount);
    }

    function claimDividend() external {
        _distributor.claimDividend(msg.sender);
    }
    
}

// SPDX-License-Identifier: MIT

pragma solidity 0.8.4;

import "./interfaces/IDividendDistributor.sol";
import "./interfaces/IDex.sol";
import "@openzeppelin/contracts/interfaces/IERC20.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";

contract DividendDistributor is IDividendDistributor {

    using SafeMath for uint256;

    address immutable _token;

    struct Share {
        uint256 amount;
        uint256 totalExcluded;
        uint256 totalRealised;
    }

    IDEXRouter immutable router;
    
    // WBNB MAINNET: 0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c
    address constant WBNB = 0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c;
    
    // USDT MAINNET: 0x55d398326f99059fF775485246999027B3197955
    address constant dividendToken = 0x55d398326f99059fF775485246999027B3197955;

    address[] private shareholders;
    mapping (address => uint256) private shareholderIndexes;
    mapping (address => uint256) private shareholderClaims;

    mapping (address => Share) public shares;

    uint256 public totalShares;
    uint256 public totalDividends;
    uint256 public totalDistributed;
    uint256 public dividendsPerShare;
    uint256 constant dividendsPerShareAccuracyFactor = 10 ** 36;

    modifier onlyToken() {
        require(msg.sender == _token); 
        _;
    }

    event DividendTokenUpdate(address dividendToken);
    constructor (address _router) {

        // MAINNET 0xcF0feBd3f17CEf5b47b0cD257aCf6025c5BFf3b7
        router = _router != address(0)
            ? IDEXRouter(_router)
            : IDEXRouter(0xcF0feBd3f17CEf5b47b0cD257aCf6025c5BFf3b7);
        _token = msg.sender; 
    }

    function setShare(address shareholder, uint256 amount) external override onlyToken {
        if(shares[shareholder].amount > 0){
            distributeDividend(shareholder);
        }

        if(amount > 0 && shares[shareholder].amount == 0){
            addShareholder(shareholder);
        }else if(amount == 0 && shares[shareholder].amount > 0){
            removeShareholder(shareholder);
        }

        totalShares = totalShares.sub(shares[shareholder].amount).add(amount);
        shares[shareholder].amount = amount;
        shares[shareholder].totalExcluded = getCumulativeDividends(shares[shareholder].amount);
    }

    function deposit() external payable override onlyToken {
        uint256 balanceBefore = IERC20(dividendToken).balanceOf(address(this));

        address[] memory path = new address[](2);
        path[0] = WBNB;
        path[1] = dividendToken;

        router.swapExactETHForTokensSupportingFeeOnTransferTokens{value: msg.value}(
            0,
            path,
            address(this),
            block.timestamp
        );

        uint256 amount = IERC20(dividendToken).balanceOf(address(this)).sub(balanceBefore);

        totalDividends = totalDividends.add(amount);
        dividendsPerShare = dividendsPerShare.add(dividendsPerShareAccuracyFactor.mul(amount).div(totalShares));
    }

    function distributeDividend(address shareholder) internal {
        if(shares[shareholder].amount == 0){ return; }

        uint256 amount = this.getUnpaidEarnings(shareholder);
        if(amount > 0){
            totalDistributed = totalDistributed.add(amount);
            bool status = IERC20(dividendToken).transfer(shareholder, amount);
            if(status){
                shareholderClaims[shareholder] = block.timestamp;
                shares[shareholder].totalRealised = shares[shareholder].totalRealised.add(amount);
                shares[shareholder].totalExcluded = getCumulativeDividends(shares[shareholder].amount);
            }
        }
    }
    
    function claimDividend(address shareholder) external override onlyToken {
        distributeDividend(shareholder);
    }

    function getUnpaidEarnings(address shareholder) override external view returns (uint256) {
        if(shares[shareholder].amount == 0){ return 0; }

        uint256 shareholderTotalDividends = getCumulativeDividends(shares[shareholder].amount);
        uint256 shareholderTotalExcluded = shares[shareholder].totalExcluded;

        if(shareholderTotalDividends <= shareholderTotalExcluded){ return 0; }

        return shareholderTotalDividends.sub(shareholderTotalExcluded);
    }

    function getRealisedEarnings(address shareholder) override external view returns (uint256) {
        return shares[shareholder].totalRealised;
    }

    function getCumulativeDividends(uint256 share) internal view returns (uint256) {
        return share.mul(dividendsPerShare).div(dividendsPerShareAccuracyFactor);
    }

    function addShareholder(address shareholder) internal {
        shareholderIndexes[shareholder] = shareholders.length;
        shareholders.push(shareholder);
    }

    function removeShareholder(address shareholder) internal {
        shareholders[shareholderIndexes[shareholder]] = shareholders[shareholders.length-1];
        shareholderIndexes[shareholders[shareholders.length-1]] = shareholderIndexes[shareholder];
        shareholders.pop();
    }

    function getDividendToken() external pure returns (address) {
        return dividendToken;
    }

}
