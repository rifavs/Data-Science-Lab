from numpy import matrix,matmul,diag
from scipy.linalg import svd

A=matrix([[1,2,3],[4,5,6],[7,8,9]])
print("Matrix A:\n",A)

U,S,V=svd(A)
print("U:\n",U,"\n")
print("S:\n",S,"\n")
print("V:\n",V,"\n")

Sigma=diag(S)
print("Sigma(Diagnol Matrix):\n",Sigma)

B=matmul(U,matmul(Sigma,V))
print("Reconstructed Matrix:\n",B)
