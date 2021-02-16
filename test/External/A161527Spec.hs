module External.A161527Spec (main, spec) where
import Test.Hspec
import External.A161527 (a161527)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A161527" $
  it "correctly computes the first 20 elements" $
    take 10 (map a161527 [1..]) `shouldBe` expectedValue where
      expectedValue = [1, 2, 11, 27, 61, 809, 13945, 268027, 565447, 2358365]
