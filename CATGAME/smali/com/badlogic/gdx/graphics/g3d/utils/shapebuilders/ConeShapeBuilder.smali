.class public Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/ConeShapeBuilder;
.super Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;
.source "ConeShapeBuilder.java"


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

    .line 27
    const/4 v5, 0x0

    const/high16 v6, 0x43b40000    # 360.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/ConeShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFIFF)V

    .line 28
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

    .line 32
    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/ConeShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFIFFZ)V

    .line 33
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

    .line 38
    move-object/from16 v5, p0

    move/from16 v2, p4

    add-int/lit8 v0, v2, 0x2

    invoke-interface {v5, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->ensureVertices(I)V

    .line 39
    invoke-interface {v5, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->ensureTriangleIndices(I)V

    .line 41
    const/high16 v0, 0x3f000000    # 0.5f

    mul-float v20, p1, v0

    .line 42
    .local v20, "hw":F
    mul-float v1, p2, v0

    .line 43
    .local v1, "hh":F
    mul-float v21, p3, v0

    .line 44
    .local v21, "hd":F
    const v3, 0x3c8efa35

    mul-float v22, p5, v3

    .line 45
    .local v22, "ao":F
    sub-float v4, p6, p5

    mul-float/2addr v4, v3

    int-to-float v3, v2

    div-float v23, v4, v3

    .line 46
    .local v23, "step":F
    int-to-float v3, v2

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v24, v4, v3

    .line 47
    .local v24, "us":F
    const/4 v3, 0x0

    .line 48
    .local v3, "u":F
    const/4 v6, 0x0

    .line 49
    .local v6, "angle":F
    sget-object v7, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/ConeShapeBuilder;->vertTmp3:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v8, v8, v8}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v15

    .line 50
    .local v15, "curr1":Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    const/4 v7, 0x1

    iput-boolean v7, v15, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasNormal:Z

    iput-boolean v7, v15, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasPosition:Z

    iput-boolean v7, v15, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasUV:Z

    .line 51
    sget-object v7, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/ConeShapeBuilder;->vertTmp4:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    invoke-virtual {v7, v8, v8, v8, v8}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v1, v8}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setPos(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v7

    invoke-virtual {v7, v8, v4, v8}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setNor(FFF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v7

    invoke-virtual {v7, v0, v8}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->setUV(FF)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v0

    .line 52
    .local v0, "curr2":Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    invoke-interface {v5, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result v14

    .line 53
    .local v14, "base":S
    const/4 v7, 0x0

    .line 54
    .local v7, "i2":S
    const/4 v9, 0x0

    move/from16 v25, v3

    move/from16 v26, v6

    move v13, v7

    .end local v3    # "u":F
    .end local v6    # "angle":F
    .end local v7    # "i2":S
    .local v9, "i":I
    .local v13, "i2":S
    .local v25, "u":F
    .local v26, "angle":F
    :goto_0
    if-gt v9, v2, :cond_1

    .line 55
    int-to-float v3, v9

    mul-float v3, v3, v23

    add-float v26, v22, v3

    .line 56
    int-to-float v3, v9

    mul-float v3, v3, v24

    sub-float v3, v4, v3

    .line 57
    .end local v25    # "u":F
    .restart local v3    # "u":F
    iget-object v6, v15, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-static/range {v26 .. v26}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v7

    mul-float v7, v7, v20

    invoke-static/range {v26 .. v26}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v10

    mul-float v10, v10, v21

    invoke-virtual {v6, v7, v8, v10}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 58
    iget-object v6, v15, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->normal:Lcom/badlogic/gdx/math/Vector3;

    iget-object v7, v15, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 59
    iget-object v6, v15, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->position:Lcom/badlogic/gdx/math/Vector3;

    neg-float v7, v1

    iput v7, v6, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 60
    iget-object v6, v15, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->uv:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v6, v3, v4}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 61
    invoke-interface {v5, v15}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result v6

    .line 62
    .local v6, "i1":S
    if-eqz v9, :cond_0

    invoke-interface {v5, v14, v6, v13}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->triangle(SSS)V

    .line 63
    :cond_0
    move v13, v6

    .line 54
    add-int/lit8 v9, v9, 0x1

    move/from16 v25, v3

    goto :goto_0

    .line 65
    .end local v3    # "u":F
    .end local v6    # "i1":S
    .end local v9    # "i":I
    .restart local v25    # "u":F
    :cond_1
    if-eqz p7, :cond_2

    .line 66
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    neg-float v7, v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, -0x40800000    # -1.0f

    const/4 v11, 0x0

    const/high16 v12, -0x40800000    # -1.0f

    const/16 v16, 0x0

    move/from16 v27, v13

    .end local v13    # "i2":S
    .local v27, "i2":S
    move/from16 v13, v16

    move/from16 v28, v14

    .end local v14    # "base":S
    .local v28, "base":S
    move/from16 v14, v16

    move-object/from16 v29, v15

    .end local v15    # "curr1":Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .local v29, "curr1":Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    move/from16 v15, v16

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v19, 0x43340000    # 180.0f

    sub-float v18, v19, p6

    sub-float v19, v19, p5

    move-object/from16 v30, v0

    .end local v0    # "curr2":Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .local v30, "curr2":Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    move-object/from16 v0, p0

    move/from16 v31, v1

    .end local v1    # "hh":F
    .local v31, "hh":F
    move/from16 v1, p1

    move/from16 v2, p3

    move/from16 v5, p4

    invoke-static/range {v0 .. v19}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFFIFFFFFFFFFFFFFF)V

    goto :goto_1

    .line 65
    .end local v27    # "i2":S
    .end local v28    # "base":S
    .end local v29    # "curr1":Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .end local v30    # "curr2":Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .end local v31    # "hh":F
    .restart local v0    # "curr2":Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .restart local v1    # "hh":F
    .restart local v13    # "i2":S
    .restart local v14    # "base":S
    .restart local v15    # "curr1":Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    :cond_2
    move-object/from16 v30, v0

    move/from16 v31, v1

    move/from16 v27, v13

    move/from16 v28, v14

    move-object/from16 v29, v15

    .line 68
    .end local v0    # "curr2":Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .end local v1    # "hh":F
    .end local v13    # "i2":S
    .end local v14    # "base":S
    .end local v15    # "curr1":Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .restart local v27    # "i2":S
    .restart local v28    # "base":S
    .restart local v29    # "curr1":Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .restart local v30    # "curr2":Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    .restart local v31    # "hh":F
    :goto_1
    return-void
.end method
