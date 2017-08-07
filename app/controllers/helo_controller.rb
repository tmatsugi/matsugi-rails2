class HeloController < ApplicationController # ApplicationControllerを継承したHeloControllerである
    # defはメソッド宣言
    # htt://ドメイン/○○/aaa -> ○○のaaaを実行
    # 何も書かなかった場合はデフォルトに順ずる
    def index
        # render index.html.erbを書かなくても移動する
        if params['msg'] != nil then
            @title = params['msg']
        else
            @title = 'index'
        end
        @msg = 'this is redirect sample'
    end
    
    def other
        redirect_to action: :index, params: {'msg': 'from other page'}
    end
end
