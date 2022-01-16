class FruitsController < ApplicationController
  def index
    render json: { fruits: [{ name: 'りんご' }, { name: 'みかん' }]}
  end

  def create
    # 処理したつもり

    head :created
  end
end
