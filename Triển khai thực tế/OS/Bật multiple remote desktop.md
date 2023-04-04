Các bước thực hiện: 

1. Press the Windows key + R to open the Run dialog box.
2. Type "gpedit.msc" and press Enter to open the Local Group Policy Editor.
3. In the left pane, navigate to Computer Configuration > Administrative Templates > Windows Components > Remote Desktop Services > Remote Desktop Session Host > Connections.
4. In the right pane, double-click the "Restrict Remote Desktop Services users to a single Remote Desktop Services session" policy.
5. Select the "Disabled" option and click OK.
6. Close the Local Group Policy Editor.
7. Open the Remote Desktop Connection client and connect to the server as the user who needs to have multiple sessions.
8. You should now be able to open multiple remote desktop sessions for the same user on the server.