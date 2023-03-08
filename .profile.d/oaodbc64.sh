LD_LIBRARY_PATH=${HOME}/.apt/usr/lib/netsuite/odbc/bin/lib64${LD_LIBRARY_PATH:+":"}${LD_LIBRARY_PATH:-""}
export LD_LIBRARY_PATH
OASDK_ODBC_HOME=${HOME}/.apt/usr/lib/netsuite/odbc/bin/lib64; export OASDK_ODBC_HOME
ODBCINI=${HOME}/.apt/usr/lib/netsuite/odbc/bin/odbc64_custom.ini; export ODBCINI

echo "[ODBC Data Sources]
NetSuite=NetSuite ODBC Drivers 8.1

[NetSuite]
Driver=${HOME}/.apt/usr/lib/netsuite/odbc/bin/lib64/ivoa27.so
Description=Connect to your NetSuite account
Host=${NETSUITE_ACCOUNT_ID}.connect.api.netsuite.com
Port=1708
ServerDataSource=NetSuite.com
Encrypted=1
AllowSinglePacketLogout=1
Truststore=${HOME}/.apt/usr/lib/netsuite/odbc/bin/cert/ca3.cer
CustomProperties=AccountID=${NETSUITE_ACCOUNT_ID};RoleID=3

[NetSuite2]
Driver=${HOME}/.apt/usr/lib/netsuite/odbc/bin/lib64/ivoa27.so
Description=Connect to your NetSuite account
Host=${NETSUITE_ACCOUNT_ID}.connect.api.netsuite.com
Port=1708
ServerDataSource=NetSuite2.com
Encrypted=1
AllowSinglePacketLogout=1
Truststore=${HOME}/.apt/usr/lib/netsuite/odbc/bin/cert/ca3.cer
CustomProperties=AccountID=${NETSUITE_ACCOUNT_ID};RoleID=57

[ODBC]
Trace=0
IANAAppCodePage=4
TraceFile=odbctrace.out
TraceDll=${HOME}/.apt/usr/lib/netsuite/odbc/bin/lib64/ddtrc27.so
InstallDir=${HOME}/.apt/usr/lib/netsuite/odbc/bin
" > ${HOME}/.apt/usr/lib/netsuite/odbc/bin/odbc64_custom.ini
