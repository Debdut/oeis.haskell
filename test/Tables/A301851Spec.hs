module Tables.A301851Spec (main, spec) where
import Test.Hspec
import Tables.A301851 (a301851)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A301851" $
  it "correctly computes the first 20 elements" $
    take 20 (map a301851 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,2,2,3,3,3,4,5,5,4,5,7,6,7,5,6,9,9,9,9]
