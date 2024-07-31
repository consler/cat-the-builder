.class public Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/CapsuleShapeBuilder;
.super Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;
.source "CapsuleShapeBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/BaseShapeBuilder;-><init>()V

    return-void
.end method

.method public static build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFI)V
    .locals 14
    .param p0, "builder"    # Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;
    .param p1, "radius"    # F
    .param p2, "height"    # F
    .param p3, "divisions"    # I

    .line 26
    const/high16 v0, 0x40000000    # 2.0f

    mul-float v1, p1, v0

    cmpg-float v1, p2, v1

    if-ltz v1, :cond_0

    .line 27
    mul-float/2addr v0, p1

    .line 28
    .local v0, "d":F
    sub-float v4, p2, v0

    const/4 v7, 0x0

    const/high16 v8, 0x43b40000    # 360.0f

    const/4 v9, 0x0

    move-object v2, p0

    move v3, v0

    move v5, v0

    move/from16 v6, p3

    invoke-static/range {v2 .. v9}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/CylinderShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;FFFIFFZ)V

    .line 29
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/CapsuleShapeBuilder;->matTmp1:Lcom/badlogic/gdx/math/Matrix4;

    const/high16 v2, 0x3f000000    # 0.5f

    sub-float v3, p2, v0

    mul-float/2addr v3, v2

    const/4 v13, 0x0

    invoke-virtual {v1, v13, v3, v13}, Lcom/badlogic/gdx/math/Matrix4;->setToTranslation(FFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v3

    const/4 v9, 0x0

    const/high16 v10, 0x43b40000    # 360.0f

    const/4 v11, 0x0

    const/high16 v12, 0x42b40000    # 90.0f

    move-object v2, p0

    move v4, v0

    move v6, v0

    move/from16 v7, p3

    move/from16 v8, p3

    invoke-static/range {v2 .. v12}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/SphereShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/math/Matrix4;FFFIIFFFF)V

    .line 31
    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/CapsuleShapeBuilder;->matTmp1:Lcom/badlogic/gdx/math/Matrix4;

    const/high16 v2, -0x41000000    # -0.5f

    sub-float v3, p2, v0

    mul-float/2addr v3, v2

    invoke-virtual {v1, v13, v3, v13}, Lcom/badlogic/gdx/math/Matrix4;->setToTranslation(FFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v3

    const/high16 v11, 0x42b40000    # 90.0f

    const/high16 v12, 0x43340000    # 180.0f

    move-object v2, p0

    invoke-static/range {v2 .. v12}, Lcom/badlogic/gdx/graphics/g3d/utils/shapebuilders/SphereShapeBuilder;->build(Lcom/badlogic/gdx/graphics/g3d/utils/MeshPartBuilder;Lcom/badlogic/gdx/math/Matrix4;FFFIIFFFF)V

    .line 33
    return-void

    .line 26
    .end local v0    # "d":F
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Height must be at least twice the radius"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
