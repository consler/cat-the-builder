.class public Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/SphereShapeBuilder;
.super Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;
.source "SphereShapeBuilder.java"


# static fields
.field private static final normalTransform:Lcom/badlogic/gdx/math/Matrix3;

.field private static final tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/badlogic/gdx/utils/ShortArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ShortArray;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/SphereShapeBuilder;->tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;

    .line 30
    new-instance v0, Lcom/badlogic/gdx/math/Matrix3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/SphereShapeBuilder;->normalTransform:Lcom/badlogic/gdx/math/Matrix3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;-><init>()V

    return-void
.end method

.method public static build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFII)V
    .locals 10
    .param p0, "builder"    # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "depth"    # F
    .param p4, "divisionsU"    # I
    .param p5, "divisionsV"    # I

    .line 33
    const/4 v6, 0x0

    const/high16 v7, 0x43b40000    # 360.0f

    const/4 v8, 0x0

    const/high16 v9, 0x43340000    # 180.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/SphereShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFIIFFFF)V

    .line 34
    return-void
.end method

.method public static build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFIIFFFF)V
    .locals 12
    .param p0, "builder"    # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "depth"    # F
    .param p4, "divisionsU"    # I
    .param p5, "divisionsV"    # I
    .param p6, "angleUFrom"    # F
    .param p7, "angleUTo"    # F
    .param p8, "angleVFrom"    # F
    .param p9, "angleVTo"    # F

    .line 45
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/SphereShapeBuilder;->matTmp1:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v2

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-static/range {v1 .. v11}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/SphereShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/math/Matrix4;FFFIIFFFF)V

    .line 46
    return-void
.end method

.method public static build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/math/Matrix4;FFFII)V
    .locals 11
    .param p0, "builder"    # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;
    .param p1, "transform"    # Lcom/badlogic/gdx/math/Matrix4;
    .param p2, "width"    # F
    .param p3, "height"    # F
    .param p4, "depth"    # F
    .param p5, "divisionsU"    # I
    .param p6, "divisionsV"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 40
    const/4 v7, 0x0

    const/high16 v8, 0x43b40000    # 360.0f

    const/4 v9, 0x0

    const/high16 v10, 0x43340000    # 180.0f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-static/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/SphereShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/math/Matrix4;FFFIIFFFF)V

    .line 41
    return-void
.end method

.method public static build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/math/Matrix4;FFFIIFFFF)V
    .locals 31
    .param p0, "builder"    # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;
    .param p1, "transform"    # Lcom/badlogic/gdx/math/Matrix4;
    .param p2, "width"    # F
    .param p3, "height"    # F
    .param p4, "depth"    # F
    .param p5, "divisionsU"    # I
    .param p6, "divisionsV"    # I
    .param p7, "angleUFrom"    # F
    .param p8, "angleUTo"    # F
    .param p9, "angleVFrom"    # F
    .param p10, "angleVTo"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 53
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    move/from16 v3, p6

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v5, p2, v4

    .line 54
    .local v5, "hw":F
    mul-float v6, p3, v4

    .line 55
    .local v6, "hh":F
    mul-float v4, v4, p4

    .line 56
    .local v4, "hd":F
    const v7, 0x3c8efa35

    mul-float v8, p7, v7

    .line 57
    .local v8, "auo":F
    sub-float v9, p8, p7

    mul-float/2addr v9, v7

    int-to-float v10, v2

    div-float/2addr v9, v10

    .line 58
    .local v9, "stepU":F
    mul-float v10, p9, v7

    .line 59
    .local v10, "avo":F
    sub-float v11, p10, p9

    mul-float/2addr v11, v7

    int-to-float v7, v3

    div-float/2addr v11, v7

    .line 60
    .local v11, "stepV":F
    int-to-float v7, v2

    const/high16 v12, 0x3f800000    # 1.0f

    div-float v7, v12, v7

    .line 61
    .local v7, "us":F
    int-to-float v13, v3

    div-float v13, v12, v13

    .line 62
    .local v13, "vs":F
    const/4 v14, 0x0

    .line 63
    .local v14, "u":F
    const/4 v15, 0x0

    .line 64
    .local v15, "v":F
    const/16 v16, 0x0

    .line 65
    .local v16, "angleU":F
    const/16 v17, 0x0

    .line 66
    .local v17, "angleV":F
    sget-object v12, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/SphereShapeBuilder;->vertTmp3:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move/from16 v19, v14

    .end local v14    # "u":F
    .local v19, "u":F
    const/4 v14, 0x0

    invoke-virtual {v12, v14, v14, v14, v14}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v12

    .line 67
    .local v12, "curr1":Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    const/4 v14, 0x1

    iput-boolean v14, v12, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasNormal:Z

    iput-boolean v14, v12, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasPosition:Z

    iput-boolean v14, v12, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasUV:Z

    .line 69
    sget-object v14, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/SphereShapeBuilder;->normalTransform:Lcom/badlogic/gdx/math/Matrix3;

    invoke-virtual {v14, v1}, Lcom/badlogic/gdx/math/Matrix3;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix3;

    .line 71
    add-int/lit8 v14, v2, 0x3

    .line 72
    .local v14, "s":I
    sget-object v20, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/SphereShapeBuilder;->tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual/range {v20 .. v20}, Lcom/badlogic/gdx/utils/ShortArray;->clear()V

    .line 73
    move/from16 v20, v15

    .end local v15    # "v":F
    .local v20, "v":F
    sget-object v15, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/SphereShapeBuilder;->tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;

    mul-int/lit8 v1, v2, 0x2

    invoke-virtual {v15, v1}, Lcom/badlogic/gdx/utils/ShortArray;->ensureCapacity(I)[S

    .line 74
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/SphereShapeBuilder;->tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;

    iput v14, v1, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    .line 75
    const/4 v1, 0x0

    .line 77
    .local v1, "tempOffset":I
    add-int/lit8 v15, v3, 0x1

    add-int/lit8 v21, v2, 0x1

    mul-int v15, v15, v21

    invoke-interface {v0, v15}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->ensureVertices(I)V

    .line 78
    invoke-interface {v0, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->ensureRectangleIndices(I)V

    .line 79
    const/4 v15, 0x0

    .local v15, "iv":I
    :goto_0
    if-gt v15, v3, :cond_2

    .line 80
    move/from16 v21, v1

    .end local v1    # "tempOffset":I
    .local v21, "tempOffset":I
    int-to-float v1, v15

    mul-float/2addr v1, v11

    add-float v17, v10, v1

    .line 81
    int-to-float v1, v15

    mul-float/2addr v1, v13

    .line 82
    .end local v20    # "v":F
    .local v1, "v":F
    invoke-static/range {v17 .. v17}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v20

    .line 83
    .local v20, "t":F
    invoke-static/range {v17 .. v17}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v22

    mul-float v3, v22, v6

    .line 84
    .local v3, "h":F
    const/16 v22, 0x0

    move/from16 v23, v6

    move/from16 v6, v21

    move/from16 v30, v22

    move/from16 v22, v10

    move/from16 v10, v30

    .end local v21    # "tempOffset":I
    .local v6, "tempOffset":I
    .local v10, "iu":I
    .local v22, "avo":F
    .local v23, "hh":F
    :goto_1
    if-gt v10, v2, :cond_1

    .line 85
    move/from16 v24, v11

    .end local v11    # "stepV":F
    .local v24, "stepV":F
    int-to-float v11, v10

    mul-float/2addr v11, v9

    add-float v16, v8, v11

    .line 86
    int-to-float v11, v10

    mul-float/2addr v11, v7

    const/high16 v18, 0x3f800000    # 1.0f

    sub-float v11, v18, v11

    .line 87
    .end local v19    # "u":F
    .local v11, "u":F
    move/from16 v25, v7

    .end local v7    # "us":F
    .local v25, "us":F
    iget-object v7, v12, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-static/range {v16 .. v16}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v19

    mul-float v19, v19, v5

    move/from16 v26, v5

    .end local v5    # "hw":F
    .local v26, "hw":F
    mul-float v5, v19, v20

    invoke-static/range {v16 .. v16}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v19

    mul-float v19, v19, v4

    move/from16 v27, v4

    .end local v4    # "hd":F
    .local v27, "hd":F
    mul-float v4, v19, v20

    invoke-virtual {v7, v5, v3, v4}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 88
    iget-object v4, v12, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->normal:Lcom/badlogic/gdx/math/Vector3;

    iget-object v5, v12, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    sget-object v5, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/SphereShapeBuilder;->normalTransform:Lcom/badlogic/gdx/math/Matrix3;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 89
    iget-object v4, v12, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->position:Lcom/badlogic/gdx/math/Vector3;

    move-object/from16 v5, p1

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 90
    iget-object v4, v12, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->uv:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v4, v11, v1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 91
    sget-object v4, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/SphereShapeBuilder;->tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-interface {v0, v12}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result v7

    invoke-virtual {v4, v6, v7}, Lcom/badlogic/gdx/utils/ShortArray;->set(IS)V

    .line 92
    add-int v4, v6, v14

    .line 93
    .local v4, "o":I
    if-lez v15, :cond_0

    if-lez v10, :cond_0

    .line 94
    sget-object v7, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/SphereShapeBuilder;->tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/utils/ShortArray;->get(I)S

    move-result v7

    move/from16 v28, v1

    .end local v1    # "v":F
    .local v28, "v":F
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/SphereShapeBuilder;->tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;

    add-int/lit8 v19, v4, -0x1

    move/from16 v29, v3

    .end local v3    # "h":F
    .local v29, "h":F
    rem-int v3, v19, v14

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/ShortArray;->get(I)S

    move-result v1

    sget-object v3, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/SphereShapeBuilder;->tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;

    add-int/lit8 v19, v2, 0x2

    sub-int v19, v4, v19

    rem-int v5, v19, v14

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/utils/ShortArray;->get(I)S

    move-result v3

    sget-object v5, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/SphereShapeBuilder;->tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;

    add-int/lit8 v19, v2, 0x1

    sub-int v19, v4, v19

    rem-int v2, v19, v14

    .line 95
    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/utils/ShortArray;->get(I)S

    move-result v2

    .line 94
    invoke-interface {v0, v7, v1, v3, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->rect(SSSS)V

    goto :goto_2

    .line 93
    .end local v28    # "v":F
    .end local v29    # "h":F
    .restart local v1    # "v":F
    .restart local v3    # "h":F
    :cond_0
    move/from16 v28, v1

    move/from16 v29, v3

    .line 96
    .end local v1    # "v":F
    .end local v3    # "h":F
    .restart local v28    # "v":F
    .restart local v29    # "h":F
    :goto_2
    add-int/lit8 v1, v6, 0x1

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/SphereShapeBuilder;->tmpIndices:Lcom/badlogic/gdx/utils/ShortArray;

    iget v2, v2, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    rem-int v6, v1, v2

    .line 84
    .end local v4    # "o":I
    add-int/lit8 v10, v10, 0x1

    move/from16 v2, p5

    move/from16 v19, v11

    move/from16 v11, v24

    move/from16 v7, v25

    move/from16 v5, v26

    move/from16 v4, v27

    move/from16 v1, v28

    move/from16 v3, v29

    goto/16 :goto_1

    .end local v24    # "stepV":F
    .end local v25    # "us":F
    .end local v26    # "hw":F
    .end local v27    # "hd":F
    .end local v28    # "v":F
    .end local v29    # "h":F
    .restart local v1    # "v":F
    .restart local v3    # "h":F
    .local v4, "hd":F
    .restart local v5    # "hw":F
    .restart local v7    # "us":F
    .local v11, "stepV":F
    .restart local v19    # "u":F
    :cond_1
    move/from16 v28, v1

    move/from16 v29, v3

    move/from16 v27, v4

    move/from16 v26, v5

    move/from16 v25, v7

    move/from16 v24, v11

    const/high16 v18, 0x3f800000    # 1.0f

    .line 79
    .end local v1    # "v":F
    .end local v3    # "h":F
    .end local v4    # "hd":F
    .end local v5    # "hw":F
    .end local v7    # "us":F
    .end local v10    # "iu":I
    .end local v11    # "stepV":F
    .end local v20    # "t":F
    .restart local v24    # "stepV":F
    .restart local v25    # "us":F
    .restart local v26    # "hw":F
    .restart local v27    # "hd":F
    .restart local v28    # "v":F
    add-int/lit8 v15, v15, 0x1

    move/from16 v2, p5

    move/from16 v3, p6

    move v1, v6

    move/from16 v10, v22

    move/from16 v6, v23

    move/from16 v20, v28

    goto/16 :goto_0

    .line 99
    .end local v15    # "iv":I
    .end local v22    # "avo":F
    .end local v23    # "hh":F
    .end local v24    # "stepV":F
    .end local v25    # "us":F
    .end local v26    # "hw":F
    .end local v27    # "hd":F
    .end local v28    # "v":F
    .local v1, "tempOffset":I
    .restart local v4    # "hd":F
    .restart local v5    # "hw":F
    .local v6, "hh":F
    .restart local v7    # "us":F
    .local v10, "avo":F
    .restart local v11    # "stepV":F
    .local v20, "v":F
    :cond_2
    return-void
.end method
