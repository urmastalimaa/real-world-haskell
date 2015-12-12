module Direction(
  Direction(Left, Right, Straight),
  calculateDirection,
  calculateDirections,
) where
import Point(Point(Point))

data Direction = Left | Right | Straight

calculateDirection:: Point -> Point -> Point -> Direction
calculateDirection a b c = angleToDirection (ccw a b c)

  where ccw (Point ax ay) (Point bx by) (Point cx cy) =
          (bx - ax) * (cy - ay) - (by - ay) * (cx - ax)

        angleToDirection angle
          | angle > 0 = Direction.Left
          | angle < 0 = Direction.Right
          | otherwise = Direction.Straight

calculateDirections:: [Point] -> [Direction]
calculateDirections [] = []
calculateDirections [_] = []
calculateDirections [_, _] = []
calculateDirections (x:y:z:xs) = calculateDirection x y z: calculateDirections (y:z:xs)
