<cfsilent><cfscript>
/**
* 
* This file is part of MuraPlayer TM
* (c) Stephen J. Withington, Jr. | StephenWithington.com
*
* This program is free software; you can redistribute it and/or modify
* it under the terms of the GNU General Public License as published by
* the Free Software Foundation; either version 2 of the License, or
* (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
* GNU General Public License for more details.
*
* You should have received a copy of the GNU General Public License along
* with this program; if not, write to the Free Software Foundation, Inc.,
* 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
*
*/
if ( !IsDefined('$') ) {

	$ = application.serviceFactory.getBean('$');

	if ( StructKeyExists(session, 'siteid') ) {
		$.init(session.siteid);
	} else {
		$.init('default');
	};

};

if ( !IsDefined('pluginConfig') ) {
	pluginConfig = $.getBean('pluginManager').getConfig('MuraPlayer');
};

if ( !$.currentUser().isSuperUser() ) {
	location( url='#$.globalConfig('context')#/admin/', addtoken=false );
};
</cfscript></cfsilent>