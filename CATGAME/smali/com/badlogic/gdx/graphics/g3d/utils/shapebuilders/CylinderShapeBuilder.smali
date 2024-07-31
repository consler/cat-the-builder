.class public Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/CylinderShapeBuilder;
.super Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;
.source "CylinderShapeBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;-><init>()V

    return-void
.end method

.method public static build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFI)V
    .locals 7
    .param p0, "builder"    # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "depth"    # F
    .param p4, "divisions"    # I

    .line 28
    const/4 v5, 0x0

    const/high16 v6, 0x43b40000    # 360.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/CylinderShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFIFF)V

    .line 29
    return-void
.end method

.method public static build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFIFF)V
    .locals 8
    .param p0, "builder"    # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "depth"    # F
    .param p4, "divisions"    # I
    .param p5, "angleFrom"    # F
    .param p6, "angleTo"    # F

    .line 33
    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/CylinderShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFIFFZ)V

    .line 34
    return-void
.end method

.method public static build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFIFFZ)V
    .locals 32
    .param p0, "builder"    # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "depth"    # F
    .param p4, "divisions"    # I
    .param p5, "angleFrom"    # F
    .param p6, "angleTo"    # F
    .param p7, "close"    # Z

    .line 40
    move-object/from16 v7, p0

    move/from16 v5, p4

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float v20, p1, v0

    .line 41
    .local v20, "hw":F
    mul-float v2, p2, v0

    .line 42
    .local v2, "hh":F
    mul-float v21, p3, v0

    .line 43
    .local v21, "hd":F
    const v0, 0x3c8efa35

    mul-float v22, p5, v0

    .line 44
    .local v22, "ao":F
    sub-float v1, p6, p5

    mul-float/2addr v1, v0

    int-to-float v0, v5

    div-float v23, v1, v0

    .line 45
    .local v23, "step":F
    int-to-float v0, v5

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v24, v1, v0

    .line 46
    .local v24, "us":F
    const/4 v0, 0x0

    .line 47
    .local v0, "u":F
    const/4 v3, 0x0

    .line 48
    .local v3, "angle":F
    sget-object v4, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/CylinderShapeBuilder;->vertTmp3:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v6, v6, v6}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v15

    .line 49
    .local v15, "curr1":Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    const/4 v4, 0x1

    iput-boolean v4, v15, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasNormal:Z

    iput-boolean v4, v15, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasPosition:Z

    iput-boolean v4, v15, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasUV:Z

    .line 50
    sget-object v8, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/CylinderShapeBuilder;->vertTmp4:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v8, v6, v6, v6, v6}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v14

    .line 51
    .local v14, "curr2":Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    iput-boolean v4, v14, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasNormal:Z

    iput-boolean v4, v14, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasPosition:Z

    iput-boolean v4, v14, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasUV:Z

    .line 52
    const/4 v4, 0x0

    .local v4, "i3":S
    const/4 v6, 0x0

    .line 54
    .local v6, "i4":S
    add-int/lit8 v8, v5, 0x1

    mul-int/lit8 v8, v8, 0x2

    invoke-interface {v7, v8}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->ensureVertices(I)V

    .line 55
    invoke-interface {v7, v5}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->ensureRectangleIndices(I)V

    .line 56
    const/4 v8, 0x0

    move/from16 v25, v0

    move/from16 v26, v3

    move v0, v4

    move v13, v6

    .end local v3    # "angle":F
    .end local v4    # "i3":S
    .end local v6    # "i4":S
    .local v0, "i3":S
    .local v8, "i":I
    .local v13, "i4":S
    .local v25, "u":F
    .local v26, "angle":F
    :goto_0
    if-gt v8, v5, :cond_1

    .line 57
    int-to-float v3, v8

    mul-float v3, v3, v23

    add-float v26, v22, v3

    .line 58
    int-to-float v3, v8

    mul-float v3, v3, v24

    sub-float v3, v1, v3

    .line 59
    .end local v25    # "u":F
    .local v3, "u":F
    iget-object v4, v15, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-static/range {v26 .. v26}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v6

    mul-float v6, v6, v20

    invoke-static/range {v26 .. v26}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v9

    mul-float v9, v9, v21

    const/4 v10, 0x0

    invoke-virtual {v4, v6, v10, v9}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 60
    iget-object v4, v15, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->normal:Lcom/badlogic/gdx/math/Vector3;

    iget-object v6, v15, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 61
    iget-object v4, v15, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->position:Lcom/badlogic/gdx/math/Vector3;

    neg-float v6, v2

    iput v6, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 62
    iget-object v4, v15, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->uv:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v4, v3, v1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 63
    iget-object v4, v14, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->position:Lcom/badlogic/gdx/math/Vector3;

    iget-object v6, v15, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 64
    iget-object v4, v14, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->normal:Lcom/badlogic/gdx/math/Vector3;

    iget-object v6, v15, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->normal:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 65
    iget-object v4, v14, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->position:Lcom/badlogic/gdx/math/Vector3;

    iput v2, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 66
    iget-object v4, v14, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->uv:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v4, v3, v10}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 67
    invoke-interface {v7, v15}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result v4

    .line 68
    .local v4, "i2":S
    invoke-interface {v7, v14}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result v6

    .line 69
    .local v6, "i1":S
    if-eqz v8, :cond_0

    invoke-interface {v7, v0, v6, v4, v13}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->rect(SSSS)V

    .line 70
    :cond_0
    move v13, v4

    .line 71
    move v0, v6

    .line 56
    add-int/lit8 v8, v8, 0x1

    move/from16 v25, v3

    goto :goto_0

    .line 73
    .end local v3    # "u":F
    .end local v4    # "i2":S
    .end local v6    # "i1":S
    .end local v8    # "i":I
    .restart local v25    # "u":F
    :cond_1
    if-eqz p7, :cond_2

    .line 74
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    move/from16 v27, v13

    .end local v13    # "i4":S
    .local v27, "i4":S
    move v13, v1

    move-object/from16 v28, v14

    .end local v14    # "curr2":Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .local v28, "curr2":Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    move v14, v1

    move-object/from16 v29, v15

    .end local v15    # "curr1":Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .local v29, "curr1":Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    move v15, v1

    const/16 v16, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    move/from16 v30, v0

    .end local v0    # "i3":S
    .local v30, "i3":S
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v31, v2

    .end local v2    # "hh":F
    .local v31, "hh":F
    move/from16 v2, p3

    move/from16 v5, p4

    move/from16 v7, v31

    move/from16 v18, p5

    move/from16 v19, p6

    invoke-static/range {v0 .. v19}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFFIFFFFFFFFFFFFFF)V

    .line 76
    move/from16 v5, v31

    .end local v31    # "hh":F
    .local v5, "hh":F
    neg-float v7, v5

    const/high16 v10, -0x40800000    # -1.0f

    const/high16 v12, -0x40800000    # -1.0f

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/high16 v0, 0x43340000    # 180.0f

    sub-float v18, v0, p6

    sub-float v19, v0, p5

    move-object/from16 v0, p0

    .end local v5    # "hh":F
    .restart local v31    # "hh":F
    move/from16 v5, p4

    invoke-static/range {v0 .. v19}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFFIFFFFFFFFFFFFFF)V

    goto :goto_1

    .line 73
    .end local v27    # "i4":S
    .end local v28    # "curr2":Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .end local v29    # "curr1":Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .end local v30    # "i3":S
    .end local v31    # "hh":F
    .restart local v0    # "i3":S
    .restart local v2    # "hh":F
    .restart local v13    # "i4":S
    .restart local v14    # "curr2":Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .restart local v15    # "curr1":Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    :cond_2
    move/from16 v30, v0

    move/from16 v31, v2

    move/from16 v27, v13

    move-object/from16 v28, v14

    move-object/from16 v29, v15

    .line 79
    .end local v0    # "i3":S
    .end local v2    # "hh":F
    .end local v13    # "i4":S
    .end local v14    # "curr2":Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .end local v15    # "curr1":Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .restart local v27    # "i4":S
    .restart local v28    # "curr2":Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .restart local v29    # "curr1":Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .restart local v30    # "i3":S
    .restart local v31    # "hh":F
    :goto_1
    return-void
.end method
