import numpy as np
from matplotlib import pyplot as plt
from mpl_toolkits.mplot3d import Axes3D

theta = np.linspace(0,np.pi,50)
phi = np.linspace(0,2*np.pi,50)
r = 3

s_range = 4

fig = plt.figure()
ax = fig.gca(projection="3d")
ax.set_xlim(-s_range,s_range)
ax.set_ylim(-s_range,s_range)
ax.set_zlim(-s_range,s_range)

(theta_grid,phi_grid) = np.meshgrid(theta,phi)
x = r*np.sin(theta_grid)*np.cos(phi_grid)
y = r*np.sin(theta_grid)*np.sin(phi_grid)
z = r*np.cos(theta_grid)

ax.plot_surface(x,y,z)
plt.show()