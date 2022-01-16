class FruitsController < ApplicationController
  def index
    render json: [{ name: 'りんご' }, { name: 'みかん' }]
  end

  def create
    # 処理したつもり

    head :created
  end
end
