- specify
  - itと同じ
- aggregate_failures
  - 複数のexpectをセットとして実行、まとめて結果を報告する
  - 普通のexpectはエラーがあったら、実行停止
- except matchers
  - .to be_falsey 
    - falsey is [false or nil]
  - .to eq('some value')
  - .not_to eq('someValue')
  - .to be_nil
  - expect{ hoge.hoge(hoge) }.to raise_error(Exception)
- describe はテスト対象は何？
- contextは特定の条件
- exampleとitはoutputが何か
  ```
  describe 'testObject' do
    context 'when test object is some condition' do
        example 'some output予想の結果' do
            ....run some test code テストの内容
            
            expect ().to eq ()
        end

        ##同じ事
        it "is some result" do
        end
    end
  end
  ```
- let 
  - 変数を定義する
  ```
  let(:param) {1}
  ```
- expect
  - expect(hoge.hoge(hoge)).to eq 1
  - expect{ hoge.hoge(hoge) }.to raise_error(Exception)
    - {} create a block to monitor,can catch exception
  - expect (someClass).to receive(:someMethod)
    - .once
    - .with 
- factory
  - create test data
- allow vs expect
  - allow may not be called
  - expect must be called