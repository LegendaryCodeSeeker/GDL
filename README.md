# GoDot Libraries
A collection of Libraries i made for stuff im doing in Godot, or from side-adventures while making stuff.

## Extended Math Functions (EMF)
### 1. Rounding
- **Round To Multiple**
  - Supports Integer and Float inputs, and signage on the number being rounded.
  - Always rounds to <ins>nearest</ins> multiple
      ```
      Ex.
      var Foo = EMF.Round.To_Multiple(22,8)
      
      print(Foo)
      
      Output: 24
      ```
- **Round to Even & Odd**
  - Integer only <sub>*(for now, may expand to floats later)*</sub>
  - Rounds <ins>down</ins> by defualt, but can optionally be set to round <ins>up</ins>.
    ```
    Ex.
    var Foo = EMF.Round.To_Even(1337)
    var Bar = EMF.Round.To_Odd(42,true)
    
    print(Foo, ", ", Bar)
    
    Output: 1336, 43
    ```
### 2. Extended Random (ExtRandom)
- **W.I.P**
