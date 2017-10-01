Rails.application.routes.draw do

		get 'index' => 'tamilnadu_polls#index', as: 'tamilnadu_polls_index'
		post 'create' => 'tamilnadu_polls#create', as: 'tamilnadu_polls_submit'
		get 'deadline' => 'tamilnadu_polls#deadline'
		get 'chart' => 'tamilnadu_polls#chart', as: 'tamilnadu_polls_chart'
		root to:"tamilnadu_polls#index"

end
