pragma solidity 0.4.11;
import "Factory.sol";
import "MultiSigWalletERC23.sol";


/// @title ERC23 firendly multisignature wallet factory - Allows creation of multisig wallet that can hold ERC23 Tokens.
/// @author Klaus Hott - <klaus@blockchainlabs.nz>
/// @author Stefan George - <stefan.george@consensys.net>
contract MultiSigWalletERC23Factory is Factory {

    /// @dev Allows verified creation of ERC23 firendly multisignature wallet.
    /// @param _owners List of initial owners.
    /// @param _required Number of required confirmations.
    /// @return Returns wallet address.
    function create(address[] _owners, uint _required)
        public
        returns (address wallet)
    {
        wallet = new MultiSigWalletERC23(_owners, _required);
        register(wallet);
    }
}
