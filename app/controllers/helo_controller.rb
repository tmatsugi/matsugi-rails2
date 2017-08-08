class HeloController < ApplicationController # ApplicationControllerを継承したHeloControllerである
    # defはメソッド宣言
    # htt://ドメイン/○○/aaa -> ○○のaaaを実行
    # 何も書かなかった場合はデフォルトに順ずる
    # protect_from_forgery
    
    def index
        @header = 'layout sample'
        @footer = 'copyright SYODA-TUYANO 2016'
        @title = 'new layout'
        @msg = 'this is a sample'
    end
    
    def other
        redirect_to action: :index, params: {'msg': 'from other page'}
    end
end
