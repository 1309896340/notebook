import numpy as np
from matplotlib import pyplot as plt
from matplotlib.animation import FuncAnimation
from mpl_toolkits.mplot3d import Axes3D

theta = np.linspace(0,np.pi,50)
phi = np.linspace(0,2*np.pi,50)
r = 10
s_range = 100
orbit_r = 30

count = 0


fig = plt.figure()
ax = fig.gca(projection="3d")

(theta_grid,phi_grid) = np.meshgrid(theta,phi)
x = r*np.sin(theta_grid)*np.cos(phi_grid)
y = r*np.sin(theta_grid)*np.sin(phi_grid)
z = r*np.cos(theta_grid)
'''
def sphere_move(xyz,bias) :
	for i in range(3) :
		xyz[i] += bias[i]*np.ones(xyz[i].shape[0])
	return ax.plot_surface(xyz[0],xyz[1],xyz[2])
'''

ax.set_xlim(-s_range,s_range)
ax.set_ylim(-s_range,s_range)
ax.set_zlim(-s_range,s_range)
surf = ax.plot_surface(x,y,z)


def ani_update(i) :
	x_obt = orbit_r*np.cos(i*np.pi/180)
	y_obt = orbit_r*np.sin(i*np.pi/180)
	surf.set_offsets(np.array([x_obt,y_obt,0]))
	print(x_obt," ",y_obt)
	return surf

ani = FuncAnimation(fig,ani_update,interval=10,blit=False)

plt.show()

'''
while True:
	count += 1
	
	ax.cla()
	ax.set_xlim(-s_range,s_range)
	ax.set_ylim(-s_range,s_range)
	ax.set_zlim(-s_range,s_range)
	
	surf = sphere_move([x,y,z],(orbit_r*np.cos(20*count*np.pi/180),orbit_r*np.sin(20*count*np.pi/180),0))
	

	plt.draw()
	plt.pause(0.01)
'''