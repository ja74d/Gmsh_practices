import gmsh
import numpy as np

def generate_plate_with_hole():
    gmsh.initialize()

    # Create a new model
    gmsh.model.add("plate_with_hole")

    # Define parameters
    plate_length = 10.0
    plate_width = 5.0
    hole_radius = 1.0
    hole_center_x = 5.0
    hole_center_y = 2.5

    # Create points for the plate
    gmsh.model.geo.addPoint(0, 0, 0, 1.0, 1)
    gmsh.model.geo.addPoint(plate_length, 0, 0, 1.0, 2)
    gmsh.model.geo.addPoint(plate_length, plate_width, 0, 1.0, 3)
    gmsh.model.geo.addPoint(0, plate_width, 0, 1.0, 4)

    # Create lines for the plate
    gmsh.model.geo.addLine(1, 2, 1)
    gmsh.model.geo.addLine(2, 3, 2)
    gmsh.model.geo.addLine(3, 4, 3)
    gmsh.model.geo.addLine(4, 1, 4)

    # Create a surface for the plate
    gmsh.model.geo.addCurveLoop([1, 2, 3, 4], 1)
    gmsh.model.geo.addPlaneSurface([1], 1)

    # Create a circle for the hole
    hole_center_tag = gmsh.model.geo.addPoint(hole_center_x, hole_center_y, 0, 1.0, 5)
    hole_point = gmsh.model.geo.addPoint(hole_center_x + hole_radius, hole_center_y, 0, 1.0, 6)
    gmsh.model.geo.addCircleArc(hole_center_tag, 6, hole_center_tag, 7)
    gmsh.model.geo.addCurveLoop([7], 2)
    gmsh.model.geo.addPlaneSurface([2], 2)

    # Define the boolean difference to subtract the hole from the plate
    gmsh.model.geo.cut([(2, 1)], [(2, 2)], 1)

    # Synchronize with the GMSH model
    gmsh.model.geo.synchronize()

    # Define mesh settings
    gmsh.option.setNumber("Mesh.CharacteristicLengthMax", 1.0)

    # Generate the mesh
    gmsh.model.mesh.generate(2)

    # Save the mesh to a file
    gmsh.write("plate_with_hole.msh")

    # Finalize the GMSH API
    gmsh.finalize()

if __name__ == "__main__":
    generate_plate_with_hole()
