import Data.List

names = [("Ian", "Curtis"),
         ("Bernard","Sumner"),
         ("Peter", "Hook"),
         ("Jane", "Hook"),
         ("Stephen","Morris")]

compareLastNames name1 name2 =
 if lastName1 > lastName2
 then GT
 else if lastName1 < lastName2
      then LT
      else if firstName1 > firstName2
           then GT
           else if firstName1 < firstName2
                then LT
                else EQ
 where firstName1 = fst name1
       lastName1 = snd name1
       firstName2 = fst name2
       lastName2 = snd name2

-- sortBy compareLastNames names