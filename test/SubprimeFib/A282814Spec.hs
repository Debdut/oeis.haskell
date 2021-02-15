module SubprimeFib.A282814Spec (main, spec) where
import Test.Hspec
import SubprimeFib.A282814 (a282814)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A282814" $
  it "correctly computes the first 20 elements" $
    take 20 (map a282814 [1..]) `shouldBe` expectedValue where
      expectedValue = [18,18,18,18,1,18,136,18,18,136,18,18,1,18,136,18,18,18,136,18]
