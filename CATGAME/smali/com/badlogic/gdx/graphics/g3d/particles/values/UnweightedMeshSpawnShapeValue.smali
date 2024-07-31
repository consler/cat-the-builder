.class public final Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;
.super Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue;
.source "UnweightedMeshSpawnShapeValue.java"


# instance fields
.field private indices:[S

.field private positionOffset:I

.field private triangleCount:I

.field private vertexCount:I

.field private vertexSize:I

.field private vertices:[F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue;-><init>()V

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;)V
    .locals 0
    .param p1, "value"    # Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;

    .line 33
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue;)V

    .line 34
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;->load(Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;)V

    .line 35
    return-void
.end method


# virtual methods
.method public copy()Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;
    .locals 1

    .line 77
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;)V

    return-object v0
.end method

.method public setMesh(Lcom/badlogic/gdx/graphics/Mesh;Lcom/badlogic/gdx/graphics/g3d/Model;)V
    .locals 3
    .param p1, "mesh"    # Lcom/badlogic/gdx/graphics/Mesh;
    .param p2, "model"    # Lcom/badlogic/gdx/graphics/g3d/Model;

    .line 42
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue;->setMesh(Lcom/badlogic/gdx/graphics/Mesh;Lcom/badlogic/gdx/graphics/g3d/Model;)V

    .line 43
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexSize()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;->vertexSize:I

    .line 44
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttribute(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;->positionOffset:I

    .line 45
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v0

    .line 46
    .local v0, "indicesCount":I
    if-lez v0, :cond_0

    .line 47
    new-array v1, v0, [S

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;->indices:[S

    .line 48
    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/Mesh;->getIndices([S)V

    .line 49
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;->indices:[S

    array-length v1, v1

    div-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;->triangleCount:I

    goto :goto_0

    .line 51
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;->indices:[S

    .line 52
    :goto_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Mesh;->getNumVertices()I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;->vertexCount:I

    .line 53
    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;->vertexSize:I

    mul-int/2addr v1, v2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;->vertices:[F

    .line 54
    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/Mesh;->getVertices([F)[F

    .line 55
    return-void
.end method

.method public spawnAux(Lcom/badlogic/gdx/math/Vector3;F)V
    .locals 24
    .param p1, "vector"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "percent"    # F

    .line 59
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;->indices:[S

    if-nez v1, :cond_0

    .line 61
    iget v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;->vertexCount:I

    add-int/lit8 v1, v1, -0x3

    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v1

    iget v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;->vertexSize:I

    mul-int/2addr v1, v2

    .line 62
    .local v1, "triangleIndex":I
    iget v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;->positionOffset:I

    add-int/2addr v3, v1

    .local v3, "p1Offset":I
    add-int v4, v3, v2

    .local v4, "p2Offset":I
    add-int/2addr v2, v4

    .line 63
    .local v2, "p3Offset":I
    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;->vertices:[F

    aget v16, v5, v3

    .local v16, "x1":F
    add-int/lit8 v6, v3, 0x1

    aget v17, v5, v6

    .local v17, "y1":F
    add-int/lit8 v6, v3, 0x2

    aget v18, v5, v6

    .local v18, "z1":F
    aget v19, v5, v4

    .local v19, "x2":F
    add-int/lit8 v6, v4, 0x1

    aget v20, v5, v6

    .local v20, "y2":F
    add-int/lit8 v6, v4, 0x2

    aget v21, v5, v6

    .local v21, "z2":F
    aget v22, v5, v2

    .local v22, "x3":F
    add-int/lit8 v6, v2, 0x1

    aget v23, v5, v6

    .local v23, "y3":F
    add-int/lit8 v6, v2, 0x2

    aget v5, v5, v6

    .line 64
    .local v5, "z3":F
    move/from16 v6, v16

    move/from16 v7, v17

    move/from16 v8, v18

    move/from16 v9, v19

    move/from16 v10, v20

    move/from16 v11, v21

    move/from16 v12, v22

    move/from16 v13, v23

    move v14, v5

    move-object/from16 v15, p1

    invoke-static/range {v6 .. v15}, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;->pick(FFFFFFFFFLcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 65
    .end local v1    # "triangleIndex":I
    .end local v2    # "p3Offset":I
    .end local v3    # "p1Offset":I
    .end local v4    # "p2Offset":I
    .end local v5    # "z3":F
    .end local v16    # "x1":F
    .end local v17    # "y1":F
    .end local v18    # "z1":F
    .end local v19    # "x2":F
    .end local v20    # "y2":F
    .end local v21    # "z2":F
    .end local v22    # "x3":F
    .end local v23    # "y3":F
    goto :goto_0

    .line 67
    :cond_0
    iget v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;->triangleCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    .line 68
    .restart local v1    # "triangleIndex":I
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;->indices:[S

    aget-short v3, v2, v1

    iget v4, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;->vertexSize:I

    mul-int/2addr v3, v4

    iget v5, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;->positionOffset:I

    add-int/2addr v3, v5

    .restart local v3    # "p1Offset":I
    add-int/lit8 v6, v1, 0x1

    aget-short v6, v2, v6

    mul-int/2addr v6, v4

    add-int/2addr v6, v5

    .line 69
    .local v6, "p2Offset":I
    add-int/lit8 v7, v1, 0x2

    aget-short v2, v2, v7

    mul-int/2addr v2, v4

    add-int/2addr v2, v5

    .line 70
    .restart local v2    # "p3Offset":I
    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/UnweightedMeshSpawnShapeValue;->vertices:[F

    aget v5, v4, v3

    .local v5, "x1":F
    add-int/lit8 v7, v3, 0x1

    aget v17, v4, v7

    .restart local v17    # "y1":F
    add-int/lit8 v7, v3, 0x2

    aget v18, v4, v7

    .restart local v18    # "z1":F
    aget v19, v4, v6

    .restart local v19    # "x2":F
    add-int/lit8 v7, v6, 0x1

    aget v20, v4, v7

    .restart local v20    # "y2":F
    add-int/lit8 v7, v6, 0x2

    aget v21, v4, v7

    .restart local v21    # "z2":F
    aget v22, v4, v2

    .restart local v22    # "x3":F
    add-int/lit8 v7, v2, 0x1

    aget v23, v4, v7

    .restart local v23    # "y3":F
    add-int/lit8 v7, v2, 0x2

    aget v4, v4, v7

    .line 71
    .local v4, "z3":F
    move v7, v5

    move/from16 v8, v17

    move/from16 v9, v18

    move/from16 v10, v19

    move/from16 v11, v20

    move/from16 v12, v21

    move/from16 v13, v22

    move/from16 v14, v23

    move v15, v4

    move-object/from16 v16, p1

    invoke-static/range {v7 .. v16}, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;->pick(FFFFFFFFFLcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 73
    .end local v1    # "triangleIndex":I
    .end local v2    # "p3Offset":I
    .end local v3    # "p1Offset":I
    .end local v4    # "z3":F
    .end local v5    # "x1":F
    .end local v6    # "p2Offset":I
    .end local v17    # "y1":F
    .end local v18    # "z1":F
    .end local v19    # "x2":F
    .end local v20    # "y2":F
    .end local v21    # "z2":F
    .end local v22    # "x3":F
    .end local v23    # "y3":F
    :goto_0
    return-void
.end method
