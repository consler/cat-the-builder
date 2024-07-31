.class public Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/ArrowShapeBuilder;
.super Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;
.source "ArrowShapeBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;-><init>()V

    return-void
.end method

.method public static build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFFFFFFI)V
    .locals 23
    .param p0, "builder"    # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "z1"    # F
    .param p4, "x2"    # F
    .param p5, "y2"    # F
    .param p6, "z2"    # F
    .param p7, "capLength"    # F
    .param p8, "stemThickness"    # F
    .param p9, "divisions"    # I

    .line 37
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p9

    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/ArrowShapeBuilder;->obtainV3()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    invoke-virtual {v5, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    .local v5, "begin":Lcom/badlogic/gdx/math/Vector3;
    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/ArrowShapeBuilder;->obtainV3()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-virtual {v6, v7, v8, v9}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    .line 38
    .local v6, "end":Lcom/badlogic/gdx/math/Vector3;
    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/math/Vector3;->dst(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v10

    .line 39
    .local v10, "length":F
    mul-float v11, v10, p7

    .line 40
    .local v11, "coneHeight":F
    float-to-double v12, v11

    const-wide v14, 0x3fd5555560000000L    # 0.3333333432674408

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    double-to-float v12, v12

    const/high16 v13, 0x40000000    # 2.0f

    mul-float/2addr v12, v13

    .line 41
    .local v12, "coneDiameter":F
    sub-float v14, v10, v11

    .line 42
    .local v14, "stemLength":F
    mul-float v15, v12, p8

    .line 44
    .local v15, "stemDiameter":F
    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/ArrowShapeBuilder;->obtainV3()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v13

    invoke-virtual {v13, v6}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v13

    invoke-virtual {v13, v5}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v13

    invoke-virtual {v13}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v13

    .line 45
    .local v13, "up":Lcom/badlogic/gdx/math/Vector3;
    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/ArrowShapeBuilder;->obtainV3()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v7

    invoke-virtual {v7, v13}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v7

    sget-object v8, Lcom/badlogic/gdx/math/Vector3;->Z:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v7

    .line 46
    .local v7, "forward":Lcom/badlogic/gdx/math/Vector3;
    invoke-virtual {v7}, Lcom/badlogic/gdx/math/Vector3;->isZero()Z

    move-result v8

    if-eqz v8, :cond_0

    sget-object v8, Lcom/badlogic/gdx/math/Vector3;->X:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 47
    :cond_0
    invoke-virtual {v7, v13}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v8

    invoke-virtual {v8}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 48
    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/ArrowShapeBuilder;->obtainV3()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v8

    invoke-virtual {v8, v13}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v8

    invoke-virtual {v8}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v8

    .line 49
    .local v8, "left":Lcom/badlogic/gdx/math/Vector3;
    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/ArrowShapeBuilder;->obtainV3()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v9

    invoke-virtual {v9}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v9

    .line 52
    .local v9, "direction":Lcom/badlogic/gdx/math/Vector3;
    move-object/from16 v17, v5

    .end local v5    # "begin":Lcom/badlogic/gdx/math/Vector3;
    .local v17, "begin":Lcom/badlogic/gdx/math/Vector3;
    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/ArrowShapeBuilder;->obtainM4()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->getVertexTransform(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v5

    .line 53
    .local v5, "userTransform":Lcom/badlogic/gdx/math/Matrix4;
    move-object/from16 v18, v6

    .end local v6    # "end":Lcom/badlogic/gdx/math/Vector3;
    .local v18, "end":Lcom/badlogic/gdx/math/Vector3;
    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/ArrowShapeBuilder;->obtainM4()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v6

    .line 54
    .local v6, "transform":Lcom/badlogic/gdx/math/Matrix4;
    move/from16 v19, v10

    .end local v10    # "length":F
    .local v19, "length":F
    iget-object v10, v6, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    .line 55
    .local v10, "val":[F
    const/16 v20, 0x0

    move/from16 v21, v11

    .end local v11    # "coneHeight":F
    .local v21, "coneHeight":F
    iget v11, v8, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v11, v10, v20

    .line 56
    const/4 v11, 0x4

    move/from16 v20, v12

    .end local v12    # "coneDiameter":F
    .local v20, "coneDiameter":F
    iget v12, v13, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v12, v10, v11

    .line 57
    const/16 v11, 0x8

    iget v12, v7, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v12, v10, v11

    .line 58
    const/4 v11, 0x1

    iget v12, v8, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v12, v10, v11

    .line 59
    const/4 v11, 0x5

    iget v12, v13, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v12, v10, v11

    .line 60
    const/16 v11, 0x9

    iget v12, v7, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v12, v10, v11

    .line 61
    const/4 v11, 0x2

    iget v12, v8, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v12, v10, v11

    .line 62
    const/4 v11, 0x6

    iget v12, v13, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v12, v10, v11

    .line 63
    const/16 v11, 0xa

    iget v12, v7, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v12, v10, v11

    .line 64
    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/ArrowShapeBuilder;->obtainM4()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v11

    .line 67
    .local v11, "temp":Lcom/badlogic/gdx/math/Matrix4;
    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/ArrowShapeBuilder;->obtainV3()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v12

    invoke-virtual {v12, v9}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v12

    move-object/from16 v22, v7

    const/high16 v16, 0x40000000    # 2.0f

    .end local v7    # "forward":Lcom/badlogic/gdx/math/Vector3;
    .local v22, "forward":Lcom/badlogic/gdx/math/Vector3;
    div-float v7, v14, v16

    invoke-virtual {v12, v7}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v7

    invoke-virtual {v7, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->add(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/math/Matrix4;->setTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    .line 68
    invoke-virtual {v11, v6}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v7

    invoke-interface {v0, v7}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->setVertexTransform(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 69
    invoke-static {v0, v15, v14, v15, v4}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/CylinderShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFI)V

    .line 72
    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/ArrowShapeBuilder;->obtainV3()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v7

    invoke-virtual {v7, v14}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v7

    invoke-virtual {v7, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->add(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/math/Matrix4;->setTranslation(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Matrix4;

    .line 73
    invoke-virtual {v11, v6}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v7

    invoke-interface {v0, v7}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->setVertexTransform(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 74
    move/from16 v12, v20

    move/from16 v7, v21

    .end local v20    # "coneDiameter":F
    .end local v21    # "coneHeight":F
    .local v7, "coneHeight":F
    .restart local v12    # "coneDiameter":F
    invoke-static {v0, v12, v7, v12, v4}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/ConeShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFI)V

    .line 76
    invoke-interface {v0, v5}, Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;->setVertexTransform(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 77
    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/ArrowShapeBuilder;->freeAll()V

    .line 78
    return-void
.end method
