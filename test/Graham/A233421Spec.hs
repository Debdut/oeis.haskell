module Graham.A233421Spec (main, spec) where
import Test.Hspec
import Graham.A233421 (a233421)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A233421" $
  it "correctly computes the first 20 elements" $
    take 20 (map a233421 [1..]) `shouldBe` expectedValue where
      expectedValue = [6,8,10,12,14,15,18,22,20,26,21,24,34,27,38,30,28,33,46,32]
