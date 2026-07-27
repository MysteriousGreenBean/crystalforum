
/********************************************************************************************************************************
*
*  Default message (/jscript/defaultmessage.js)
*  Author: Krzysztof "Supryk" Supryczyński
*  Copyright: © 2013 - 2021 @ Krzysztof "Supryk" Supryczyński @ All rights reserved
*  
*  Website: http://supryk.eu/
*  Description: Plugin allows the administrator to determine the default message , thread message.
*
********************************************************************************************************************************/
/********************************************************************************************************************************
*
* This file is part of "Default message" plugin for MyBB.
* Copyright © 2013 - 2021 @ Krzysztof "Supryk" Supryczyński @ All rights reserved
*
* This program is free software: you can redistribute it and/or modify
* it under the terms of the GNU Lesser General Public License as published by
* the Free Software Foundation, either version 3 of the License, or
* (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
* GNU Lesser General Public License for more details.
*
* You should have received a copy of the GNU Lesser General Public License
* along with this program.  If not, see <http://www.gnu.org/licenses/>.
*
********************************************************************************************************************************/

var defaultmessage = {
	
	init: function()
	{
		$(document).ready(function()
		{
			$("#prefix_select").change(function() 
			{
				var pid = $("#prefix_select").val();
				
				if(typeof defaultmessage_prefix_subject[pid] !== 'undefined' && defaultmessage_prefix_subject[pid] !== null)
				{
					$('#subject').val(defaultmessage_prefix_subject[pid]);
				}
				
				$('#message').sceditor('instance').val(defaultmessage_prefix_thread[pid]);
			});
		});
	},
};

defaultmessage.init();