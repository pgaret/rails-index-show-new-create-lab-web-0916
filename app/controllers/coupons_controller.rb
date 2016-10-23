class CouponsController < ApplicationController

  def index
    @coupons = Coupon.all
  end

  def show
    @coupon = Coupon.find(params[:id])
  end

  def new
  end

  def create
    @coupon = Coupon.new
    @coupon.store = params[:store]
    @coupon.coupon_code = params[:coupon_code]
    @coupon.save(@coupon)
    redirect_to coupon_path(@coupon)
  end

  def edit
    @coupon = Coupon.find(params[:id])
  end

  def update
    byebug
  end

end
