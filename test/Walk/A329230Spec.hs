module Walk.A329230Spec (main, spec) where
import Test.Hspec
import Walk.A329230 (a329230)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A329230" $
  it "correctly computes the first 20 elements" $
    map a329230 [1..20] `shouldBe` expectedValue where
      expectedValue = [1,2,3,4,10,9,7,8,23,17,16,21,20,27,29,16,58,25,28,30]
