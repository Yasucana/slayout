slayout
 
: dialog
 
{
label = "Vessel Information";

	:row {
			
		: boxed_column {
		label = "Input Shell";
			:edit_box {
				key = "eb50";
				label = "Project Number";
				edit_width = 12;
				value = "";
			}
			spacer;

			:edit_box {
				key = "eb51";
				label = "Drawing Number";
				edit_width = 12;
				value = "";
			}
			spacer;

			:edit_box {
				key = "eb60";
				label = "Revision";
				edit_width = 12;
				value = "";
			}
			spacer;
			
			:popup_list {
				key = "pl1";
				list = "HE\nSE";
				label = "Are the head HE or SE?";
				edit_width = 12;
				value = "";
			}

			spacer;

			:popup_list {
				key = "pl2";
				list = "ID\nOD";
				label = "Is it designed to ID or OD?";
				edit_width = 12;
				value = "ID";
			}

			spacer;
			
			:edit_box {
				key = "eb70";
				label = "Shell Diameter";
				edit_width = 12;
				value = "";
			}
			spacer;

				:edit_box {
				key = "eb75";
				label = "Plate Thickness";
				edit_width = 12;
				value = "";
			}
			spacer;
		
			:edit_box {
				key = "eb80";
				label = "Number of Shells Required";
				edit_width = 12;
				value = "";
			}
			spacer;

			:edit_box {
				key = "eb90";
				label = "Long Seam Offset";
				edit_width = 12;
				value = "";
			}
			spacer;

			:popup_list {
				key = "pl3";
				list = "FS\nNS";
				label = "Is the long seam on the first shell FS or NS?";
				edit_width = 12;
				value = "FS";
			}
			spacer;

			

			:edit_box {
				key = "eb100";
				label = "Shell Cutting Length";
				edit_width = 12;
				value = "";
			}
			spacer;

			:row {
				:toggle {
					key = "tg30";
					label = "All Shells Same Width";
				}
				:toggle {
					key = "tg40";
					label = "Not All Shells Same Width";
				}
			}

				:edit_box {
					key = "eb120";
					label = "Shell Width";
					edit_width = 12;
					alignment = right;
					value = "";
				}
				
			:row {
				:edit_box {
					key = "eb130";
					label = "Shell #";
					edit_width = 5;
					alignment = right;
					value = "";
				}
				{}
				{}
				:edit_box {
					key = "eb140";
					label = "Shell Width";
					edit_width = 12;
					alignment = right;
					value = "";
				}
			}
			:row {
				:edit_box {
					key = "eb150";
					label = "Shell #";
					edit_width = 5;
					alignment = right;
					value = "";
				}
				{}
				{}
				:edit_box {
					key = "eb160";
					label = "Shell Width";
					edit_width = 12;
					alignment = right;
					value = "";
				}
			}
			:row {
				:edit_box {
					key = "eb170";
					label = "Shell #";
					edit_width = 5;
					alignment = right;
					value = "";
				}
				{}
				{}
				:edit_box {
					key = "eb180";
					label = "Shell Width";
					edit_width = 12;
					alignment = right;
					value = "";
				}
			}	
		spacer;
		
		: boxed_column {
			
				:row {
					: button {
						label = "Save";
						key = "save";
						mnemonic = "S";
						alignment = centered;
						fixed_width = 12;
					}
					: button {
						label = "Load";
						key = "load";
						mnemonic = "L";
						alignment = centered;
						fixed_width = 12;
					}
				}
			
		}}

	 	: boxed_column {
	 	label = "Input Nozzles";
			:row {
				{}{}
				: text {label = "Mark";}
				{}{}{}{}
				: text {label = "Size";}
				{}{}{}{}
				: text {label = "Rating";}
				{}{}{}
				: text {label = "Type";}
				{}{}{}{}
				: text {label = "Distance";}
				{}
				: text {label = "Location";}
				{}
				: text {label = "Datum";}
				{}{}
			}
			
			:row {
				: edit_box {key = "eb1a"; width = 5; value = "";}
				: edit_box {key = "eb1b"; width = 5; value = "";}
				: edit_box {key = "eb1c"; width = 5; value = "";}
				: edit_box {key = "eb1d"; width = 5; value = "";}
				: edit_box {key = "eb1e"; width = 5; value = "";}
				: popup_list
					{key = "eb1f"; list = "Top\nBottom\nNS\nFS"; width = 5; value = "Top";}
				: popup_list
					{key = "eb1g"; list = "Left\nRight"; width = 5; value = "Left";}
				
			}
			:row {
				: edit_box {key = "eb2a"; width = 5; value = "";}
				: edit_box {key = "eb2b"; width = 5; value = "";}
				: edit_box {key = "eb2c"; width = 5; value = "";}
				: edit_box {key = "eb2d"; width = 5; value = "";}
				: edit_box {key = "eb2e"; width = 5; value = "";}
				: popup_list
					{key = "eb2f"; list = "Top\nBottom\nNS\nFS"; width = 5; value = "Top";}
				: popup_list
					{key = "eb2g"; list = "Left\nRight"; width = 5; value = "Left";}	
			}
			:row {
				: edit_box {key = "eb3a"; width = 5; value = "";}
				: edit_box {key = "eb3b"; width = 5; value = "";}
				: edit_box {key = "eb3c"; width = 5; value = "";}
				: edit_box {key = "eb3d"; width = 5; value = "";}
				: edit_box {key = "eb3e"; width = 5; value = "";}
				: popup_list
					{key = "eb3f"; list = "Top\nBottom\nNS\nFS"; width = 5; value = "Top";}
				: popup_list
					{key = "eb3g"; list = "Left\nRight"; width = 5; value = "Left";}
			}
			:row {
				: edit_box {key = "eb4a"; width = 5; value = "";}
				: edit_box {key = "eb4b"; width = 5; value = "";}
				: edit_box {key = "eb4c"; width = 5; value = "";}
				: edit_box {key = "eb4d"; width = 5; value = "";}
				: edit_box {key = "eb4e"; width = 5; value = "";}
				: popup_list
					{key = "eb4f"; list = "Top\nBottom\nNS\nFS"; width = 5; value = "Top";}
				: popup_list
					{key = "eb4g"; list = "Left\nRight"; width = 5; value = "Left";}
			}
			:row {
				: edit_box {key = "eb5a"; width = 5; value = "";}
				: edit_box {key = "eb5b"; width = 5; value = "";}
				: edit_box {key = "eb5c"; width = 5; value = "";}
				: edit_box {key = "eb5d"; width = 5; value = "";}
				: edit_box {key = "eb5e"; width = 5; value = "";}
				: popup_list
					{key = "eb5f"; list = "Top\nBottom\nNS\nFS"; width = 5; value = "Top";}
				: popup_list
					{key = "eb5g"; list = "Left\nRight"; width = 5; value = "Left";}
			}
			:row {
				: edit_box {key = "eb6a"; width = 5; value = "";}
				: edit_box {key = "eb6b"; width = 5; value = "";}
				: edit_box {key = "eb6c"; width = 5; value = "";}
				: edit_box {key = "eb6d"; width = 5; value = "";}
				: edit_box {key = "eb6e"; width = 5; value = "";}
				: popup_list
					{key = "eb6f"; list = "Top\nBottom\nNS\nFS"; width = 5; value = "Top";}
				: popup_list
					{key = "eb6g"; list = "Left\nRight"; width = 5; value = "Left";}
			}
			:row {
				: edit_box {key = "eb7a"; width = 5; value = "";}
				: edit_box {key = "eb7b"; width = 5; value = "";}
				: edit_box {key = "eb7c"; width = 5; value = "";}
				: edit_box {key = "eb7d"; width = 5; value = "";}
				: edit_box {key = "eb7e"; width = 5; value = "";}
				: popup_list
					{key = "eb7f"; list = "Top\nBottom\nNS\nFS"; width = 5; value = "Top";}
				: popup_list
					{key = "eb7g"; list = "Left\nRight"; width = 5; value = "Left";}
			}
			:row {
				: edit_box {key = "eb8a"; width = 5; value = "";}
				: edit_box {key = "eb8b"; width = 5; value = "";}
				: edit_box {key = "eb8c"; width = 5; value = "";}
				: edit_box {key = "eb8d"; width = 5; value = "";}
				: edit_box {key = "eb8e"; width = 5; value = "";}
				: popup_list
					{key = "eb8f"; list = "Top\nBottom\nNS\nFS"; width = 5; value = "Top";}
				: popup_list
					{key = "eb8g"; list = "Left\nRight"; width = 5; value = "Left";}
			}
			:row {
				: edit_box {key = "eb9a"; width = 5; value = "";}
				: edit_box {key = "eb9b"; width = 5; value = "";}
				: edit_box {key = "eb9c"; width = 5; value = "";}
				: edit_box {key = "eb9d"; width = 5; value = "";}
				: edit_box {key = "eb9e"; width = 5; value = "";}
				: popup_list
					{key = "eb9f"; list = "Top\nBottom\nNS\nFS"; width = 5; value = "Top";}
				: popup_list
					{key = "eb9g"; list = "Left\nRight"; width = 5; value = "Left";}
			}
			:row {
				: edit_box {key = "eb10a"; width = 5; value = "";}
				: edit_box {key = "eb10b"; width = 5; value = "";}
				: edit_box {key = "eb10c"; width = 5; value = "";}
				: edit_box {key = "eb10d"; width = 5; value = "";}
				: edit_box {key = "eb10e"; width = 5; value = "";}
				: popup_list
					{key = "eb10f"; list = "Top\nBottom\nNS\nFS"; width = 5; value = "Top";}
				: popup_list
					{key = "eb10g"; list = "Left\nRight"; width = 5; value = "Left";}
			}
			:row {
				: edit_box {key = "eb11a"; width = 5; value = "";}
				: edit_box {key = "eb11b"; width = 5; value = "";}
				: edit_box {key = "eb11c"; width = 5; value = "";}
				: edit_box {key = "eb11d"; width = 5; value = "";}
				: edit_box {key = "eb11e"; width = 5; value = "";}
				: popup_list
					{key = "eb11f"; list = "Top\nBottom\nNS\nFS"; width = 5; value = "Top";}
				: popup_list
					{key = "eb11g"; list = "Left\nRight"; width = 5; value = "Left";}
			}
			:row {
				: edit_box {key = "eb12a"; width = 5; value = "";}
				: edit_box {key = "eb12b"; width = 5; value = "";}
				: edit_box {key = "eb12c"; width = 5; value = "";}
				: edit_box {key = "eb12d"; width = 5; value = "";}
				: edit_box {key = "eb12e"; width = 5; value = "";}
				: popup_list
					{key = "eb12f"; list = "Top\nBottom\nNS\nFS"; width = 5; value = "Top";}
				: popup_list
					{key = "eb12g"; list = "Left\nRight"; width = 5; value = "Left";}
			}
			:row {
				: edit_box {key = "eb13a"; width = 5; value = "";}
				: edit_box {key = "eb13b"; width = 5; value = "";}
				: edit_box {key = "eb13c"; width = 5; value = "";}
				: edit_box {key = "eb13d"; width = 5; value = "";}
				: edit_box {key = "eb13e"; width = 5; value = "";}
				: popup_list
					{key = "eb13f"; list = "Top\nBottom\nNS\nFS"; width = 5; value = "Top";}
				: popup_list
					{key = "eb13g"; list = "Left\nRight"; width = 5; value = "Left";}
			}
			:row {
				: edit_box {key = "eb14a"; width = 5; value = "";}
				: edit_box {key = "eb14b"; width = 5; value = "";}
				: edit_box {key = "eb14c"; width = 5; value = "";}
				: edit_box {key = "eb14d"; width = 5; value = "";}
				: edit_box {key = "eb14e"; width = 5; value = "";}
				: popup_list
					{key = "eb14f"; list = "Top\nBottom\nNS\nFS"; width = 5; value = "Top";}
				: popup_list
					{key = "eb14g"; list = "Left\nRight"; width = 5; value = "Left";}
			}
			:row {
				: edit_box {key = "eb15a"; width = 5; value = "";}
				: edit_box {key = "eb15b"; width = 5; value = "";}
				: edit_box {key = "eb15c"; width = 5; value = "";}
				: edit_box {key = "eb15d"; width = 5; value = "";}
				: edit_box {key = "eb15e"; width = 5; value = "";}
				: popup_list
					{key = "eb15f"; list = "Top\nBottom\nNS\nFS"; width = 5; value = "Top";}
				: popup_list
					{key = "eb15g"; list = "Left\nRight"; width = 5; value = "Left";}
			}
			:row {
				: edit_box {key = "eb16a"; width = 5; value = "";}
				: edit_box {key = "eb16b"; width = 5; value = "";}
				: edit_box {key = "eb16c"; width = 5; value = "";}
				: edit_box {key = "eb16d"; width = 5; value = "";}
				: edit_box {key = "eb16e"; width = 5; value = "";}
				: popup_list
					{key = "eb16f"; list = "Top\nBottom\nNS\nFS"; width = 5; value = "Top";}
				: popup_list
					{key = "eb16g"; list = "Left\nRight"; width = 5; value = "Left";}
			}
			:row {
				: edit_box {key = "eb17a"; width = 5; value = "";}
				: edit_box {key = "eb17b"; width = 5; value = "";}
				: edit_box {key = "eb17c"; width = 5; value = "";}
				: edit_box {key = "eb17d"; width = 5; value = "";}
				: edit_box {key = "eb17e"; width = 5; value = "";}
				: popup_list
					{key = "eb17f"; list = "Top\nBottom\nNS\nFS"; width = 5; value = "Top";}
				: popup_list
					{key = "eb17g"; list = "Left\nRight"; width = 5; value = "Left";}
			}
			:row {
				: edit_box {key = "eb18a"; width = 5; value = "";}
				: edit_box {key = "eb18b"; width = 5; value = "";}
				: edit_box {key = "eb18c"; width = 5; value = "";}
				: edit_box {key = "eb18d"; width = 5; value = "";}
				: edit_box {key = "eb18e"; width = 5; value = "";}
				: popup_list
					{key = "eb18f"; list = "Top\nBottom\nNS\nFS"; width = 5; value = "Top";}
				: popup_list
					{key = "eb18g"; list = "Left\nRight"; width = 5; value = "Left";}
			}
			:row {
				: edit_box {key = "eb19a"; width = 5; value = "";}
				: edit_box {key = "eb19b"; width = 5; value = "";}
				: edit_box {key = "eb19c"; width = 5; value = "";}
				: edit_box {key = "eb19d"; width = 5; value = "";}
				: edit_box {key = "eb19e"; width = 5; value = "";}
				: popup_list
					{key = "eb19f"; list = "Top\nBottom\nNS\nFS"; width = 5; value = "Top";}
				: popup_list
					{key = "eb19g"; list = "Left\nRight"; width = 5; value = "Left";}
			}
			:row {
				: edit_box {key = "eb20a"; width = 5; value = "";}
				: edit_box {key = "eb20b"; width = 5; value = "";}
				: edit_box {key = "eb20c"; width = 5; value = "";}
				: edit_box {key = "eb20d"; width = 5; value = "";}
				: edit_box {key = "eb20e"; width = 5; value = "";}
				: popup_list
					{key = "eb20f"; list = "Top\nBottom\nNS\nFS"; width = 5; value = "Top";}
				: popup_list
					{key = "eb20g"; list = "Left\nRight"; width = 5; value = "Left";}
			}

		spacer;
			
		}//end bozed column
	
	spacer;
	}//end row
ok_cancel;
}
//DCL CODING ENDS HERE