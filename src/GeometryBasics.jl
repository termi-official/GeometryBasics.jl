module GeometryBasics

using StaticArrays, Tables, StructArrays, IterTools, LinearAlgebra
using EarCut_jll

using Base: @propagate_inbounds

include("fixed_arrays.jl")
include("vectors.jl")
include("matrices.jl")
include("offsetintegers.jl")
include("basic_types.jl")

include("primitives/rectangles.jl")
include("primitives/spheres.jl")
include("primitives/cylinders.jl")
include("primitives/pyramids.jl")

include("interfaces.jl")
include("metadata.jl")
include("viewtypes.jl")
include("geometry_primitives.jl")
include("meshes.jl")
include("triangulation.jl")
include("lines.jl")
include("boundingboxes.jl")

# points
export AbstractPoint, Point, PointMeta, PointWithUV

# vectors
export Vec, Vec2, Vec3, Vec2f, Vec3f
export vunit, vfill

# geometries
export AbstractGeometry, GeometryPrimitive
export LineFace, Polytope, Line, NgonFace, convert_simplex
export LineString, AbstractPolygon, Polygon, MultiPoint, MultiLineString, MultiPolygon
export Simplex, connect, Triangle, NSimplex, Tetrahedron
export QuadFace, metafree, coordinates, TetrahedronFace
export TupleView, SimplexFace, Mesh, meta
export Triangle, TriangleP
export AbstractFace, TriangleFace, QuadFace, GLTriangleFace
export OffsetInteger, ZeroIndex, OneIndex, GLIndex
export FaceView, SimpleFaceView
export PolygonMeta, MultiPointMeta, MultiLineStringMeta, MeshMeta, LineStringMeta,
       MultiPolygonMeta
export decompose, coordinates, faces, normals, decompose_uv, decompose_normals,
       texturecoordinates
export Tesselation, pointmeta, Normal, UV, UVW
export GLTriangleFace, GLNormalMesh3D, GLPlainTriangleMesh, GLUVMesh3D, GLUVNormalMesh3D
export AbstractMesh, Mesh, TriangleMesh
export GLNormalMesh2D, PlainTriangleMesh
export MetaT, meta_table

# meshes
export AbstractMesh, TriangleMesh, PlainMesh, GLPlainMesh, GLPlainMesh2D, GLPlainMesh3D
export UVMesh, GLUVMesh, GLUVMesh2D, GLUVMesh3D
export NormalMesh, GLNormalMesh, GLNormalMesh2D, GLNormalMesh3D
export NormalUVMesh, GLNormalUVMesh, GLNormalUVMesh2D, GLNormalUVMesh3D
export NormalUVWMesh, GLNormalUVWMesh, GLNormalUVWMesh2D, GLNormalUVWMesh3D

# mesh creation
export triangle_mesh, triangle_mesh, uv_mesh
export uv_mesh, normal_mesh, uv_normal_mesh

# primitives
export height, origin, radius, width, widths, xwidth, yheight
export HyperSphere, Circle, Sphere
export Cylinder, Cylinder2, Cylinder3, Pyramid, extremity
export Rect, Rect2D, Rect3D, IRect, IRect2D, IRect3D, FRect, FRect2D, FRect3D
export before, during, isinside, isoutside, meets, overlaps, intersects, finishes
export centered, direction, area, update
export max_dist_dim, max_euclidean, max_euclideansq, min_dist_dim, min_euclidean
export min_euclideansq, minmax_dist_dim, minmax_euclidean, minmax_euclideansq
export self_intersections, split_intersections

# bounding boxes
export boundingbox

if Base.VERSION >= v"1.4.2"
    include("precompile.jl")
    _precompile_()
end

end # module
