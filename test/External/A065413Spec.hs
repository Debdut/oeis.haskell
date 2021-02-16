module External.A065413Spec (main, spec) where
import Test.Hspec
import External.A065413 (a065413)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A065413" $
  it "correctly computes the first 20 elements" $
    take 20 (map a065413 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,0,1]
