"""
Nernst Calculator

1. Input T in kelvin, z, Q, and standard E.
2. Output E.
"""

R = 8.31446261815324
F = 96485.3

#prompt to Input temperature
println("What is the temperature of the system, in kelvin? [numerical value only]")
T = readline()
# if realine != -9999:9999                                ####attempt at value error correction failure
#     println("Not a valid number-- try again.")
#     T = readline()
# else
# end    
T = parse(Int64, T)

#println(typeof(T))
#prompt to Input z value
println("Input z; or, how many electrons transferred in the cell reaction or half-reaction? [numerical value only]")
z = readline()
z = parse(Int64, z)

#prompt to input reaction quotient
println("Input Qr, the reaction quotient of the cell reaction. [numerical value only]")
Qr = readline()
Qr = parse(Int64, Qr)

#prompt to input Eo 
# println("What is the standard cell potential, Eo? [numerical value only]")
# Eo = readline()
# Eo = parse(Int64, Eo)

#Calculate based on wikipedia formula
# E = Eo - ((R*T)/(z*F))*log(Qr)
#Calculate based on physiologyweb.com 
E = ((R*T)/(z*F))*log(Qr)


#print calculation 
println("The equilibrium potential is ", E)
