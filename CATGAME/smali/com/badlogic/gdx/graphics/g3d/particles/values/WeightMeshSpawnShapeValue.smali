.class public final Lcom/badlogic/gdx/graphics/g3d/particles/values/WeightMeshSpawnShapeValue;
.super Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue;
.source "WeightMeshSpawnShapeValue.java"


# instance fields
.field private distribution:Lcom/badlogic/gdx/math/CumulativeDistribution;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/math/CumulativeDistribution<",
            "Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue;-><init>()V

    .line 39
    new-instance v0, Lcom/badlogic/gdx/math/CumulativeDistribution;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/CumulativeDistribution;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/WeightMeshSpawnShapeValue;->distribution:Lcom/badlogic/gdx/math/CumulativeDistribution;

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/values/WeightMeshSpawnShapeValue;)V
    .locals 1
    .param p1, "value"    # Lcom/badlogic/gdx/graphics/g3d/particles/values/WeightMeshSpawnShapeValue;

    .line 32
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue;)V

    .line 33
    new-instance v0, Lcom/badlogic/gdx/math/CumulativeDistribution;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/CumulativeDistribution;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/WeightMeshSpawnShapeValue;->distribution:Lcom/badlogic/gdx/math/CumulativeDistribution;

    .line 34
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/WeightMeshSpawnShapeValue;->load(Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;)V

    .line 35
    return-void
.end method


# virtual methods
.method public calculateWeights()V
    .locals 34

    .line 50
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/WeightMeshSpawnShapeValue;->distribution:Lcom/badlogic/gdx/math/CumulativeDistribution;

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/CumulativeDistribution;->clear()V

    .line 51
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/WeightMeshSpawnShapeValue;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Mesh;->getVertexAttributes()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v1

    .line 52
    .local v1, "attributes":Lcom/badlogic/gdx/graphics/VertexAttributes;
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/WeightMeshSpawnShapeValue;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Mesh;->getNumIndices()I

    move-result v2

    .line 53
    .local v2, "indicesCount":I
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/WeightMeshSpawnShapeValue;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Mesh;->getNumVertices()I

    move-result v3

    .line 54
    .local v3, "vertexCount":I
    iget v4, v1, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    div-int/lit8 v4, v4, 0x4

    int-to-short v4, v4

    .local v4, "vertexSize":I
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/graphics/VertexAttributes;->findByUsage(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v5

    iget v5, v5, Lcom/badlogic/gdx/graphics/VertexAttribute;->offset:I

    div-int/lit8 v5, v5, 0x4

    int-to-short v5, v5

    .line 55
    .local v5, "positionOffset":I
    mul-int v6, v3, v4

    new-array v6, v6, [F

    .line 56
    .local v6, "vertices":[F
    iget-object v7, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/WeightMeshSpawnShapeValue;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/graphics/Mesh;->getVertices([F)[F

    .line 57
    const/high16 v7, 0x40000000    # 2.0f

    if-lez v2, :cond_1

    .line 58
    new-array v8, v2, [S

    .line 59
    .local v8, "indices":[S
    iget-object v9, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/WeightMeshSpawnShapeValue;->mesh:Lcom/badlogic/gdx/graphics/Mesh;

    invoke-virtual {v9, v8}, Lcom/badlogic/gdx/graphics/Mesh;->getIndices([S)V

    .line 62
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v2, :cond_0

    .line 63
    aget-short v10, v8, v9

    mul-int/2addr v10, v4

    add-int/2addr v10, v5

    .local v10, "p1Offset":I
    add-int/lit8 v11, v9, 0x1

    aget-short v11, v8, v11

    mul-int/2addr v11, v4

    add-int/2addr v11, v5

    .local v11, "p2Offset":I
    add-int/lit8 v12, v9, 0x2

    aget-short v12, v8, v12

    mul-int/2addr v12, v4

    add-int/2addr v12, v5

    .line 65
    .local v12, "p3Offset":I
    aget v23, v6, v10

    .local v23, "x1":F
    add-int/lit8 v13, v10, 0x1

    aget v24, v6, v13

    .local v24, "y1":F
    add-int/lit8 v13, v10, 0x2

    aget v25, v6, v13

    .local v25, "z1":F
    aget v26, v6, v11

    .local v26, "x2":F
    add-int/lit8 v13, v11, 0x1

    aget v27, v6, v13

    .local v27, "y2":F
    add-int/lit8 v13, v11, 0x2

    aget v28, v6, v13

    .local v28, "z2":F
    aget v29, v6, v12

    .local v29, "x3":F
    add-int/lit8 v13, v12, 0x1

    aget v30, v6, v13

    .local v30, "y3":F
    add-int/lit8 v13, v12, 0x2

    aget v31, v6, v13

    .line 66
    .local v31, "z3":F
    sub-float v13, v27, v30

    mul-float v13, v13, v23

    sub-float v14, v30, v24

    mul-float v14, v14, v26

    add-float/2addr v13, v14

    sub-float v14, v24, v27

    mul-float v14, v14, v29

    add-float/2addr v13, v14

    div-float/2addr v13, v7

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v15

    .line 67
    .local v15, "area":F
    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/WeightMeshSpawnShapeValue;->distribution:Lcom/badlogic/gdx/math/CumulativeDistribution;

    new-instance v13, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;

    move-object/from16 v32, v13

    move-object v7, v14

    move/from16 v14, v23

    move-object/from16 v33, v1

    move v1, v15

    .end local v15    # "area":F
    .local v1, "area":F
    .local v33, "attributes":Lcom/badlogic/gdx/graphics/VertexAttributes;
    move/from16 v15, v24

    move/from16 v16, v25

    move/from16 v17, v26

    move/from16 v18, v27

    move/from16 v19, v28

    move/from16 v20, v29

    move/from16 v21, v30

    move/from16 v22, v31

    invoke-direct/range {v13 .. v22}, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;-><init>(FFFFFFFFF)V

    invoke-virtual {v7, v13, v1}, Lcom/badlogic/gdx/math/CumulativeDistribution;->add(Ljava/lang/Object;F)V

    .line 62
    .end local v1    # "area":F
    .end local v10    # "p1Offset":I
    .end local v11    # "p2Offset":I
    .end local v12    # "p3Offset":I
    .end local v23    # "x1":F
    .end local v24    # "y1":F
    .end local v25    # "z1":F
    .end local v26    # "x2":F
    .end local v27    # "y2":F
    .end local v28    # "z2":F
    .end local v29    # "x3":F
    .end local v30    # "y3":F
    .end local v31    # "z3":F
    add-int/lit8 v9, v9, 0x3

    move-object/from16 v1, v33

    const/high16 v7, 0x40000000    # 2.0f

    goto :goto_0

    .end local v33    # "attributes":Lcom/badlogic/gdx/graphics/VertexAttributes;
    .local v1, "attributes":Lcom/badlogic/gdx/graphics/VertexAttributes;
    :cond_0
    move-object/from16 v33, v1

    .line 69
    .end local v1    # "attributes":Lcom/badlogic/gdx/graphics/VertexAttributes;
    .end local v8    # "indices":[S
    .end local v9    # "i":I
    .restart local v33    # "attributes":Lcom/badlogic/gdx/graphics/VertexAttributes;
    move/from16 v30, v2

    move/from16 v31, v3

    move/from16 v32, v5

    goto/16 :goto_2

    .line 71
    .end local v33    # "attributes":Lcom/badlogic/gdx/graphics/VertexAttributes;
    .restart local v1    # "attributes":Lcom/badlogic/gdx/graphics/VertexAttributes;
    :cond_1
    move-object/from16 v33, v1

    .end local v1    # "attributes":Lcom/badlogic/gdx/graphics/VertexAttributes;
    .restart local v33    # "attributes":Lcom/badlogic/gdx/graphics/VertexAttributes;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 72
    add-int v7, v1, v5

    .local v7, "p1Offset":I
    add-int v8, v7, v4

    .local v8, "p2Offset":I
    add-int v9, v8, v4

    .line 73
    .local v9, "p3Offset":I
    aget v20, v6, v7

    .local v20, "x1":F
    add-int/lit8 v10, v7, 0x1

    aget v21, v6, v10

    .local v21, "y1":F
    add-int/lit8 v10, v7, 0x2

    aget v22, v6, v10

    .local v22, "z1":F
    aget v23, v6, v8

    .local v23, "x2":F
    add-int/lit8 v10, v8, 0x1

    aget v24, v6, v10

    .local v24, "y2":F
    add-int/lit8 v10, v8, 0x2

    aget v25, v6, v10

    .local v25, "z2":F
    aget v26, v6, v9

    .local v26, "x3":F
    add-int/lit8 v10, v9, 0x1

    aget v27, v6, v10

    .local v27, "y3":F
    add-int/lit8 v10, v9, 0x2

    aget v28, v6, v10

    .line 74
    .local v28, "z3":F
    sub-float v10, v24, v27

    mul-float v10, v10, v20

    sub-float v11, v27, v21

    mul-float v11, v11, v23

    add-float/2addr v10, v11

    sub-float v11, v21, v24

    mul-float v11, v11, v26

    add-float/2addr v10, v11

    const/high16 v29, 0x40000000    # 2.0f

    div-float v10, v10, v29

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v15

    .line 75
    .restart local v15    # "area":F
    iget-object v14, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/WeightMeshSpawnShapeValue;->distribution:Lcom/badlogic/gdx/math/CumulativeDistribution;

    new-instance v13, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;

    move-object v10, v13

    move/from16 v11, v20

    move/from16 v12, v21

    move/from16 v30, v2

    move-object v2, v13

    .end local v2    # "indicesCount":I
    .local v30, "indicesCount":I
    move/from16 v13, v22

    move/from16 v31, v3

    move-object v3, v14

    .end local v3    # "vertexCount":I
    .local v31, "vertexCount":I
    move/from16 v14, v23

    move/from16 v32, v5

    move v5, v15

    .end local v15    # "area":F
    .local v5, "area":F
    .local v32, "positionOffset":I
    move/from16 v15, v24

    move/from16 v16, v25

    move/from16 v17, v26

    move/from16 v18, v27

    move/from16 v19, v28

    invoke-direct/range {v10 .. v19}, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;-><init>(FFFFFFFFF)V

    invoke-virtual {v3, v2, v5}, Lcom/badlogic/gdx/math/CumulativeDistribution;->add(Ljava/lang/Object;F)V

    .line 71
    .end local v5    # "area":F
    .end local v7    # "p1Offset":I
    .end local v8    # "p2Offset":I
    .end local v9    # "p3Offset":I
    .end local v20    # "x1":F
    .end local v21    # "y1":F
    .end local v22    # "z1":F
    .end local v23    # "x2":F
    .end local v24    # "y2":F
    .end local v25    # "z2":F
    .end local v26    # "x3":F
    .end local v27    # "y3":F
    .end local v28    # "z3":F
    add-int/2addr v1, v4

    move/from16 v2, v30

    move/from16 v3, v31

    move/from16 v5, v32

    goto :goto_1

    .end local v30    # "indicesCount":I
    .end local v31    # "vertexCount":I
    .end local v32    # "positionOffset":I
    .restart local v2    # "indicesCount":I
    .restart local v3    # "vertexCount":I
    .local v5, "positionOffset":I
    :cond_2
    move/from16 v30, v2

    move/from16 v31, v3

    move/from16 v32, v5

    .line 80
    .end local v1    # "i":I
    .end local v2    # "indicesCount":I
    .end local v3    # "vertexCount":I
    .end local v5    # "positionOffset":I
    .restart local v30    # "indicesCount":I
    .restart local v31    # "vertexCount":I
    .restart local v32    # "positionOffset":I
    :goto_2
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/WeightMeshSpawnShapeValue;->distribution:Lcom/badlogic/gdx/math/CumulativeDistribution;

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/CumulativeDistribution;->generateNormalized()V

    .line 81
    return-void
.end method

.method public copy()Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;
    .locals 1

    .line 93
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/WeightMeshSpawnShapeValue;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/WeightMeshSpawnShapeValue;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/values/WeightMeshSpawnShapeValue;)V

    return-object v0
.end method

.method public init()V
    .locals 0

    .line 44
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/WeightMeshSpawnShapeValue;->calculateWeights()V

    .line 45
    return-void
.end method

.method public spawnAux(Lcom/badlogic/gdx/math/Vector3;F)V
    .locals 8
    .param p1, "vector"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "percent"    # F

    .line 85
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/WeightMeshSpawnShapeValue;->distribution:Lcom/badlogic/gdx/math/CumulativeDistribution;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/CumulativeDistribution;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;

    .line 86
    .local v0, "t":Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;
    invoke-static {}, Lcom/badlogic/gdx/math/MathUtils;->random()F

    move-result v1

    .local v1, "a":F
    invoke-static {}, Lcom/badlogic/gdx/math/MathUtils;->random()F

    move-result v2

    .line 87
    .local v2, "b":F
    iget v3, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;->x1:F

    iget v4, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;->x2:F

    iget v5, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;->x1:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iget v4, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;->x3:F

    iget v5, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;->x1:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iget v4, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;->y1:F

    iget v5, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;->y2:F

    iget v6, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;->y1:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    iget v5, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;->y3:F

    iget v6, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;->y1:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    iget v5, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;->z1:F

    iget v6, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;->z2:F

    iget v7, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;->z1:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iget v6, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;->z3:F

    iget v7, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/MeshSpawnShapeValue$Triangle;->z1:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    invoke-virtual {p1, v3, v4, v5}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 89
    return-void
.end method
