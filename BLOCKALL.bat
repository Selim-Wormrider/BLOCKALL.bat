::***********|BLOCKALL.bat|*********************************************************************
::*************|JULY 2020|**********************************************************************
::**********************************************************************************************
::****************|A|******************  BBBB    EEEEE        K   K   IIIII    N   N    DDDD   *
::********|Windows Batch File|*********  B   B   E            K  K      I      NN  N    D   D  *
::********|Recursive Directory|********  BBBB    EEEE         KKK       I      N N N    D   D  *
::*******|Firewall Rules Script|*******  B   B   E            K  K      I      N  NN    D   D  *
::*************************************  BBBB    EEEEE        K   K   IIIII    N   N    DDDD   *
::*************************************                                                        *
::*******|Only Blocks Out-bound|*******  TTTTT    OOO         EEEEE     A       CCC     H   H  *
::******|Connections  By Default|******  T T T   O   O        E        A A     C        H   H  *
::***|Uncomment Inbound If Desired|****    T     O   O        EEEE    A   A    C        HHHHH  *
::*************************************    T     O   O        E       AAAAA    C        H   H  *
::*************************************    T      OOO         EEEEE   A   A     CCC     H   H  *
::*********|Distribute Freely|*********                                                        *
::****|With or Without Attribution|****   OOO    TTTTT   H   H   EEEEE   RRRR     ---   ---    *
::*************************************  O   O   T T T   H   H   E       R   R   /   \ /   \   *
::*************************************  O   O     T     HHHHH   EEEE    RRRR   | ALW X AYS |  *
::***************|By|******************  O   O     T     H   H   E       R   R   \   / \   /   *
::***********|TICKLENUTTS|*************   OOO      T     H   H   EEEEE   R   R    ---   ---    *
::**********************************************************************************************
::**********************************************************************************************
::**********************************************************************************************
::
:: Extensions may be added to or replace *.exe if desired
for /R %%a in (*.exe)do(
::
:: Uncomment the following line to block inbound connections
netsh advfirewall add rule name="Block Inbound %%a" dir=in program="%%a" action=block
::
:: Uncomment the following line to block outbound connections
netsh advfirewall add rule name="Block Outbound %%a" dir=out program="%%a" action=block
::
:: You may also configure this script to allow connections
::
:: Uncomment the following line to allow inbound connections
::netsh advfirewall add rule name="Allow Inbound %%a" dir=in program="%%a" action=allow
::
:: Uncomment the following line to allow outbound connections
::netsh advfirewall add rule name="Allow Outbound %%a" dir=out program="%%a" action=allow
)