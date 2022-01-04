require 'rails_helper'

RSpec.describe Item, type: :model do
  before do
    @item = FactoryBot.build(:item)
    @item.image = fixture_file_upload("public/images/test_image.png")
  end

  describe '商品出品' do
    context '商品出品ができるとき' do
      it '必須項目が存在すれば登録できる' do
        expect(@item).to be_valid
      end
      it 'item_nameが空では登録できない' do
        @item.item_name = ''
        @item.valid?
        expect(@item.errors.full_messages).to include "Item name can't be blank"
      end
    end
    context '商品出品ができないとき' do
      it 'item_explanationが空では登録できない' do
        @item.item_explanation = ''
        @item.valid?
        expect(@item.errors.full_messages).to include "Item explanation can't be blank"
      end
      it 'condition_idが未選択では登録できない' do
        @item.condition_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include "Condition can't be blank"
      end
      it 'prefecture_idが未選択では登録できない' do
        @item.prefecture_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include "Prefecture can't be blank"
      end
      it 'category_idが未選択では登録できない' do
        @item.category_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include "Category can't be blank"
      end
      it 'delivery_charge_idが未選択では登録できない' do
        @item.delivery_charge_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include "Delivery charge can't be blank"
      end
      it 'time_required_idが未選択では登録できない' do
        @item.time_required_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include "Time required can't be blank"
      end
      it 'priceが空では登録できない' do
        @item.price = ''
        @item.valid?
        expect(@item.errors.full_messages).to include "Price is not a number"
      end
    end
  end
end