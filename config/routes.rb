Rails.application.routes.draw do
    get 'cards/index'

    get 'cards/show'

    get 'cards/add'

    get 'cards/edit'

    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    # get 'コントローラー/アクション'
    get 'helo/index'
    # heloというURLがきたらhelo#indexをしてください　helo#index -> heloコントローラーのindexメソッドを行う
    get 'helo', to: 'helo#index'
    
    get 'helo/other'
    
    post 'helo', to: 'helo#index'
    post 'helo/index'
    
    # 伝言板
    get 'dengonban', to: 'dengonban#index'
    post 'dengonban', to: 'dengonban#index'
    get 'dengonban/index'
    post 'dengonban/index'
    
    # Select
    get 'people', to: 'people#index'
    post 'people', to: 'people#index'
    get 'people/index'
    post 'people/index'
    
        # addメソット
    get 'people/add'
    post 'people/add', to:'people#create'
    
        # 編集画面
    get 'people/edit/:id', to:'people#edit'
    patch 'people/edit/:id', to:'people#update'
    
    # ID検索
    get 'people/:id', to:'people#show'
    get 'people/delete/:id', to: 'people#delete'
    
end
