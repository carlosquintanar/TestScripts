$user = $args[0]

get-qaduser $user -IncludeAllProperties | select dn, DisplayName, 
  @{name="Title";expression={$_.title}}, 
  @{name="Login";expression={$_.name}}, 
  @{name="Workstation Type";expression={$_.otherLoginWorkstations}}, 
  @{name="BlackBerry";expression={$_.otherMobile}}, 
  @{name="Room Number (office field)";expression={$_.physicalDeliveryOfficeName}}, 
  @{name="Room Number";expression={$_.roomNumber}}, 
  @{name="Department";expression={$_.department}}, 
  @{name="Mailstop";expression={$_.postOfficeBox}}, 
  @{name="Phone extension";expression={$_.telephoneNumber}}, 
  @{name="Employee ID";expression={$_.employeeID}}, 
  @{name="Description";expression={$_.Description}}, 
  @{name="Manager";expression={$_.manager}} | fl

