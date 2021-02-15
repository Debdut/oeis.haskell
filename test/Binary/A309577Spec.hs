module Binary.A309577Spec (main, spec) where
import Test.Hspec
import Binary.A309577 (a309577)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A309577" $
  it "correctly computes the first 20 elements" $
      map a309577 [1..20] `shouldBe` expectedValue where
        expectedValue = [1, 0, 2, 0, 0, 3, 1, 0, 4, 0, 0, 0, 5, 1, 1, 0, 6, 2, 0, 0]
