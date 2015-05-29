module ApplicationHelper

	def menu
		raw("<li>#{link_to 'Home', root_path}</li>
			 <li>#{link_to 'Leagues', leagues_path}</li>
			 <li>#{link_to 'Teams', teams_path}</li>
			 <li>#{link_to 'Players', players_path}</li>")
	end

end
