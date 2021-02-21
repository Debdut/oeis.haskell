module Tables.A274079Spec (main, spec) where
import Test.Hspec
import Tables.A274079 (a274079)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A274079" $
  it "correctly computes the first 20 elements" $
    take 20 (map a274079 [1..]) `shouldBe` expectedValue where
      expectedValue = [2,4,5,4,7,8,7,9,8,7,11,12,11,13,12,11,14,13,12,11]
