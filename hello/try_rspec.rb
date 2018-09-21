require 'spec_helper'
# describe --> test term (what)
# context --> status (when)
# it -> then
describe User do
  context '正しいデータ入れた場合' do
    it 'テストできる'
  end
  context 'まずいデータ入れた場合' do
    it 'テストできない'
  end

  describe 'エラーチェック'
    context '何もはいっていない場合' do
      it 'エラーになる'
    end
  end
end
