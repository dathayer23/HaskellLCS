module Perception where

class PerceptionItem pi where
   (~~) :: pi -> pi -> Bool
   (<~) :: pi -> pi -> Bool
   --matches :: pi -> pi -> Bool
   --subsumes :: pi -> pi -> Bool
   --(~~) p1 p2 = matches p1 p2
   --(<~) p1 p2 = subsumes p1 p2

data TriValue =  None | Zero | One deriving (Eq, Ord, Enum)


instance Show TriValue where
   show One = "1"
   show Zero = "0"
   show None = "?"

instance PerceptionItem TriValue where
    One ~~ One = True
    Zero ~~ Zero = True
    _  ~~ None = True
    None ~~ _ = True
    _ ~~ _ = False

    -- TODO Defne proper Subsumption Expression
    _  <~ One = True
    _  <~ _ = False

class PerceptionField pf  where
    matches :: pf -> pf -> Bool
    subsumes :: pf -> pf -> Bool
    moreGeneral :: pf -> pf -> Bool
    generalize :: pf -> pf
    specialize :: pf -> pf
    mutate :: pf -> pf
