sfOffice name = if lastname < "L"
                then nameText ++ " - " ++ address
                else nameText ++ " - " ++ lOrLaterAddress
                where lastname = snd name
                      nameText = (fst name) ++ " " ++ (snd name)
                      address = "PO Box 1234, San Francisco, CA, 94111"
                      lOrLaterAddress = "PO Box 1010, San Francisco, CA, 94109"

nyOffice name = nameText ++ ": " ++ address
    where nameText = (fst name) ++ " " ++ (snd name)
          address = "PO Box 789, New York, NY, 10013"

renoOffice name = nameText ++ " - " ++ address
    where nameText = snd name
          address = "PO Box 456, Reno, NV, 89523"

dcOffice name = nameText ++ " - " ++ address
    where nameText = (fst name) ++ " " ++ (snd name) ++ " Esq"
          address = "PO Box 121, Washington, DC, 23001"

getLocation location = case location of
 "ny" -> nyOffice
 "sf" -> sfOffice
 "reno" -> renoOffice
 "dc" -> dcOffice
 _ -> (\name -> (fst name) ++ " " ++ (snd name))

addressLetter name location = locationFunction name
    where locationFunction = getLocation location
