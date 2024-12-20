class Round:
	#region TO_MULTIPLE
	
	static func To_Multiple(_A, _B):#Rounds _A to a multiple of _B
		var AI := (_A is int)
		var AF := (_A is float)
		var BI := (_B is int)
		var BF := (_B is float)
		var AIF := (AI or AF)
		var BIF := (BI or BF)
		if(not AIF or not BIF):
			printerr("Input(s) NaN: ", int(AIF), int(BIF), "-", int(not AI), int(not AF), int(not BI), int(not BF), "\nEx. (AB-IFIF)\n0=PASS\n1=FAIL")
			return ERR_INVALID_PARAMETER
		else:
			if (not(AF or BF)):
				return(_TM_Int(_A,_B))
			else:
				return(_TM_Float(_A,_B))
			
		
	
	static func _TM_Int(_A,_B):
		var S = sign(_A)
		_A = absi(_A)
		_B = absi(_B)
		var R = _A % _B
		if (R != 0):
			if (R >= (_B / 2)):
				_A = _A + (_B - R)
			else:
				_A = _A - R
			
		_A = _A * S
		return(_A)
	
	static func _TM_Float(_A,_B):
		var S = sign(_A)
		_A = abs(_A)
		_B = abs(_B)
		var R = fmod(_A, _B)
		if (R != 0):
			if (R >= (_B / 2)):
				_A = _A + (_B - R)
			else:
				_A = _A - R
			
		_A = _A * S
		return(_A)
	
	#endregion
	
	static func To_Even(_A:int, _Up:bool=false):
		if ((_A % 2) == 1):
			if (_Up == false):
				_A = _A - 1
			else:
				_A = _A + 1
			
		return(_A)
	
	static func To_Odd(_A:int, _Up:bool=false):
		if ((_A % 2) == 0):
			if (_Up == false):
				_A = _A - 1
			else:
				_A = _A + 1
			
		return(_A)
	

class ExtRandom:
	
	static func Next_Seed(_A:int, _B:int, _D:bool=false):# A = Previous, B = New; true = randimization used in calculation.
		var C = 0
		if (_A >= _B):
			C = _A % _B 
		else:
			C = _B % _A  
		C = _B - C
		if (_D==true): C = C + randi()
		C = _A * (C/100)
		if (_B >= C):
			C = _B % C
		else:
			C = C % _B
		if (_D==true): C = C - randi()
		C = absi(_A + C)
		return(C)
