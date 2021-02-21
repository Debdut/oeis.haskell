module Tables.A273825Spec (main, spec) where
import Test.Hspec
import Tables.A273825 (a273825)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A273825" $
  it "correctly computes the first 20 elements" $
    take 20 (map a273825 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,2,3,4,5,1,6,7,8,2,9,3,10,11,12,4,13,5,1,14]

-- Row 1: []
-- Row 2: []
-- Row 3: []
-- Row 4: []
-- Row 5: [1]
-- Row 6: []
-- Row 7: []
-- Row 8: [2]
-- Row 9: [3]
-- Row 10: []
-- Row 11: []
-- Row 12: [4]
-- Row 13: [5, 1]
-- Row 14: [6]
-- Row 15: []
-- Row 16: []
-- Row 17: [7]
-- Row 18: [8, 2]
-- Row 19: [9, 3]
-- Row 20: [10]
-- Row 21: []
-- Row 22: []
-- Row 23: [11]
