import numpy as np
from matplotlib import pyplot as plt
from mpl_toolkits.mplot3d import Axes3D

theta = np.linspace(0,np.pi,50)
phi = np.linspace(0,2*np.pi,50)
r = 3

x_bias = 1
y_bias = 2
z_bias = 3

s_range = 10


fig = plt.figure()
ax = fig.gca(projection="3d")
ax.set_xlim(s_range,s_range)
ax.set_ylim(-s_range,s_range)
ax.set_zlim(-s_range,s_range)

(theta_grid,phi_grid) = np.meshgrid(theta,phi)
x = r*np.sin(theta_grid)*np.cos(phi_grid)
y = r*np.sin(theta_grid)*np.sin(phi_grid)
z = r*np.cos(theta_grid)

x += x_bias*np.ones(x.shape[0])
y += y_bias*np.ones(y.shape[0])
z += z_bias*np.ones(z.shape[0])

ax.plot_surface(x,y,z)
plt.show()