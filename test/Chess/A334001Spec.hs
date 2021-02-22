module Chess.A334001Spec (main, spec) where
import Test.Hspec
import Chess.A334001 (a334001)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A334001" $
  it "correctly computes the first 20 elements" $
      map a334001 [1..20] `shouldBe` expectedValue where
        expectedValue = [2, 2, 4, 4, 6, 8, 8, 10, 10, 12, 16, 12, 16, 14, 18, 12, 22, 24, 20, 16]
