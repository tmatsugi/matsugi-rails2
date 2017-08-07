class HeloController < ApplicationController # ApplicationControllerを継承したHeloControllerである
    # defはメソッド宣言
    # htt://ドメイン/○○/aaa -> ○○のaaaを実行
    # 何も書かなかった場合はデフォルトに順ずる
    def index
        # render index.html.erbを書かなくても移動する
        @title = "Viewサンプル"
        @msg = "コントローラーで用意した値です"
    end

end
