module Learn where

    x  = 10 * 5 + y

    myResult x = 5 * x

    y = 10

    p1        = x * 3 + y
      where x = 3
            y = 1000

    p2        = x * 5
      where x = 10 * 5 + y
            y = 10


    p3        = z / x + y
      where z = y * 10
            y = negate x
            x = 7

    waxOn     = x * 5
      where x = y ^ 2
            y = z + 8
            z = 7

    waxOff x         = triple x
      where triple x = x * 3