class HeloController < ApplicationController # ApplicationControllerを継承したHeloControllerである
    # defはメソッド宣言
    # htt://ドメイン/○○/aaa -> ○○のaaaを実行
    # 何も書かなかった場合はデフォルトに順ずる
    # protect_from_forgery
    
    def index
        # render index.html.erbを書かなくても移動する
        if request.post? then
            @title = 'Result'
            if params['check1'] then
                @msg = 'you Checked!!!'
            else
                @msg = 'not checked...'
            end
        else
            @title = 'index'
            @msg = 'check it ...'
        end
    end
    
    def other
        redirect_to action: :index, params: {'msg': 'from other page'}
    end
end
