module Types (hello, Name, Latitude, Longitude, Altitude, Coordinates, Person, victor) where

hello :: Int
hello = 345

type Name = String

type Latitude = Float

type Longitude = Float

type Altitude = Float

type Coordinates = (Longitude, Latitude, Altitude)

type Person = (Name, Coordinates)

-- type Person = (Name, Name)

victor :: Person
victor = ("Victor GRAPPE", (2.1563037, 48.9480502, 38.0))
