module Chess.A334016Spec (main, spec) where
import Test.Hspec
import Chess.A334016 (a334016)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A334016" $
  it "correctly computes the first 20 elements" $
      map a334016 [1..20] `shouldBe` expectedValue where
        expectedValue = [1, 1, 1, 2, 4, 6, 4, 10, 21, 35, 8, 25, 65, 139, 237, 16, 60, 179, 451, 978]
