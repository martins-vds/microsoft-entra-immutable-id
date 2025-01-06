# Get-UserByImmutableId

This repository contains a script to get user details by their immutable ID.

## Prerequisites

- PowerShell 5.1 or later
- MSOnline Module

## Installation

1. **Install PowerShell 5.1 or later:**
    - Download and install from the [official PowerShell website](https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell).

2. **Install AzureAD Module:**
    - Open PowerShell as an administrator and run the following command:

      ```powershell
      Install-Module -Name MSOnline
      ```

## Usage

1. Clone the repository:

    ```powershell
    git clone https://github.com/martins-vds/Get-UserByImmutableId.git
    cd .\Get-UserByImmutableId\
    ```

2. **Run the script:**
    - Open PowerShell and navigate to the directory where the script is located.
    - Execute the script by running:

      ```powershell
      .\Get-UserByImmutableId.ps1 -ImmutableId <ImmutableId>
      ```

## Parameters

- `ImmutableId`: The immutable ID of the user you want to retrieve.

## Output

The script will return the following user details formatted as a table:

- `ImmutableID`
- `ObjectId`
- `UserPrincipalName`
- `DisplayName`

## Example

```powershell
.\Get-UserByImmutableId.ps1 -ImmutableId "test"

# Output
ImmutableId ObjectId UserPrincipalName DisplayName
----------- -------- ----------------- -----------
test        test     test              test

```

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
