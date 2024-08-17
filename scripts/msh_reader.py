import gmsh
import numpy as np
from scipy.sparse import lil_matrix
from scipy.sparse.linalg import spsolve

gmsh.initialize()
gmsh.option.setNumber("General.Terminal", 1)
gmsh.open('/home/javad/gmsh_practices/t1.msh')

node_tags, node_coords, _ = gmsh.model.mesh.getNodes()

element_types, element_tags, element_node_tags = gmsh.model.mesh.getElements()

print(len(node_coords))