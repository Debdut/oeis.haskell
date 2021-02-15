module Binary.A308092Spec (main, spec) where
import Test.Hspec
import Binary.A308092 (a308092)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A308092" $
  it "correctly computes the first 20 elements" $
      map a308092 [1..20] `shouldBe` expectedValue where
        expectedValue = [1, 2, 3, 7, 14, 28, 56, 112, 224, 448, 896, 1791, 3583, 7166, 14332, 28663, 57326, 114653, 229306, 458612]
