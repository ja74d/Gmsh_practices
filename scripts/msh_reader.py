import gmsh
import numpy as np

gmsh.initialize()
gmsh.option.setNumber("General.Terminal", 1)
gmsh.open('/home/javad/gmsh_practices/mesh_results/rectangular_mesh.msh')

node_tags, node_coords, _ = gmsh.model.mesh.getNodes()

element_types, element_tags, element_node_tags = gmsh.model.mesh.getElements()

node_coords = node_coords.reshape((-1, 3))

for  elem_type, elem_tag, elem_nodes in zip(element_types, element_tags, element_node_tags):
    num_nodes_per_elm = len(elem_nodes)//len(elem_tag)

    print(f"Element Type: {elem_type}, Number of Elements: {len(elem_tag)}")
    
    for i in range(len(elem_tag)):
        elem_node_indices = elem_nodes[i * num_nodes_per_elm:(i + 1) * num_nodes_per_elm]
        elem_node_coords = node_coords[elem_node_indices - 1]  # Get the coordinates for these nodes
        
        print(f"  Element {elem_tag[i]} has nodes with coordinates:")
        for j, node_coord in enumerate(elem_node_coords):
            print(f"    Node {elem_node_indices[j]}: {node_coord}")

gmsh.finalize()
