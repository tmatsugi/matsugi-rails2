Rails.application.routes.draw do
  #　もう一度カードを自分で作る
    get 'books/index'
    get '/books', to: 'books#index'
    
    get 'books/add'
    post 'books/add'

    get 'books/edit/:id', to: 'books#edit'
    patch 'books/edit/:id', to: 'books#edit'

    get 'books/:id', to:'books#show'

    # aardsに対応したroute
    get 'cards/index'
    get '/cards', to: 'cards#index'

    get 'cards/add'
    post 'cards/add'

    get 'cards/edit/:id', to: 'cards#edit'
    patch 'cards/edit/:id', to: 'cards#edit'

    get 'cards/:id', to: 'cards#show'
    
    get 'card/delete/:id', to: 'cards#delete'

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
