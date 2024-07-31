.class public Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;
.super Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;
.source "EllipseShapeBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;-><init>()V

    return-void
.end method

.method public static build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFFIFFFFFF)V
    .locals 14
    .param p0, "builder"    # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "innerWidth"    # F
    .param p4, "innerHeight"    # F
    .param p5, "divisions"    # I
    .param p6, "centerX"    # F
    .param p7, "centerY"    # F
    .param p8, "centerZ"    # F
    .param p9, "normalX"    # F
    .param p10, "normalY"    # F
    .param p11, "normalZ"    # F

    .line 149
    const/4 v12, 0x0

    const/high16 v13, 0x43b40000    # 360.0f

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-static/range {v0 .. v13}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFFIFFFFFFFF)V

    .line 151
    return-void
.end method

.method public static build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFFIFFFFFFFF)V
    .locals 20
    .param p0, "builder"    # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "innerWidth"    # F
    .param p4, "innerHeight"    # F
    .param p5, "divisions"    # I
    .param p6, "centerX"    # F
    .param p7, "centerY"    # F
    .param p8, "centerZ"    # F
    .param p9, "normalX"    # F
    .param p10, "normalY"    # F
    .param p11, "normalZ"    # F
    .param p12, "angleFrom"    # F
    .param p13, "angleTo"    # F

    .line 138
    move/from16 v11, p9

    move/from16 v10, p10

    move/from16 v9, p11

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->tmpV1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v11, v10, v9}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->crs(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 139
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->tmpV2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v11, v10, v9}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v1}, Lcom/badlogic/gdx/math/Vector3;->crs(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 140
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->tmpV2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->len2()F

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->tmpV1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Vector3;->len2()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->tmpV1:Lcom/badlogic/gdx/math/Vector3;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->tmpV2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 141
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->tmpV2:Lcom/badlogic/gdx/math/Vector3;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->tmpV1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, v11, v10, v9}, Lcom/badlogic/gdx/math/Vector3;->crs(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 142
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->tmpV1:Lcom/badlogic/gdx/math/Vector3;

    iget v12, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->tmpV1:Lcom/badlogic/gdx/math/Vector3;

    iget v13, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->tmpV1:Lcom/badlogic/gdx/math/Vector3;

    iget v14, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->tmpV2:Lcom/badlogic/gdx/math/Vector3;

    iget v15, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->tmpV2:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    move/from16 v16, v0

    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->tmpV2:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v18, p12

    move/from16 v19, p13

    invoke-static/range {v0 .. v19}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFFIFFFFFFFFFFFFFF)V

    .line 144
    return-void
.end method

.method public static build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFFIFFFFFFFFFFFFFF)V
    .locals 29
    .param p0, "builder"    # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "innerWidth"    # F
    .param p4, "innerHeight"    # F
    .param p5, "divisions"    # I
    .param p6, "centerX"    # F
    .param p7, "centerY"    # F
    .param p8, "centerZ"    # F
    .param p9, "normalX"    # F
    .param p10, "normalY"    # F
    .param p11, "normalZ"    # F
    .param p12, "tangentX"    # F
    .param p13, "tangentY"    # F
    .param p14, "tangentZ"    # F
    .param p15, "binormalX"    # F
    .param p16, "binormalY"    # F
    .param p17, "binormalZ"    # F
    .param p18, "angleFrom"    # F
    .param p19, "angleTo"    # F

    .line 164
    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, p6

    move/from16 v3, p7

    move/from16 v4, p8

    move/from16 v5, p9

    move/from16 v6, p10

    move/from16 v7, p11

    move/from16 v8, p12

    move/from16 v9, p13

    move/from16 v10, p14

    move/from16 v11, p15

    move/from16 v12, p16

    move/from16 v13, p17

    const/4 v14, 0x0

    cmpg-float v15, p3, v14

    const/4 v14, 0x1

    if-lez v15, :cond_3

    const/4 v15, 0x0

    cmpg-float v16, p4, v15

    if-gtz v16, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    cmpl-float v15, p3, p1

    if-nez v15, :cond_2

    cmpl-float v15, p4, p2

    if-nez v15, :cond_2

    .line 168
    add-int/lit8 v15, v1, 0x1

    invoke-interface {v0, v15}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->ensureVertices(I)V

    .line 169
    add-int/lit8 v15, v1, 0x1

    invoke-interface {v0, v15}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->ensureIndices(I)V

    .line 170
    invoke-interface/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->getPrimitiveType()I

    move-result v15

    if-ne v15, v14, :cond_1

    goto :goto_1

    .line 171
    :cond_1
    new-instance v14, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v15, "Incorrect primitive type : expect GL_LINES because innerWidth == width && innerHeight == height"

    invoke-direct {v14, v15}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 174
    :cond_2
    add-int/lit8 v15, v1, 0x1

    mul-int/lit8 v15, v15, 0x2

    invoke-interface {v0, v15}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->ensureVertices(I)V

    .line 175
    add-int/lit8 v15, v1, 0x1

    invoke-interface {v0, v15}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->ensureRectangleIndices(I)V

    goto :goto_1

    .line 165
    :cond_3
    :goto_0
    add-int/lit8 v15, v1, 0x2

    invoke-interface {v0, v15}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->ensureVertices(I)V

    .line 166
    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->ensureTriangleIndices(I)V

    .line 178
    :goto_1
    const v15, 0x3c8efa35

    mul-float v16, p18, v15

    .line 179
    .local v16, "ao":F
    sub-float v17, p19, p18

    mul-float v17, v17, v15

    int-to-float v15, v1

    div-float v17, v17, v15

    .line 180
    .local v17, "step":F
    sget-object v15, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->tmpV1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v15, v8, v9, v10}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v15

    const/high16 v14, 0x3f000000    # 0.5f

    mul-float v1, p1, v14

    invoke-virtual {v15, v1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    .line 181
    .local v1, "sxEx":Lcom/badlogic/gdx/math/Vector3;
    sget-object v15, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->tmpV2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v15, v11, v12, v13}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v15

    move-object/from16 v19, v1

    .end local v1    # "sxEx":Lcom/badlogic/gdx/math/Vector3;
    .local v19, "sxEx":Lcom/badlogic/gdx/math/Vector3;
    mul-float v1, p2, v14

    invoke-virtual {v15, v1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    .line 182
    .local v1, "syEx":Lcom/badlogic/gdx/math/Vector3;
    sget-object v15, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->tmpV3:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v15, v8, v9, v10}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v15

    mul-float v8, p3, v14

    invoke-virtual {v15, v8}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v8

    .line 183
    .local v8, "sxIn":Lcom/badlogic/gdx/math/Vector3;
    sget-object v15, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->tmpV4:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v15, v11, v12, v13}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v15

    mul-float v9, p4, v14

    invoke-virtual {v15, v9}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v9

    .line 184
    .local v9, "syIn":Lcom/badlogic/gdx/math/Vector3;
    sget-object v15, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->vertTmp3:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    const/4 v14, 0x0

    invoke-virtual {v15, v14, v14, v14, v14}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v15

    .line 185
    .local v15, "currIn":Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    const/4 v14, 0x1

    iput-boolean v14, v15, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasNormal:Z

    iput-boolean v14, v15, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasPosition:Z

    iput-boolean v14, v15, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasUV:Z

    .line 186
    iget-object v14, v15, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->uv:Lcom/badlogic/gdx/math/Vector2;

    const/high16 v10, 0x3f000000    # 0.5f

    invoke-virtual {v14, v10, v10}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 187
    iget-object v10, v15, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v10, v2, v3, v4}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 188
    iget-object v10, v15, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->normal:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v10, v5, v6, v7}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 189
    sget-object v10, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->vertTmp4:Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    const/4 v14, 0x0

    invoke-virtual {v10, v14, v14, v14, v14}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;

    move-result-object v10

    .line 190
    .local v10, "currEx":Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;
    const/4 v14, 0x1

    iput-boolean v14, v10, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasNormal:Z

    iput-boolean v14, v10, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasPosition:Z

    iput-boolean v14, v10, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->hasUV:Z

    .line 191
    iget-object v14, v10, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->uv:Lcom/badlogic/gdx/math/Vector2;

    const/high16 v11, 0x3f000000    # 0.5f

    invoke-virtual {v14, v11, v11}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 192
    iget-object v11, v10, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v11, v2, v3, v4}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 193
    iget-object v11, v10, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->normal:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v11, v5, v6, v7}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 194
    invoke-interface {v0, v10}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result v11

    .line 195
    .local v11, "center":S
    const/4 v14, 0x0

    .line 196
    .local v14, "angle":F
    div-float v18, p3, p1

    const/high16 v20, 0x3f000000    # 0.5f

    mul-float v18, v18, v20

    .line 197
    .local v18, "us":F
    div-float v21, p4, p2

    mul-float v21, v21, v20

    .line 198
    .local v21, "vs":F
    const/16 v22, 0x0

    .local v22, "i2":S
    const/16 v23, 0x0

    .local v23, "i3":S
    const/16 v24, 0x0

    .line 199
    .local v24, "i4":S
    const/16 v25, 0x0

    move/from16 v5, v22

    move/from16 v6, v23

    move/from16 v7, v24

    move/from16 v12, v25

    .end local v22    # "i2":S
    .end local v23    # "i3":S
    .end local v24    # "i4":S
    .local v5, "i2":S
    .local v6, "i3":S
    .local v7, "i4":S
    .local v12, "i":I
    :goto_2
    move/from16 v13, p5

    if-gt v12, v13, :cond_a

    .line 200
    int-to-float v13, v12

    mul-float v13, v13, v17

    add-float v14, v16, v13

    .line 201
    invoke-static {v14}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v13

    .line 202
    .local v13, "x":F
    invoke-static {v14}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v22

    .line 203
    .local v22, "y":F
    move/from16 v23, v14

    .end local v14    # "angle":F
    .local v23, "angle":F
    iget-object v14, v10, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v14, v2, v3, v4}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v14

    move/from16 v24, v11

    move-object/from16 v11, v19

    move/from16 v19, v6

    .end local v6    # "i3":S
    .local v11, "sxEx":Lcom/badlogic/gdx/math/Vector3;
    .local v19, "i3":S
    .local v24, "center":S
    iget v6, v11, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v6, v13

    move/from16 v25, v7

    .end local v7    # "i4":S
    .local v25, "i4":S
    iget v7, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float v7, v7, v22

    add-float/2addr v6, v7

    iget v7, v11, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v7, v13

    move-object/from16 v26, v9

    .end local v9    # "syIn":Lcom/badlogic/gdx/math/Vector3;
    .local v26, "syIn":Lcom/badlogic/gdx/math/Vector3;
    iget v9, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float v9, v9, v22

    add-float/2addr v7, v9

    iget v9, v11, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v9, v13

    move-object/from16 v27, v11

    .end local v11    # "sxEx":Lcom/badlogic/gdx/math/Vector3;
    .local v27, "sxEx":Lcom/badlogic/gdx/math/Vector3;
    iget v11, v1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float v11, v11, v22

    add-float/2addr v9, v11

    invoke-virtual {v14, v6, v7, v9}, Lcom/badlogic/gdx/math/Vector3;->add(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 205
    iget-object v6, v10, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->uv:Lcom/badlogic/gdx/math/Vector2;

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float v14, v13, v7

    add-float/2addr v14, v7

    mul-float v9, v22, v7

    add-float/2addr v9, v7

    invoke-virtual {v6, v14, v9}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 206
    invoke-interface {v0, v10}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result v6

    .line 208
    .local v6, "i1":S
    const/4 v7, 0x0

    cmpg-float v9, p3, v7

    if-lez v9, :cond_8

    cmpg-float v9, p4, v7

    if-gtz v9, :cond_4

    move/from16 v9, v19

    move/from16 v2, v25

    move-object/from16 v14, v26

    const/high16 v7, 0x3f000000    # 0.5f

    move-object/from16 v26, v1

    goto/16 :goto_4

    .line 211
    :cond_4
    cmpl-float v9, p3, p1

    if-nez v9, :cond_6

    cmpl-float v9, p4, p2

    if-nez v9, :cond_6

    .line 212
    if-eqz v12, :cond_5

    invoke-interface {v0, v6, v5}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->line(SS)V

    .line 213
    :cond_5
    move v5, v6

    move/from16 v2, v25

    move-object/from16 v14, v26

    const/high16 v7, 0x3f000000    # 0.5f

    move-object/from16 v26, v1

    move/from16 v1, v24

    goto/16 :goto_6

    .line 215
    :cond_6
    iget-object v9, v15, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v9, v2, v3, v4}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v9

    iget v11, v8, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v11, v13

    move-object/from16 v14, v26

    .end local v26    # "syIn":Lcom/badlogic/gdx/math/Vector3;
    .local v14, "syIn":Lcom/badlogic/gdx/math/Vector3;
    iget v7, v14, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float v7, v7, v22

    add-float/2addr v11, v7

    iget v7, v8, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v7, v13

    move-object/from16 v26, v1

    .end local v1    # "syEx":Lcom/badlogic/gdx/math/Vector3;
    .local v26, "syEx":Lcom/badlogic/gdx/math/Vector3;
    iget v1, v14, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float v1, v1, v22

    add-float/2addr v7, v1

    iget v1, v8, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v1, v13

    iget v2, v14, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float v2, v2, v22

    add-float/2addr v1, v2

    invoke-virtual {v9, v11, v7, v1}, Lcom/badlogic/gdx/math/Vector3;->add(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 217
    iget-object v1, v15, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;->uv:Lcom/badlogic/gdx/math/Vector2;

    mul-float v2, v18, v13

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v2, v7

    mul-float v9, v21, v22

    add-float/2addr v9, v7

    invoke-virtual {v1, v2, v9}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 218
    move v1, v6

    .line 219
    .end local v5    # "i2":S
    .local v1, "i2":S
    invoke-interface {v0, v15}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->vertex(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder$VertexInfo;)S

    move-result v6

    .line 221
    if-eqz v12, :cond_7

    move/from16 v9, v19

    move/from16 v2, v25

    .end local v19    # "i3":S
    .end local v25    # "i4":S
    .local v2, "i4":S
    .local v9, "i3":S
    invoke-interface {v0, v6, v1, v2, v9}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->rect(SSSS)V

    goto :goto_3

    .end local v2    # "i4":S
    .end local v9    # "i3":S
    .restart local v19    # "i3":S
    .restart local v25    # "i4":S
    :cond_7
    move/from16 v9, v19

    move/from16 v2, v25

    .line 222
    .end local v19    # "i3":S
    .end local v25    # "i4":S
    .restart local v2    # "i4":S
    .restart local v9    # "i3":S
    :goto_3
    move v2, v1

    .line 223
    move v5, v6

    move/from16 v19, v5

    move v5, v1

    move/from16 v1, v24

    .end local v9    # "i3":S
    .local v5, "i3":S
    goto :goto_6

    .line 208
    .end local v2    # "i4":S
    .end local v14    # "syIn":Lcom/badlogic/gdx/math/Vector3;
    .local v1, "syEx":Lcom/badlogic/gdx/math/Vector3;
    .local v5, "i2":S
    .restart local v19    # "i3":S
    .restart local v25    # "i4":S
    .local v26, "syIn":Lcom/badlogic/gdx/math/Vector3;
    :cond_8
    move/from16 v9, v19

    move/from16 v2, v25

    move-object/from16 v14, v26

    const/high16 v7, 0x3f000000    # 0.5f

    move-object/from16 v26, v1

    .line 209
    .end local v1    # "syEx":Lcom/badlogic/gdx/math/Vector3;
    .end local v19    # "i3":S
    .end local v25    # "i4":S
    .restart local v2    # "i4":S
    .restart local v9    # "i3":S
    .restart local v14    # "syIn":Lcom/badlogic/gdx/math/Vector3;
    .local v26, "syEx":Lcom/badlogic/gdx/math/Vector3;
    :goto_4
    if-eqz v12, :cond_9

    move/from16 v1, v24

    .end local v24    # "center":S
    .local v1, "center":S
    invoke-interface {v0, v6, v5, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->triangle(SSS)V

    goto :goto_5

    .end local v1    # "center":S
    .restart local v24    # "center":S
    :cond_9
    move/from16 v1, v24

    .line 210
    .end local v24    # "center":S
    .restart local v1    # "center":S
    :goto_5
    move v5, v6

    move/from16 v19, v9

    .line 199
    .end local v9    # "i3":S
    .end local v13    # "x":F
    .end local v22    # "y":F
    .restart local v19    # "i3":S
    :goto_6
    add-int/lit8 v12, v12, 0x1

    move/from16 v13, p17

    move v11, v1

    move v7, v2

    move-object v9, v14

    move/from16 v6, v19

    move/from16 v14, v23

    move-object/from16 v1, v26

    move-object/from16 v19, v27

    move/from16 v2, p6

    goto/16 :goto_2

    .line 226
    .end local v2    # "i4":S
    .end local v12    # "i":I
    .end local v23    # "angle":F
    .end local v26    # "syEx":Lcom/badlogic/gdx/math/Vector3;
    .end local v27    # "sxEx":Lcom/badlogic/gdx/math/Vector3;
    .local v1, "syEx":Lcom/badlogic/gdx/math/Vector3;
    .local v6, "i3":S
    .restart local v7    # "i4":S
    .local v9, "syIn":Lcom/badlogic/gdx/math/Vector3;
    .local v11, "center":S
    .local v14, "angle":F
    .local v19, "sxEx":Lcom/badlogic/gdx/math/Vector3;
    :cond_a
    return-void
.end method

.method public static build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFFILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 16
    .param p0, "builder"    # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "innerWidth"    # F
    .param p4, "innerHeight"    # F
    .param p5, "divisions"    # I
    .param p6, "center"    # Lcom/badlogic/gdx/math/Vector3;
    .param p7, "normal"    # Lcom/badlogic/gdx/math/Vector3;

    .line 156
    move-object/from16 v0, p6

    move-object/from16 v1, p7

    iget v8, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v9, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v10, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v11, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v12, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v13, v1, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/4 v14, 0x0

    const/high16 v15, 0x43b40000    # 360.0f

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-static/range {v2 .. v15}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFFIFFFFFFFF)V

    .line 158
    return-void
.end method

.method public static build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFIFFFFFF)V
    .locals 12
    .param p0, "builder"    # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "divisions"    # I
    .param p4, "centerX"    # F
    .param p5, "centerY"    # F
    .param p6, "centerZ"    # F
    .param p7, "normalX"    # F
    .param p8, "normalY"    # F
    .param p9, "normalZ"    # F

    .line 83
    const/4 v10, 0x0

    const/high16 v11, 0x43b40000    # 360.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-static/range {v0 .. v11}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFIFFFFFFFF)V

    .line 84
    return-void
.end method

.method public static build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFIFFFFFFFF)V
    .locals 14
    .param p0, "builder"    # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "divisions"    # I
    .param p4, "centerX"    # F
    .param p5, "centerY"    # F
    .param p6, "centerZ"    # F
    .param p7, "normalX"    # F
    .param p8, "normalY"    # F
    .param p9, "normalZ"    # F
    .param p10, "angleFrom"    # F
    .param p11, "angleTo"    # F

    .line 110
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    invoke-static/range {v0 .. v13}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFFIFFFFFFFF)V

    .line 111
    return-void
.end method

.method public static build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFIFFFFFFFFFFFF)V
    .locals 18
    .param p0, "builder"    # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "divisions"    # I
    .param p4, "centerX"    # F
    .param p5, "centerY"    # F
    .param p6, "centerZ"    # F
    .param p7, "normalX"    # F
    .param p8, "normalY"    # F
    .param p9, "normalZ"    # F
    .param p10, "tangentX"    # F
    .param p11, "tangentY"    # F
    .param p12, "tangentZ"    # F
    .param p13, "binormalX"    # F
    .param p14, "binormalY"    # F
    .param p15, "binormalZ"    # F

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    .line 103
    const/16 v16, 0x0

    const/high16 v17, 0x43b40000    # 360.0f

    invoke-static/range {v0 .. v17}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFIFFFFFFFFFFFFFF)V

    .line 105
    return-void
.end method

.method public static build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFIFFFFFFFFFFFFFF)V
    .locals 20
    .param p0, "builder"    # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "divisions"    # I
    .param p4, "centerX"    # F
    .param p5, "centerY"    # F
    .param p6, "centerZ"    # F
    .param p7, "normalX"    # F
    .param p8, "normalY"    # F
    .param p9, "normalZ"    # F
    .param p10, "tangentX"    # F
    .param p11, "tangentY"    # F
    .param p12, "tangentZ"    # F
    .param p13, "binormalX"    # F
    .param p14, "binormalY"    # F
    .param p15, "binormalZ"    # F
    .param p16, "angleFrom"    # F
    .param p17, "angleTo"    # F

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    move/from16 v15, p13

    move/from16 v16, p14

    move/from16 v17, p15

    move/from16 v18, p16

    move/from16 v19, p17

    .line 130
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v19}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFFIFFFFFFFFFFFFFF)V

    .line 132
    return-void
.end method

.method public static build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 10
    .param p0, "builder"    # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "divisions"    # I
    .param p4, "center"    # Lcom/badlogic/gdx/math/Vector3;
    .param p5, "normal"    # Lcom/badlogic/gdx/math/Vector3;

    .line 89
    iget v4, p4, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v5, p4, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v6, p4, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v7, p5, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v8, p5, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v9, p5, Lcom/badlogic/gdx/math/Vector3;->z:F

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFIFFFFFF)V

    .line 90
    return-void
.end method

.method public static build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;FF)V
    .locals 16
    .param p0, "builder"    # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "divisions"    # I
    .param p4, "center"    # Lcom/badlogic/gdx/math/Vector3;
    .param p5, "normal"    # Lcom/badlogic/gdx/math/Vector3;
    .param p6, "angleFrom"    # F
    .param p7, "angleTo"    # F

    .line 116
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    iget v8, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v9, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v10, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v11, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v12, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v13, v1, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v7, p3

    move/from16 v14, p6

    move/from16 v15, p7

    invoke-static/range {v2 .. v15}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFFIFFFFFFFF)V

    .line 117
    return-void
.end method

.method public static build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 20
    .param p0, "builder"    # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "divisions"    # I
    .param p4, "center"    # Lcom/badlogic/gdx/math/Vector3;
    .param p5, "normal"    # Lcom/badlogic/gdx/math/Vector3;
    .param p6, "tangent"    # Lcom/badlogic/gdx/math/Vector3;
    .param p7, "binormal"    # Lcom/badlogic/gdx/math/Vector3;

    .line 95
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    iget v8, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v9, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v10, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v11, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v12, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v13, v1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v14, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v15, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v7, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v6, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v5, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v4, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    move/from16 v19, v4

    move-object/from16 v4, p0

    move/from16 v18, v5

    move/from16 v5, p1

    move/from16 v17, v6

    move/from16 v6, p2

    move/from16 v16, v7

    move/from16 v7, p3

    invoke-static/range {v4 .. v19}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFIFFFFFFFFFFFF)V

    .line 97
    return-void
.end method

.method public static build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;FF)V
    .locals 24
    .param p0, "builder"    # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "divisions"    # I
    .param p4, "center"    # Lcom/badlogic/gdx/math/Vector3;
    .param p5, "normal"    # Lcom/badlogic/gdx/math/Vector3;
    .param p6, "tangent"    # Lcom/badlogic/gdx/math/Vector3;
    .param p7, "binormal"    # Lcom/badlogic/gdx/math/Vector3;
    .param p8, "angleFrom"    # F
    .param p9, "angleTo"    # F

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v9, p3

    move/from16 v22, p8

    move/from16 v23, p9

    .line 122
    iget v10, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v11, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v12, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v13, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v14, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v15, v1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v7, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    move/from16 v16, v7

    iget v7, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    move/from16 v17, v7

    iget v7, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    move/from16 v18, v7

    iget v7, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    move/from16 v19, v7

    iget v7, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    move/from16 v20, v7

    iget v7, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    move/from16 v21, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v4 .. v23}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFFIFFFFFFFFFFFFFF)V

    .line 124
    return-void
.end method

.method public static build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FIFFFFFF)V
    .locals 11
    .param p0, "builder"    # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;
    .param p1, "radius"    # F
    .param p2, "divisions"    # I
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F
    .param p5, "centerZ"    # F
    .param p6, "normalX"    # F
    .param p7, "normalY"    # F
    .param p8, "normalZ"    # F

    .line 32
    const/4 v9, 0x0

    const/high16 v10, 0x43b40000    # 360.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FIFFFFFFFF)V

    .line 33
    return-void
.end method

.method public static build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FIFFFFFFFF)V
    .locals 13
    .param p0, "builder"    # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;
    .param p1, "radius"    # F
    .param p2, "divisions"    # I
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F
    .param p5, "centerZ"    # F
    .param p6, "normalX"    # F
    .param p7, "normalY"    # F
    .param p8, "normalZ"    # F
    .param p9, "angleFrom"    # F
    .param p10, "angleTo"    # F

    .line 57
    const/high16 v0, 0x40000000    # 2.0f

    mul-float v2, p1, v0

    mul-float v3, p1, v0

    move-object v1, p0

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    invoke-static/range {v1 .. v12}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFIFFFFFFFF)V

    .line 58
    return-void
.end method

.method public static build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FIFFFFFFFFFFFF)V
    .locals 17
    .param p0, "builder"    # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;
    .param p1, "radius"    # F
    .param p2, "divisions"    # I
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F
    .param p5, "centerZ"    # F
    .param p6, "normalX"    # F
    .param p7, "normalY"    # F
    .param p8, "normalZ"    # F
    .param p9, "tangentX"    # F
    .param p10, "tangentY"    # F
    .param p11, "tangentZ"    # F
    .param p12, "binormalX"    # F
    .param p13, "binormalY"    # F
    .param p14, "binormalZ"    # F

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    .line 50
    const/4 v15, 0x0

    const/high16 v16, 0x43b40000    # 360.0f

    invoke-static/range {v0 .. v16}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FIFFFFFFFFFFFFFF)V

    .line 52
    return-void
.end method

.method public static build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FIFFFFFFFFFFFFFF)V
    .locals 20
    .param p0, "builder"    # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;
    .param p1, "radius"    # F
    .param p2, "divisions"    # I
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F
    .param p5, "centerZ"    # F
    .param p6, "normalX"    # F
    .param p7, "normalY"    # F
    .param p8, "normalZ"    # F
    .param p9, "tangentX"    # F
    .param p10, "tangentY"    # F
    .param p11, "tangentZ"    # F
    .param p12, "binormalX"    # F
    .param p13, "binormalY"    # F
    .param p14, "binormalZ"    # F
    .param p15, "angleFrom"    # F
    .param p16, "angleTo"    # F

    move-object/from16 v0, p0

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p13

    move/from16 v17, p14

    move/from16 v18, p15

    move/from16 v19, p16

    .line 76
    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, p1, v2

    mul-float v2, v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v19}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFFIFFFFFFFFFFFFFF)V

    .line 78
    return-void
.end method

.method public static build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 9
    .param p0, "builder"    # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;
    .param p1, "radius"    # F
    .param p2, "divisions"    # I
    .param p3, "center"    # Lcom/badlogic/gdx/math/Vector3;
    .param p4, "normal"    # Lcom/badlogic/gdx/math/Vector3;

    .line 37
    iget v3, p3, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v4, p3, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v5, p3, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v6, p4, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v7, p4, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v8, p4, Lcom/badlogic/gdx/math/Vector3;->z:F

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v8}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FIFFFFFF)V

    .line 38
    return-void
.end method

.method public static build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;FF)V
    .locals 13
    .param p0, "builder"    # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;
    .param p1, "radius"    # F
    .param p2, "divisions"    # I
    .param p3, "center"    # Lcom/badlogic/gdx/math/Vector3;
    .param p4, "normal"    # Lcom/badlogic/gdx/math/Vector3;
    .param p5, "angleFrom"    # F
    .param p6, "angleTo"    # F

    .line 62
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    iget v5, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v6, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v7, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v8, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v9, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v10, v1, Lcom/badlogic/gdx/math/Vector3;->z:F

    move-object v2, p0

    move v3, p1

    move v4, p2

    move/from16 v11, p5

    move/from16 v12, p6

    invoke-static/range {v2 .. v12}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FIFFFFFFFF)V

    .line 63
    return-void
.end method

.method public static build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 19
    .param p0, "builder"    # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;
    .param p1, "radius"    # F
    .param p2, "divisions"    # I
    .param p3, "center"    # Lcom/badlogic/gdx/math/Vector3;
    .param p4, "normal"    # Lcom/badlogic/gdx/math/Vector3;
    .param p5, "tangent"    # Lcom/badlogic/gdx/math/Vector3;
    .param p6, "binormal"    # Lcom/badlogic/gdx/math/Vector3;

    .line 43
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    iget v7, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v8, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v9, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v10, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v11, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v12, v1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v13, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v14, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v15, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v6, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v5, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v4, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    move/from16 v18, v4

    move-object/from16 v4, p0

    move/from16 v17, v5

    move/from16 v5, p1

    move/from16 v16, v6

    move/from16 v6, p2

    invoke-static/range {v4 .. v18}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FIFFFFFFFFFFFF)V

    .line 45
    return-void
.end method

.method public static build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FILcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;FF)V
    .locals 21
    .param p0, "builder"    # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;
    .param p1, "radius"    # F
    .param p2, "divisions"    # I
    .param p3, "center"    # Lcom/badlogic/gdx/math/Vector3;
    .param p4, "normal"    # Lcom/badlogic/gdx/math/Vector3;
    .param p5, "tangent"    # Lcom/badlogic/gdx/math/Vector3;
    .param p6, "binormal"    # Lcom/badlogic/gdx/math/Vector3;
    .param p7, "angleFrom"    # F
    .param p8, "angleTo"    # F

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v19, p7

    move/from16 v20, p8

    .line 68
    iget v7, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v8, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v9, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v10, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v11, v1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v12, v1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v13, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v14, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v15, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v0, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    move/from16 v16, v0

    iget v0, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    move/from16 v17, v0

    iget v0, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    move/from16 v18, v0

    invoke-static/range {v4 .. v20}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/EllipseShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FIFFFFFFFFFFFFFF)V

    .line 70
    return-void
.end method
