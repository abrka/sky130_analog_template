import mos_model

n_or_p = input("n or p: ")

beta = 0
if n_or_p == "n":
  beta = mos_model.nmos['k']
elif n_or_p == "p":
  beta = mos_model.pmos['k'] 
else:
  print("err")

vov = float(input("vov: "))
ids = float(input("ids: "))

w_l = 2*ids/(beta*(vov**2))
print("w/l: ",w_l)