.class public Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;
.super Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
.source "CpuSpriteBatch.java"


# instance fields
.field private final adjustAffine:Lcom/badlogic/gdx/math/Affine2;

.field private adjustNeeded:Z

.field private haveIdentityRealMatrix:Z

.field private final tmpAffine:Lcom/badlogic/gdx/math/Affine2;

.field private final virtualMatrix:Lcom/badlogic/gdx/math/Matrix4;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;-><init>(I)V

    .line 46
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;-><init>(ILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 52
    return-void
.end method

.method public constructor <init>(ILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "defaultShader"    # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;-><init>(ILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 35
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->virtualMatrix:Lcom/badlogic/gdx/math/Matrix4;

    .line 36
    new-instance v0, Lcom/badlogic/gdx/math/Affine2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Affine2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->adjustAffine:Lcom/badlogic/gdx/math/Affine2;

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->haveIdentityRealMatrix:Z

    .line 40
    new-instance v0, Lcom/badlogic/gdx/math/Affine2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Affine2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->tmpAffine:Lcom/badlogic/gdx/math/Affine2;

    .line 58
    return-void
.end method

.method private static checkEqual(Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Affine2;)Z
    .locals 5
    .param p0, "matrix"    # Lcom/badlogic/gdx/math/Matrix4;
    .param p1, "affine"    # Lcom/badlogic/gdx/math/Affine2;

    .line 637
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->getValues()[F

    move-result-object v0

    .line 640
    .local v0, "val":[F
    const/4 v1, 0x0

    aget v2, v0, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Affine2;->m00:F

    cmpl-float v2, v2, v3

    const/4 v3, 0x1

    if-nez v2, :cond_0

    aget v2, v0, v3

    iget v4, p1, Lcom/badlogic/gdx/math/Affine2;->m10:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_0

    const/4 v2, 0x4

    aget v2, v0, v2

    iget v4, p1, Lcom/badlogic/gdx/math/Affine2;->m01:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_0

    const/4 v2, 0x5

    aget v2, v0, v2

    iget v4, p1, Lcom/badlogic/gdx/math/Affine2;->m11:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_0

    const/16 v2, 0xc

    aget v2, v0, v2

    iget v4, p1, Lcom/badlogic/gdx/math/Affine2;->m02:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_0

    const/16 v2, 0xd

    aget v2, v0, v2

    iget v4, p1, Lcom/badlogic/gdx/math/Affine2;->m12:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_0

    move v1, v3

    :cond_0
    return v1
.end method

.method private static checkEqual(Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Matrix4;)Z
    .locals 5
    .param p0, "a"    # Lcom/badlogic/gdx/math/Matrix4;
    .param p1, "b"    # Lcom/badlogic/gdx/math/Matrix4;

    .line 628
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 631
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v2

    cmpl-float v1, v1, v3

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v1, v1, v0

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v3, v0

    cmpl-float v1, v1, v3

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x4

    aget v1, v1, v3

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v4, v3

    cmpl-float v1, v1, v3

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v3, 0x5

    aget v1, v1, v3

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v4, v3

    cmpl-float v1, v1, v3

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xc

    aget v1, v1, v3

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v4, v3

    cmpl-float v1, v1, v3

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v3, 0xd

    aget v1, v1, v3

    iget-object v4, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    aget v3, v4, v3

    cmpl-float v1, v1, v3

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0
.end method

.method private static checkIdt(Lcom/badlogic/gdx/math/Matrix4;)Z
    .locals 6
    .param p0, "matrix"    # Lcom/badlogic/gdx/math/Matrix4;

    .line 645
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Matrix4;->getValues()[F

    move-result-object v0

    .line 648
    .local v0, "val":[F
    const/4 v1, 0x0

    aget v2, v0, v1

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    const/4 v4, 0x1

    if-nez v2, :cond_0

    aget v2, v0, v4

    const/4 v5, 0x0

    cmpl-float v2, v2, v5

    if-nez v2, :cond_0

    const/4 v2, 0x4

    aget v2, v0, v2

    cmpl-float v2, v2, v5

    if-nez v2, :cond_0

    const/4 v2, 0x5

    aget v2, v0, v2

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    const/16 v2, 0xc

    aget v2, v0, v2

    cmpl-float v2, v2, v5

    if-nez v2, :cond_0

    const/16 v2, 0xd

    aget v2, v0, v2

    cmpl-float v2, v2, v5

    if-nez v2, :cond_0

    move v1, v4

    :cond_0
    return v1
.end method

.method private drawAdjusted(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFIIIIZZ)V
    .locals 24
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "originX"    # F
    .param p5, "originY"    # F
    .param p6, "width"    # F
    .param p7, "height"    # F
    .param p8, "scaleX"    # F
    .param p9, "scaleY"    # F
    .param p10, "rotation"    # F
    .param p11, "srcX"    # I
    .param p12, "srcY"    # I
    .param p13, "srcWidth"    # I
    .param p14, "srcHeight"    # I
    .param p15, "flipX"    # Z
    .param p16, "flipY"    # Z

    move/from16 v0, p11

    move/from16 v1, p12

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v17, p15

    move/from16 v18, p16

    .line 276
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v13

    int-to-float v13, v13

    const/high16 v14, 0x3f800000    # 1.0f

    div-float v19, v14, v13

    .line 277
    .local v19, "invTexWidth":F
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v13

    int-to-float v13, v13

    div-float v20, v14, v13

    .line 279
    .local v20, "invTexHeight":F
    int-to-float v13, v0

    mul-float v21, v13, v19

    .local v21, "u":F
    move/from16 v13, v21

    .line 280
    add-int v14, v1, p14

    int-to-float v14, v14

    mul-float v22, v14, v20

    .local v22, "v":F
    move/from16 v14, v22

    .line 281
    add-int v15, v0, p13

    int-to-float v15, v15

    mul-float v23, v15, v19

    .local v23, "u2":F
    move/from16 v15, v23

    .line 282
    int-to-float v0, v1

    mul-float v0, v0, v20

    .local v0, "v2":F
    move/from16 v16, v0

    .line 284
    invoke-direct/range {v2 .. v18}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->drawAdjustedUV(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFFFFFZZ)V

    .line 285
    return-void
.end method

.method private drawAdjusted(Lcom/badlogic/gdx/graphics/Texture;[FII)V
    .locals 8
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "spriteVertices"    # [F
    .param p3, "offset"    # I
    .param p4, "count"    # I

    .line 596
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->drawing:Z

    if-eqz v0, :cond_4

    .line 598
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    .line 600
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->adjustAffine:Lcom/badlogic/gdx/math/Affine2;

    .line 602
    .local v0, "t":Lcom/badlogic/gdx/math/Affine2;
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    array-length v1, v1

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    sub-int/2addr v1, v2

    invoke-static {v1, p4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 604
    .local v1, "copyCount":I
    :cond_1
    sub-int/2addr p4, v1

    .line 605
    :goto_0
    if-lez v1, :cond_2

    .line 606
    aget v2, p2, p3

    .line 607
    .local v2, "x":F
    add-int/lit8 v3, p3, 0x1

    aget v3, p2, v3

    .line 609
    .local v3, "y":F
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    iget v5, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    iget v6, v0, Lcom/badlogic/gdx/math/Affine2;->m00:F

    mul-float/2addr v6, v2

    iget v7, v0, Lcom/badlogic/gdx/math/Affine2;->m01:F

    mul-float/2addr v7, v3

    add-float/2addr v6, v7

    iget v7, v0, Lcom/badlogic/gdx/math/Affine2;->m02:F

    add-float/2addr v6, v7

    aput v6, v4, v5

    .line 610
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    iget v5, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v5, v5, 0x1

    iget v6, v0, Lcom/badlogic/gdx/math/Affine2;->m10:F

    mul-float/2addr v6, v2

    iget v7, v0, Lcom/badlogic/gdx/math/Affine2;->m11:F

    mul-float/2addr v7, v3

    add-float/2addr v6, v7

    iget v7, v0, Lcom/badlogic/gdx/math/Affine2;->m12:F

    add-float/2addr v6, v7

    aput v6, v4, v5

    .line 611
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    iget v5, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v5, v5, 0x2

    add-int/lit8 v6, p3, 0x2

    aget v6, p2, v6

    aput v6, v4, v5

    .line 612
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    iget v5, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v5, v5, 0x3

    add-int/lit8 v6, p3, 0x3

    aget v6, p2, v6

    aput v6, v4, v5

    .line 613
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    iget v5, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v5, v5, 0x4

    add-int/lit8 v6, p3, 0x4

    aget v6, p2, v6

    aput v6, v4, v5

    .line 615
    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v4, v4, 0x5

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    .line 616
    add-int/lit8 p3, p3, 0x5

    .line 617
    nop

    .end local v2    # "x":F
    .end local v3    # "y":F
    add-int/lit8 v1, v1, -0x5

    .line 618
    goto :goto_0

    .line 620
    :cond_2
    if-lez p4, :cond_3

    .line 621
    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 622
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    array-length v2, v2

    invoke-static {v2, p4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 624
    :cond_3
    if-gtz p4, :cond_1

    .line 625
    return-void

    .line 596
    .end local v0    # "t":Lcom/badlogic/gdx/math/Affine2;
    .end local v1    # "copyCount":I
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CpuSpriteBatch.begin must be called before draw."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private drawAdjusted(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V
    .locals 18
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "originX"    # F
    .param p5, "originY"    # F
    .param p6, "width"    # F
    .param p7, "height"    # F
    .param p8, "scaleX"    # F
    .param p9, "scaleY"    # F
    .param p10, "rotation"    # F

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    .line 270
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    iget v12, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    iget v13, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    iget v14, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    iget v15, v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v1 .. v17}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->drawAdjustedUV(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFFFFFZZ)V

    .line 272
    return-void
.end method

.method private drawAdjusted(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFFZ)V
    .locals 37
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "originX"    # F
    .param p5, "originY"    # F
    .param p6, "width"    # F
    .param p7, "height"    # F
    .param p8, "scaleX"    # F
    .param p9, "scaleY"    # F
    .param p10, "rotation"    # F
    .param p11, "clockwise"    # Z

    .line 411
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, p5

    iget-boolean v4, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->drawing:Z

    if-eqz v4, :cond_6

    .line 413
    iget-object v4, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq v4, v5, :cond_0

    .line 414
    iget-object v4, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_0

    .line 415
    :cond_0
    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    array-length v5, v5

    if-ne v4, v5, :cond_1

    invoke-super/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 418
    :cond_1
    :goto_0
    add-float v4, p2, v2

    .line 419
    .local v4, "worldOriginX":F
    add-float v5, p3, v3

    .line 420
    .local v5, "worldOriginY":F
    neg-float v6, v2

    .line 421
    .local v6, "fx":F
    neg-float v7, v3

    .line 422
    .local v7, "fy":F
    sub-float v8, p6, v2

    .line 423
    .local v8, "fx2":F
    sub-float v9, p7, v3

    .line 426
    .local v9, "fy2":F
    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v11, p8, v10

    if-nez v11, :cond_2

    cmpl-float v10, p9, v10

    if-eqz v10, :cond_3

    .line 427
    :cond_2
    mul-float v6, v6, p8

    .line 428
    mul-float v7, v7, p9

    .line 429
    mul-float v8, v8, p8

    .line 430
    mul-float v9, v9, p9

    .line 434
    :cond_3
    move v10, v6

    .line 435
    .local v10, "p1x":F
    move v11, v7

    .line 436
    .local v11, "p1y":F
    move v12, v6

    .line 437
    .local v12, "p2x":F
    move v13, v9

    .line 438
    .local v13, "p2y":F
    move v14, v8

    .line 439
    .local v14, "p3x":F
    move v15, v9

    .line 440
    .local v15, "p3y":F
    move/from16 v16, v8

    .line 441
    .local v16, "p4x":F
    move/from16 v17, v7

    .line 453
    .local v17, "p4y":F
    const/16 v18, 0x0

    cmpl-float v18, p10, v18

    if-eqz v18, :cond_4

    .line 454
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v18

    .line 455
    .local v18, "cos":F
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v19

    .line 457
    .local v19, "sin":F
    mul-float v20, v18, v10

    mul-float v21, v19, v11

    sub-float v20, v20, v21

    .line 458
    .local v20, "x1":F
    mul-float v21, v19, v10

    mul-float v22, v18, v11

    add-float v21, v21, v22

    .line 460
    .local v21, "y1":F
    mul-float v22, v18, v12

    mul-float v23, v19, v13

    sub-float v22, v22, v23

    .line 461
    .local v22, "x2":F
    mul-float v23, v19, v12

    mul-float v24, v18, v13

    add-float v23, v23, v24

    .line 463
    .local v23, "y2":F
    mul-float v24, v18, v14

    mul-float v25, v19, v15

    sub-float v24, v24, v25

    .line 464
    .local v24, "x3":F
    mul-float v25, v19, v14

    mul-float v26, v18, v15

    add-float v25, v25, v26

    .line 466
    .local v25, "y3":F
    sub-float v26, v24, v22

    add-float v26, v20, v26

    .line 467
    .local v26, "x4":F
    sub-float v27, v23, v21

    sub-float v18, v25, v27

    .line 468
    .end local v19    # "sin":F
    .local v18, "y4":F
    goto :goto_1

    .line 469
    .end local v18    # "y4":F
    .end local v20    # "x1":F
    .end local v21    # "y1":F
    .end local v22    # "x2":F
    .end local v23    # "y2":F
    .end local v24    # "x3":F
    .end local v25    # "y3":F
    .end local v26    # "x4":F
    :cond_4
    move/from16 v20, v10

    .line 470
    .restart local v20    # "x1":F
    move/from16 v21, v11

    .line 472
    .restart local v21    # "y1":F
    move/from16 v22, v12

    .line 473
    .restart local v22    # "x2":F
    move/from16 v23, v13

    .line 475
    .restart local v23    # "y2":F
    move/from16 v24, v14

    .line 476
    .restart local v24    # "x3":F
    move/from16 v25, v15

    .line 478
    .restart local v25    # "y3":F
    move/from16 v26, v16

    .line 479
    .restart local v26    # "x4":F
    move/from16 v18, v17

    .line 482
    .restart local v18    # "y4":F
    :goto_1
    add-float v20, v20, v4

    .line 483
    add-float v21, v21, v5

    .line 484
    add-float v22, v22, v4

    .line 485
    add-float v23, v23, v5

    .line 486
    add-float v24, v24, v4

    .line 487
    add-float v25, v25, v5

    .line 488
    add-float v26, v26, v4

    .line 489
    add-float v18, v18, v5

    .line 492
    if-eqz p11, :cond_5

    .line 493
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .line 494
    .local v2, "u1":F
    move/from16 v19, v2

    .end local v2    # "u1":F
    .local v19, "u1":F
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    .line 495
    .local v2, "v1":F
    move/from16 v27, v2

    .end local v2    # "v1":F
    .local v27, "v1":F
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 496
    .local v2, "u2":F
    move/from16 v28, v2

    .end local v2    # "u2":F
    .local v28, "u2":F
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    .line 497
    .local v2, "v2":F
    move/from16 v29, v2

    .end local v2    # "v2":F
    .local v29, "v2":F
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 498
    .local v2, "u3":F
    move/from16 v30, v2

    .end local v2    # "u3":F
    .local v30, "u3":F
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 499
    .local v2, "v3":F
    move/from16 v31, v2

    .end local v2    # "v3":F
    .local v31, "v3":F
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .line 500
    .local v2, "u4":F
    move/from16 v32, v2

    .end local v2    # "u4":F
    .local v32, "u4":F
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    move/from16 v36, v19

    move/from16 v19, v2

    move/from16 v2, v36

    .local v2, "v4":F
    goto :goto_2

    .line 502
    .end local v2    # "v4":F
    .end local v19    # "u1":F
    .end local v27    # "v1":F
    .end local v28    # "u2":F
    .end local v29    # "v2":F
    .end local v30    # "u3":F
    .end local v31    # "v3":F
    .end local v32    # "u4":F
    :cond_5
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 503
    .local v2, "u1":F
    move/from16 v19, v2

    .end local v2    # "u1":F
    .restart local v19    # "u1":F
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 504
    .local v2, "v1":F
    move/from16 v27, v2

    .end local v2    # "v1":F
    .restart local v27    # "v1":F
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .line 505
    .local v2, "u2":F
    move/from16 v28, v2

    .end local v2    # "u2":F
    .restart local v28    # "u2":F
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 506
    .local v2, "v2":F
    move/from16 v29, v2

    .end local v2    # "v2":F
    .restart local v29    # "v2":F
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .line 507
    .local v2, "u3":F
    move/from16 v30, v2

    .end local v2    # "u3":F
    .restart local v30    # "u3":F
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    .line 508
    .local v2, "v3":F
    move/from16 v31, v2

    .end local v2    # "v3":F
    .restart local v31    # "v3":F
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 509
    .local v2, "u4":F
    move/from16 v32, v2

    .end local v2    # "u4":F
    .restart local v32    # "u4":F
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    move/from16 v36, v19

    move/from16 v19, v2

    move/from16 v2, v36

    .line 512
    .local v2, "u1":F
    .local v19, "v4":F
    :goto_2
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->adjustAffine:Lcom/badlogic/gdx/math/Affine2;

    .line 514
    .local v1, "t":Lcom/badlogic/gdx/math/Affine2;
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    move/from16 v33, v4

    .end local v4    # "worldOriginX":F
    .local v33, "worldOriginX":F
    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v4, v4, 0x0

    move/from16 v34, v5

    .end local v5    # "worldOriginY":F
    .local v34, "worldOriginY":F
    iget v5, v1, Lcom/badlogic/gdx/math/Affine2;->m00:F

    mul-float v5, v5, v20

    move/from16 v35, v6

    .end local v6    # "fx":F
    .local v35, "fx":F
    iget v6, v1, Lcom/badlogic/gdx/math/Affine2;->m01:F

    mul-float v6, v6, v21

    add-float/2addr v5, v6

    iget v6, v1, Lcom/badlogic/gdx/math/Affine2;->m02:F

    add-float/2addr v5, v6

    aput v5, v3, v4

    .line 515
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v4, v4, 0x1

    iget v5, v1, Lcom/badlogic/gdx/math/Affine2;->m10:F

    mul-float v5, v5, v20

    iget v6, v1, Lcom/badlogic/gdx/math/Affine2;->m11:F

    mul-float v6, v6, v21

    add-float/2addr v5, v6

    iget v6, v1, Lcom/badlogic/gdx/math/Affine2;->m12:F

    add-float/2addr v5, v6

    aput v5, v3, v4

    .line 516
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v4, v4, 0x2

    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->colorPacked:F

    aput v5, v3, v4

    .line 517
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v4, v4, 0x3

    aput v2, v3, v4

    .line 518
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v4, v4, 0x4

    aput v27, v3, v4

    .line 520
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v4, v4, 0x5

    iget v5, v1, Lcom/badlogic/gdx/math/Affine2;->m00:F

    mul-float v5, v5, v22

    iget v6, v1, Lcom/badlogic/gdx/math/Affine2;->m01:F

    mul-float v6, v6, v23

    add-float/2addr v5, v6

    iget v6, v1, Lcom/badlogic/gdx/math/Affine2;->m02:F

    add-float/2addr v5, v6

    aput v5, v3, v4

    .line 521
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v4, v4, 0x6

    iget v5, v1, Lcom/badlogic/gdx/math/Affine2;->m10:F

    mul-float v5, v5, v22

    iget v6, v1, Lcom/badlogic/gdx/math/Affine2;->m11:F

    mul-float v6, v6, v23

    add-float/2addr v5, v6

    iget v6, v1, Lcom/badlogic/gdx/math/Affine2;->m12:F

    add-float/2addr v5, v6

    aput v5, v3, v4

    .line 522
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v4, v4, 0x7

    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->colorPacked:F

    aput v5, v3, v4

    .line 523
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v4, v4, 0x8

    aput v28, v3, v4

    .line 524
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v4, v4, 0x9

    aput v29, v3, v4

    .line 526
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v4, v4, 0xa

    iget v5, v1, Lcom/badlogic/gdx/math/Affine2;->m00:F

    mul-float v5, v5, v24

    iget v6, v1, Lcom/badlogic/gdx/math/Affine2;->m01:F

    mul-float v6, v6, v25

    add-float/2addr v5, v6

    iget v6, v1, Lcom/badlogic/gdx/math/Affine2;->m02:F

    add-float/2addr v5, v6

    aput v5, v3, v4

    .line 527
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v4, v4, 0xb

    iget v5, v1, Lcom/badlogic/gdx/math/Affine2;->m10:F

    mul-float v5, v5, v24

    iget v6, v1, Lcom/badlogic/gdx/math/Affine2;->m11:F

    mul-float v6, v6, v25

    add-float/2addr v5, v6

    iget v6, v1, Lcom/badlogic/gdx/math/Affine2;->m12:F

    add-float/2addr v5, v6

    aput v5, v3, v4

    .line 528
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v4, v4, 0xc

    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->colorPacked:F

    aput v5, v3, v4

    .line 529
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v4, v4, 0xd

    aput v30, v3, v4

    .line 530
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v4, v4, 0xe

    aput v31, v3, v4

    .line 532
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v4, v4, 0xf

    iget v5, v1, Lcom/badlogic/gdx/math/Affine2;->m00:F

    mul-float v5, v5, v26

    iget v6, v1, Lcom/badlogic/gdx/math/Affine2;->m01:F

    mul-float v6, v6, v18

    add-float/2addr v5, v6

    iget v6, v1, Lcom/badlogic/gdx/math/Affine2;->m02:F

    add-float/2addr v5, v6

    aput v5, v3, v4

    .line 533
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v4, v4, 0x10

    iget v5, v1, Lcom/badlogic/gdx/math/Affine2;->m10:F

    mul-float v5, v5, v26

    iget v6, v1, Lcom/badlogic/gdx/math/Affine2;->m11:F

    mul-float v6, v6, v18

    add-float/2addr v5, v6

    iget v6, v1, Lcom/badlogic/gdx/math/Affine2;->m12:F

    add-float/2addr v5, v6

    aput v5, v3, v4

    .line 534
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v4, v4, 0x11

    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->colorPacked:F

    aput v5, v3, v4

    .line 535
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v4, v4, 0x12

    aput v32, v3, v4

    .line 536
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v4, v4, 0x13

    aput v19, v3, v4

    .line 538
    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v3, v3, 0x14

    iput v3, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    .line 539
    return-void

    .line 411
    .end local v1    # "t":Lcom/badlogic/gdx/math/Affine2;
    .end local v2    # "u1":F
    .end local v7    # "fy":F
    .end local v8    # "fx2":F
    .end local v9    # "fy2":F
    .end local v10    # "p1x":F
    .end local v11    # "p1y":F
    .end local v12    # "p2x":F
    .end local v13    # "p2y":F
    .end local v14    # "p3x":F
    .end local v15    # "p3y":F
    .end local v16    # "p4x":F
    .end local v17    # "p4y":F
    .end local v18    # "y4":F
    .end local v19    # "v4":F
    .end local v20    # "x1":F
    .end local v21    # "y1":F
    .end local v22    # "x2":F
    .end local v23    # "y2":F
    .end local v24    # "x3":F
    .end local v25    # "y3":F
    .end local v26    # "x4":F
    .end local v27    # "v1":F
    .end local v28    # "u2":F
    .end local v29    # "v2":F
    .end local v30    # "u3":F
    .end local v31    # "v3":F
    .end local v32    # "u4":F
    .end local v33    # "worldOriginX":F
    .end local v34    # "worldOriginY":F
    .end local v35    # "fx":F
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "CpuSpriteBatch.begin must be called before draw."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private drawAdjusted(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/badlogic/gdx/math/Affine2;)V
    .locals 18
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "width"    # F
    .param p3, "height"    # F
    .param p4, "transform"    # Lcom/badlogic/gdx/math/Affine2;

    .line 542
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->drawing:Z

    if-eqz v2, :cond_2

    .line 544
    iget-object v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    if-eq v2, v3, :cond_0

    .line 545
    iget-object v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_0

    .line 546
    :cond_0
    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    array-length v3, v3

    if-ne v2, v3, :cond_1

    invoke-super/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 548
    :cond_1
    :goto_0
    move-object/from16 v2, p4

    .line 551
    .local v2, "t":Lcom/badlogic/gdx/math/Affine2;
    iget v3, v2, Lcom/badlogic/gdx/math/Affine2;->m02:F

    .line 552
    .local v3, "x1":F
    iget v4, v2, Lcom/badlogic/gdx/math/Affine2;->m12:F

    .line 553
    .local v4, "y1":F
    iget v5, v2, Lcom/badlogic/gdx/math/Affine2;->m01:F

    mul-float v5, v5, p3

    iget v6, v2, Lcom/badlogic/gdx/math/Affine2;->m02:F

    add-float/2addr v5, v6

    .line 554
    .local v5, "x2":F
    iget v6, v2, Lcom/badlogic/gdx/math/Affine2;->m11:F

    mul-float v6, v6, p3

    iget v7, v2, Lcom/badlogic/gdx/math/Affine2;->m12:F

    add-float/2addr v6, v7

    .line 555
    .local v6, "y2":F
    iget v7, v2, Lcom/badlogic/gdx/math/Affine2;->m00:F

    mul-float v7, v7, p2

    iget v8, v2, Lcom/badlogic/gdx/math/Affine2;->m01:F

    mul-float v8, v8, p3

    add-float/2addr v7, v8

    iget v8, v2, Lcom/badlogic/gdx/math/Affine2;->m02:F

    add-float/2addr v7, v8

    .line 556
    .local v7, "x3":F
    iget v8, v2, Lcom/badlogic/gdx/math/Affine2;->m10:F

    mul-float v8, v8, p2

    iget v9, v2, Lcom/badlogic/gdx/math/Affine2;->m11:F

    mul-float v9, v9, p3

    add-float/2addr v8, v9

    iget v9, v2, Lcom/badlogic/gdx/math/Affine2;->m12:F

    add-float/2addr v8, v9

    .line 557
    .local v8, "y3":F
    iget v9, v2, Lcom/badlogic/gdx/math/Affine2;->m00:F

    mul-float v9, v9, p2

    iget v10, v2, Lcom/badlogic/gdx/math/Affine2;->m02:F

    add-float/2addr v9, v10

    .line 558
    .local v9, "x4":F
    iget v10, v2, Lcom/badlogic/gdx/math/Affine2;->m10:F

    mul-float v10, v10, p2

    iget v11, v2, Lcom/badlogic/gdx/math/Affine2;->m12:F

    add-float/2addr v10, v11

    .line 561
    .local v10, "y4":F
    iget v11, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 562
    .local v11, "u":F
    iget v12, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    .line 563
    .local v12, "v":F
    iget v13, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .line 564
    .local v13, "u2":F
    iget v14, v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 566
    .local v14, "v2":F
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->adjustAffine:Lcom/badlogic/gdx/math/Affine2;

    .line 568
    iget-object v15, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    iget v1, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v1, v1, 0x0

    move/from16 v16, v10

    .end local v10    # "y4":F
    .local v16, "y4":F
    iget v10, v2, Lcom/badlogic/gdx/math/Affine2;->m00:F

    mul-float/2addr v10, v3

    move/from16 v17, v9

    .end local v9    # "x4":F
    .local v17, "x4":F
    iget v9, v2, Lcom/badlogic/gdx/math/Affine2;->m01:F

    mul-float/2addr v9, v4

    add-float/2addr v10, v9

    iget v9, v2, Lcom/badlogic/gdx/math/Affine2;->m02:F

    add-float/2addr v10, v9

    aput v10, v15, v1

    .line 569
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v9, v9, 0x1

    iget v10, v2, Lcom/badlogic/gdx/math/Affine2;->m10:F

    mul-float/2addr v10, v3

    iget v15, v2, Lcom/badlogic/gdx/math/Affine2;->m11:F

    mul-float/2addr v15, v4

    add-float/2addr v10, v15

    iget v15, v2, Lcom/badlogic/gdx/math/Affine2;->m12:F

    add-float/2addr v10, v15

    aput v10, v1, v9

    .line 570
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v9, v9, 0x2

    iget v10, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->colorPacked:F

    aput v10, v1, v9

    .line 571
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v9, v9, 0x3

    aput v11, v1, v9

    .line 572
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v9, v9, 0x4

    aput v12, v1, v9

    .line 574
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v9, v9, 0x5

    iget v10, v2, Lcom/badlogic/gdx/math/Affine2;->m00:F

    mul-float/2addr v10, v5

    iget v15, v2, Lcom/badlogic/gdx/math/Affine2;->m01:F

    mul-float/2addr v15, v6

    add-float/2addr v10, v15

    iget v15, v2, Lcom/badlogic/gdx/math/Affine2;->m02:F

    add-float/2addr v10, v15

    aput v10, v1, v9

    .line 575
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v9, v9, 0x6

    iget v10, v2, Lcom/badlogic/gdx/math/Affine2;->m10:F

    mul-float/2addr v10, v5

    iget v15, v2, Lcom/badlogic/gdx/math/Affine2;->m11:F

    mul-float/2addr v15, v6

    add-float/2addr v10, v15

    iget v15, v2, Lcom/badlogic/gdx/math/Affine2;->m12:F

    add-float/2addr v10, v15

    aput v10, v1, v9

    .line 576
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v9, v9, 0x7

    iget v10, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->colorPacked:F

    aput v10, v1, v9

    .line 577
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v9, v9, 0x8

    aput v11, v1, v9

    .line 578
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v9, v9, 0x9

    aput v14, v1, v9

    .line 580
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v9, v9, 0xa

    iget v10, v2, Lcom/badlogic/gdx/math/Affine2;->m00:F

    mul-float/2addr v10, v7

    iget v15, v2, Lcom/badlogic/gdx/math/Affine2;->m01:F

    mul-float/2addr v15, v8

    add-float/2addr v10, v15

    iget v15, v2, Lcom/badlogic/gdx/math/Affine2;->m02:F

    add-float/2addr v10, v15

    aput v10, v1, v9

    .line 581
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v9, v9, 0xb

    iget v10, v2, Lcom/badlogic/gdx/math/Affine2;->m10:F

    mul-float/2addr v10, v7

    iget v15, v2, Lcom/badlogic/gdx/math/Affine2;->m11:F

    mul-float/2addr v15, v8

    add-float/2addr v10, v15

    iget v15, v2, Lcom/badlogic/gdx/math/Affine2;->m12:F

    add-float/2addr v10, v15

    aput v10, v1, v9

    .line 582
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v9, v9, 0xc

    iget v10, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->colorPacked:F

    aput v10, v1, v9

    .line 583
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v9, v9, 0xd

    aput v13, v1, v9

    .line 584
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v9, v9, 0xe

    aput v14, v1, v9

    .line 586
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v9, v9, 0xf

    iget v10, v2, Lcom/badlogic/gdx/math/Affine2;->m00:F

    mul-float v10, v10, v17

    iget v15, v2, Lcom/badlogic/gdx/math/Affine2;->m01:F

    mul-float v15, v15, v16

    add-float/2addr v10, v15

    iget v15, v2, Lcom/badlogic/gdx/math/Affine2;->m02:F

    add-float/2addr v10, v15

    aput v10, v1, v9

    .line 587
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v9, v9, 0x10

    iget v10, v2, Lcom/badlogic/gdx/math/Affine2;->m10:F

    mul-float v10, v10, v17

    iget v15, v2, Lcom/badlogic/gdx/math/Affine2;->m11:F

    mul-float v15, v15, v16

    add-float/2addr v10, v15

    iget v15, v2, Lcom/badlogic/gdx/math/Affine2;->m12:F

    add-float/2addr v10, v15

    aput v10, v1, v9

    .line 588
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v9, v9, 0x11

    iget v10, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->colorPacked:F

    aput v10, v1, v9

    .line 589
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v9, v9, 0x12

    aput v13, v1, v9

    .line 590
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v9, v9, 0x13

    aput v12, v1, v9

    .line 592
    iget v1, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v1, v1, 0x14

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    .line 593
    return-void

    .line 542
    .end local v2    # "t":Lcom/badlogic/gdx/math/Affine2;
    .end local v3    # "x1":F
    .end local v4    # "y1":F
    .end local v5    # "x2":F
    .end local v6    # "y2":F
    .end local v7    # "x3":F
    .end local v8    # "y3":F
    .end local v11    # "u":F
    .end local v12    # "v":F
    .end local v13    # "u2":F
    .end local v14    # "v2":F
    .end local v16    # "y4":F
    .end local v17    # "x4":F
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "CpuSpriteBatch.begin must be called before draw."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private drawAdjustedUV(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFFFFFZZ)V
    .locals 32
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "originX"    # F
    .param p5, "originY"    # F
    .param p6, "width"    # F
    .param p7, "height"    # F
    .param p8, "scaleX"    # F
    .param p9, "scaleY"    # F
    .param p10, "rotation"    # F
    .param p11, "u"    # F
    .param p12, "v"    # F
    .param p13, "u2"    # F
    .param p14, "v2"    # F
    .param p15, "flipX"    # Z
    .param p16, "flipY"    # Z

    .line 289
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    iget-boolean v3, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->drawing:Z

    if-eqz v3, :cond_7

    .line 291
    iget-object v3, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->lastTexture:Lcom/badlogic/gdx/graphics/Texture;

    move-object/from16 v4, p1

    if-eq v4, v3, :cond_0

    .line 292
    invoke-virtual/range {p0 .. p1}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->switchTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    goto :goto_0

    .line 293
    :cond_0
    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    iget-object v5, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    array-length v5, v5

    if-ne v3, v5, :cond_1

    invoke-super/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    .line 296
    :cond_1
    :goto_0
    add-float v3, p2, v1

    .line 297
    .local v3, "worldOriginX":F
    add-float v5, p3, v2

    .line 298
    .local v5, "worldOriginY":F
    neg-float v6, v1

    .line 299
    .local v6, "fx":F
    neg-float v7, v2

    .line 300
    .local v7, "fy":F
    sub-float v8, p6, v1

    .line 301
    .local v8, "fx2":F
    sub-float v9, p7, v2

    .line 304
    .local v9, "fy2":F
    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v11, p8, v10

    if-nez v11, :cond_2

    cmpl-float v10, p9, v10

    if-eqz v10, :cond_3

    .line 305
    :cond_2
    mul-float v6, v6, p8

    .line 306
    mul-float v7, v7, p9

    .line 307
    mul-float v8, v8, p8

    .line 308
    mul-float v9, v9, p9

    .line 312
    :cond_3
    move v10, v6

    .line 313
    .local v10, "p1x":F
    move v11, v7

    .line 314
    .local v11, "p1y":F
    move v12, v6

    .line 315
    .local v12, "p2x":F
    move v13, v9

    .line 316
    .local v13, "p2y":F
    move v14, v8

    .line 317
    .local v14, "p3x":F
    move v15, v9

    .line 318
    .local v15, "p3y":F
    move/from16 v16, v8

    .line 319
    .local v16, "p4x":F
    move/from16 v17, v7

    .line 331
    .local v17, "p4y":F
    const/16 v18, 0x0

    cmpl-float v18, p10, v18

    if-eqz v18, :cond_4

    .line 332
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v18

    .line 333
    .local v18, "cos":F
    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v19

    .line 335
    .local v19, "sin":F
    mul-float v20, v18, v10

    mul-float v21, v19, v11

    sub-float v20, v20, v21

    .line 336
    .local v20, "x1":F
    mul-float v21, v19, v10

    mul-float v22, v18, v11

    add-float v21, v21, v22

    .line 338
    .local v21, "y1":F
    mul-float v22, v18, v12

    mul-float v23, v19, v13

    sub-float v22, v22, v23

    .line 339
    .local v22, "x2":F
    mul-float v23, v19, v12

    mul-float v24, v18, v13

    add-float v23, v23, v24

    .line 341
    .local v23, "y2":F
    mul-float v24, v18, v14

    mul-float v25, v19, v15

    sub-float v24, v24, v25

    .line 342
    .local v24, "x3":F
    mul-float v25, v19, v14

    mul-float v26, v18, v15

    add-float v25, v25, v26

    .line 344
    .local v25, "y3":F
    sub-float v26, v24, v22

    add-float v26, v20, v26

    .line 345
    .local v26, "x4":F
    sub-float v27, v23, v21

    sub-float v18, v25, v27

    .line 346
    .end local v19    # "sin":F
    .local v18, "y4":F
    goto :goto_1

    .line 347
    .end local v18    # "y4":F
    .end local v20    # "x1":F
    .end local v21    # "y1":F
    .end local v22    # "x2":F
    .end local v23    # "y2":F
    .end local v24    # "x3":F
    .end local v25    # "y3":F
    .end local v26    # "x4":F
    :cond_4
    move/from16 v20, v10

    .line 348
    .restart local v20    # "x1":F
    move/from16 v21, v11

    .line 350
    .restart local v21    # "y1":F
    move/from16 v22, v12

    .line 351
    .restart local v22    # "x2":F
    move/from16 v23, v13

    .line 353
    .restart local v23    # "y2":F
    move/from16 v24, v14

    .line 354
    .restart local v24    # "x3":F
    move/from16 v25, v15

    .line 356
    .restart local v25    # "y3":F
    move/from16 v26, v16

    .line 357
    .restart local v26    # "x4":F
    move/from16 v18, v17

    .line 360
    .restart local v18    # "y4":F
    :goto_1
    add-float v20, v20, v3

    .line 361
    add-float v21, v21, v5

    .line 362
    add-float v22, v22, v3

    .line 363
    add-float v23, v23, v5

    .line 364
    add-float v24, v24, v3

    .line 365
    add-float v25, v25, v5

    .line 366
    add-float v26, v26, v3

    .line 367
    add-float v18, v18, v5

    .line 369
    if-eqz p15, :cond_5

    .line 370
    move/from16 v19, p11

    .line 371
    .local v19, "tmp":F
    move/from16 v27, p13

    .line 372
    .end local p11    # "u":F
    .local v27, "u":F
    move/from16 v28, v19

    .end local p13    # "u2":F
    .local v28, "u2":F
    goto :goto_2

    .line 369
    .end local v19    # "tmp":F
    .end local v27    # "u":F
    .end local v28    # "u2":F
    .restart local p11    # "u":F
    .restart local p13    # "u2":F
    :cond_5
    move/from16 v27, p11

    move/from16 v28, p13

    .line 374
    .end local p11    # "u":F
    .end local p13    # "u2":F
    .restart local v27    # "u":F
    .restart local v28    # "u2":F
    :goto_2
    if-eqz p16, :cond_6

    .line 375
    move/from16 v19, p12

    .line 376
    .restart local v19    # "tmp":F
    move/from16 v29, p14

    .line 377
    .end local p12    # "v":F
    .local v29, "v":F
    move/from16 v30, v19

    .end local p14    # "v2":F
    .local v30, "v2":F
    goto :goto_3

    .line 374
    .end local v19    # "tmp":F
    .end local v29    # "v":F
    .end local v30    # "v2":F
    .restart local p12    # "v":F
    .restart local p14    # "v2":F
    :cond_6
    move/from16 v29, p12

    move/from16 v30, p14

    .line 380
    .end local p12    # "v":F
    .end local p14    # "v2":F
    .restart local v29    # "v":F
    .restart local v30    # "v2":F
    :goto_3
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->adjustAffine:Lcom/badlogic/gdx/math/Affine2;

    .line 382
    .local v1, "t":Lcom/badlogic/gdx/math/Affine2;
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    move/from16 v19, v3

    .end local v3    # "worldOriginX":F
    .local v19, "worldOriginX":F
    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v3, v3, 0x0

    iget v4, v1, Lcom/badlogic/gdx/math/Affine2;->m00:F

    mul-float v4, v4, v20

    move/from16 v31, v5

    .end local v5    # "worldOriginY":F
    .local v31, "worldOriginY":F
    iget v5, v1, Lcom/badlogic/gdx/math/Affine2;->m01:F

    mul-float v5, v5, v21

    add-float/2addr v4, v5

    iget v5, v1, Lcom/badlogic/gdx/math/Affine2;->m02:F

    add-float/2addr v4, v5

    aput v4, v2, v3

    .line 383
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v3, v3, 0x1

    iget v4, v1, Lcom/badlogic/gdx/math/Affine2;->m10:F

    mul-float v4, v4, v20

    iget v5, v1, Lcom/badlogic/gdx/math/Affine2;->m11:F

    mul-float v5, v5, v21

    add-float/2addr v4, v5

    iget v5, v1, Lcom/badlogic/gdx/math/Affine2;->m12:F

    add-float/2addr v4, v5

    aput v4, v2, v3

    .line 384
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->colorPacked:F

    aput v4, v2, v3

    .line 385
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v3, v3, 0x3

    aput v27, v2, v3

    .line 386
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v3, v3, 0x4

    aput v29, v2, v3

    .line 388
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v3, v3, 0x5

    iget v4, v1, Lcom/badlogic/gdx/math/Affine2;->m00:F

    mul-float v4, v4, v22

    iget v5, v1, Lcom/badlogic/gdx/math/Affine2;->m01:F

    mul-float v5, v5, v23

    add-float/2addr v4, v5

    iget v5, v1, Lcom/badlogic/gdx/math/Affine2;->m02:F

    add-float/2addr v4, v5

    aput v4, v2, v3

    .line 389
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v3, v3, 0x6

    iget v4, v1, Lcom/badlogic/gdx/math/Affine2;->m10:F

    mul-float v4, v4, v22

    iget v5, v1, Lcom/badlogic/gdx/math/Affine2;->m11:F

    mul-float v5, v5, v23

    add-float/2addr v4, v5

    iget v5, v1, Lcom/badlogic/gdx/math/Affine2;->m12:F

    add-float/2addr v4, v5

    aput v4, v2, v3

    .line 390
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v3, v3, 0x7

    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->colorPacked:F

    aput v4, v2, v3

    .line 391
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v3, v3, 0x8

    aput v27, v2, v3

    .line 392
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v3, v3, 0x9

    aput v30, v2, v3

    .line 394
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v3, v3, 0xa

    iget v4, v1, Lcom/badlogic/gdx/math/Affine2;->m00:F

    mul-float v4, v4, v24

    iget v5, v1, Lcom/badlogic/gdx/math/Affine2;->m01:F

    mul-float v5, v5, v25

    add-float/2addr v4, v5

    iget v5, v1, Lcom/badlogic/gdx/math/Affine2;->m02:F

    add-float/2addr v4, v5

    aput v4, v2, v3

    .line 395
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v3, v3, 0xb

    iget v4, v1, Lcom/badlogic/gdx/math/Affine2;->m10:F

    mul-float v4, v4, v24

    iget v5, v1, Lcom/badlogic/gdx/math/Affine2;->m11:F

    mul-float v5, v5, v25

    add-float/2addr v4, v5

    iget v5, v1, Lcom/badlogic/gdx/math/Affine2;->m12:F

    add-float/2addr v4, v5

    aput v4, v2, v3

    .line 396
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v3, v3, 0xc

    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->colorPacked:F

    aput v4, v2, v3

    .line 397
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v3, v3, 0xd

    aput v28, v2, v3

    .line 398
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v3, v3, 0xe

    aput v30, v2, v3

    .line 400
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v3, v3, 0xf

    iget v4, v1, Lcom/badlogic/gdx/math/Affine2;->m00:F

    mul-float v4, v4, v26

    iget v5, v1, Lcom/badlogic/gdx/math/Affine2;->m01:F

    mul-float v5, v5, v18

    add-float/2addr v4, v5

    iget v5, v1, Lcom/badlogic/gdx/math/Affine2;->m02:F

    add-float/2addr v4, v5

    aput v4, v2, v3

    .line 401
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v3, v3, 0x10

    iget v4, v1, Lcom/badlogic/gdx/math/Affine2;->m10:F

    mul-float v4, v4, v26

    iget v5, v1, Lcom/badlogic/gdx/math/Affine2;->m11:F

    mul-float v5, v5, v18

    add-float/2addr v4, v5

    iget v5, v1, Lcom/badlogic/gdx/math/Affine2;->m12:F

    add-float/2addr v4, v5

    aput v4, v2, v3

    .line 402
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v3, v3, 0x11

    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->colorPacked:F

    aput v4, v2, v3

    .line 403
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v3, v3, 0x12

    aput v28, v2, v3

    .line 404
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->vertices:[F

    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v3, v3, 0x13

    aput v29, v2, v3

    .line 406
    iget v2, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    add-int/lit8 v2, v2, 0x14

    iput v2, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->idx:I

    .line 407
    return-void

    .line 289
    .end local v1    # "t":Lcom/badlogic/gdx/math/Affine2;
    .end local v6    # "fx":F
    .end local v7    # "fy":F
    .end local v8    # "fx2":F
    .end local v9    # "fy2":F
    .end local v10    # "p1x":F
    .end local v11    # "p1y":F
    .end local v12    # "p2x":F
    .end local v13    # "p2y":F
    .end local v14    # "p3x":F
    .end local v15    # "p3y":F
    .end local v16    # "p4x":F
    .end local v17    # "p4y":F
    .end local v18    # "y4":F
    .end local v19    # "worldOriginX":F
    .end local v20    # "x1":F
    .end local v21    # "y1":F
    .end local v22    # "x2":F
    .end local v23    # "y2":F
    .end local v24    # "x3":F
    .end local v25    # "y3":F
    .end local v26    # "x4":F
    .end local v27    # "u":F
    .end local v28    # "u2":F
    .end local v29    # "v":F
    .end local v30    # "v2":F
    .end local v31    # "worldOriginY":F
    .restart local p11    # "u":F
    .restart local p12    # "v":F
    .restart local p13    # "u2":F
    .restart local p14    # "v2":F
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "CpuSpriteBatch.begin must be called before draw."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/Texture;FF)V
    .locals 17
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 193
    move-object/from16 v3, p0

    iget-boolean v0, v3, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->adjustNeeded:Z

    if-nez v0, :cond_0

    .line 194
    invoke-super/range {p0 .. p3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FF)V

    goto :goto_0

    .line 196
    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v0

    int-to-float v6, v0

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v0

    int-to-float v7, v0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct/range {v0 .. v16}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->drawAdjusted(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFIIIIZZ)V

    .line 198
    :goto_0
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FFFF)V
    .locals 17
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .line 202
    move-object/from16 v7, p0

    iget-boolean v0, v7, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->adjustNeeded:Z

    if-nez v0, :cond_0

    .line 203
    invoke-super/range {p0 .. p5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFF)V

    goto :goto_0

    .line 205
    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v0 .. v16}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->drawAdjusted(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFIIIIZZ)V

    .line 207
    :goto_0
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFF)V
    .locals 17
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "u"    # F
    .param p7, "v"    # F
    .param p8, "u2"    # F
    .param p9, "v2"    # F

    .line 184
    move-object/from16 v14, p0

    iget-boolean v0, v14, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->adjustNeeded:Z

    if-nez v0, :cond_0

    .line 185
    invoke-super/range {p0 .. p9}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFF)V

    goto :goto_0

    .line 187
    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p9

    invoke-direct/range {v0 .. v16}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->drawAdjustedUV(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFFFFFZZ)V

    .line 189
    :goto_0
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFIIIIZZ)V
    .locals 2
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "originX"    # F
    .param p5, "originY"    # F
    .param p6, "width"    # F
    .param p7, "height"    # F
    .param p8, "scaleX"    # F
    .param p9, "scaleY"    # F
    .param p10, "rotation"    # F
    .param p11, "srcX"    # I
    .param p12, "srcY"    # I
    .param p13, "srcWidth"    # I
    .param p14, "srcHeight"    # I
    .param p15, "flipX"    # Z
    .param p16, "flipY"    # Z

    .line 153
    move-object v0, p0

    iget-boolean v1, v0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->adjustNeeded:Z

    if-nez v1, :cond_0

    .line 154
    invoke-super/range {p0 .. p16}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFIIIIZZ)V

    goto :goto_0

    .line 157
    :cond_0
    invoke-direct/range {p0 .. p16}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->drawAdjusted(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFIIIIZZ)V

    .line 160
    :goto_0
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FFFFIIIIZZ)V
    .locals 17
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "srcX"    # I
    .param p7, "srcY"    # I
    .param p8, "srcWidth"    # I
    .param p9, "srcHeight"    # I
    .param p10, "flipX"    # Z
    .param p11, "flipY"    # Z

    .line 165
    move-object/from16 v15, p0

    iget-boolean v0, v15, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->adjustNeeded:Z

    if-nez v0, :cond_0

    .line 166
    invoke-super/range {p0 .. p11}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFIIIIZZ)V

    goto :goto_0

    .line 168
    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p9

    move/from16 v15, p10

    move/from16 v16, p11

    invoke-direct/range {v0 .. v16}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->drawAdjusted(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFIIIIZZ)V

    .line 170
    :goto_0
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;FFIIII)V
    .locals 17
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "srcX"    # I
    .param p5, "srcY"    # I
    .param p6, "srcWidth"    # I
    .param p7, "srcHeight"    # I

    .line 174
    move-object/from16 v14, p0

    iget-boolean v0, v14, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->adjustNeeded:Z

    if-nez v0, :cond_0

    .line 175
    invoke-super/range {p0 .. p7}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFIIII)V

    goto :goto_0

    .line 177
    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v13, p6

    int-to-float v6, v13

    move/from16 v12, p7

    int-to-float v7, v12

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move/from16 v14, p7

    invoke-direct/range {v0 .. v16}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->drawAdjusted(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFFFIIIIZZ)V

    .line 180
    :goto_0
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V
    .locals 2
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "spriteVertices"    # [F
    .param p3, "offset"    # I
    .param p4, "count"    # I

    .line 249
    rem-int/lit8 v0, p4, 0x14

    if-nez v0, :cond_1

    .line 251
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->adjustNeeded:Z

    if-nez v0, :cond_0

    .line 252
    invoke-super {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    goto :goto_0

    .line 254
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->drawAdjusted(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    .line 256
    :goto_0
    return-void

    .line 249
    :cond_1
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "invalid vertex count"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)V
    .locals 12
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 211
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->adjustNeeded:Z

    if-nez v0, :cond_0

    .line 212
    invoke-super {p0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)V

    goto :goto_0

    .line 214
    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v7, v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v8, v0

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v11}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->drawAdjusted(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    .line 216
    :goto_0
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V
    .locals 12
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .line 220
    move-object v11, p0

    iget-boolean v0, v11, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->adjustNeeded:Z

    if-nez v0, :cond_0

    .line 221
    invoke-super/range {p0 .. p5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    goto :goto_0

    .line 223
    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->drawAdjusted(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    .line 225
    :goto_0
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V
    .locals 1
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "originX"    # F
    .param p5, "originY"    # F
    .param p6, "width"    # F
    .param p7, "height"    # F
    .param p8, "scaleX"    # F
    .param p9, "scaleY"    # F
    .param p10, "rotation"    # F

    .line 230
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->adjustNeeded:Z

    if-nez v0, :cond_0

    .line 231
    invoke-super/range {p0 .. p10}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    goto :goto_0

    .line 233
    :cond_0
    invoke-direct/range {p0 .. p10}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->drawAdjusted(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    .line 235
    :goto_0
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFFZ)V
    .locals 1
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "originX"    # F
    .param p5, "originY"    # F
    .param p6, "width"    # F
    .param p7, "height"    # F
    .param p8, "scaleX"    # F
    .param p9, "scaleY"    # F
    .param p10, "rotation"    # F
    .param p11, "clockwise"    # Z

    .line 240
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->adjustNeeded:Z

    if-nez v0, :cond_0

    .line 241
    invoke-super/range {p0 .. p11}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFFZ)V

    goto :goto_0

    .line 243
    :cond_0
    invoke-direct/range {p0 .. p11}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->drawAdjusted(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFFZ)V

    .line 245
    :goto_0
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/badlogic/gdx/math/Affine2;)V
    .locals 1
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "width"    # F
    .param p3, "height"    # F
    .param p4, "transform"    # Lcom/badlogic/gdx/math/Affine2;

    .line 260
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->adjustNeeded:Z

    if-nez v0, :cond_0

    .line 261
    invoke-super {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/badlogic/gdx/math/Affine2;)V

    goto :goto_0

    .line 263
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->drawAdjusted(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFLcom/badlogic/gdx/math/Affine2;)V

    .line 265
    :goto_0
    return-void
.end method

.method public flushAndSyncTransformMatrix()V
    .locals 2

    .line 70
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->flush()V

    .line 72
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->adjustNeeded:Z

    if-eqz v0, :cond_2

    .line 74
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->virtualMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->checkIdt(Lcom/badlogic/gdx/math/Matrix4;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->haveIdentityRealMatrix:Z

    .line 76
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->virtualMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Matrix4;->det()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Transform matrix is singular, can\'t sync"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->adjustNeeded:Z

    .line 80
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->virtualMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-super {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 82
    :cond_2
    return-void
.end method

.method public getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    .line 86
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->adjustNeeded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->virtualMatrix:Lcom/badlogic/gdx/math/Matrix4;

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public setTransformMatrix(Lcom/badlogic/gdx/math/Affine2;)V
    .locals 2
    .param p1, "transform"    # Lcom/badlogic/gdx/math/Affine2;

    .line 125
    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    .line 127
    .local v0, "realMatrix":Lcom/badlogic/gdx/math/Matrix4;
    invoke-static {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->checkEqual(Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Affine2;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->adjustNeeded:Z

    goto :goto_0

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->virtualMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/math/Matrix4;->setAsAffine(Lcom/badlogic/gdx/math/Affine2;)Lcom/badlogic/gdx/math/Matrix4;

    .line 132
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->isDrawing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 133
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->adjustNeeded:Z

    .line 138
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->haveIdentityRealMatrix:Z

    if-eqz v1, :cond_1

    .line 139
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->adjustAffine:Lcom/badlogic/gdx/math/Affine2;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/math/Affine2;->set(Lcom/badlogic/gdx/math/Affine2;)Lcom/badlogic/gdx/math/Affine2;

    goto :goto_0

    .line 141
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->adjustAffine:Lcom/badlogic/gdx/math/Affine2;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/math/Affine2;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Affine2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Affine2;->inv()Lcom/badlogic/gdx/math/Affine2;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/math/Affine2;->mul(Lcom/badlogic/gdx/math/Affine2;)Lcom/badlogic/gdx/math/Affine2;

    goto :goto_0

    .line 144
    :cond_2
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->setAsAffine(Lcom/badlogic/gdx/math/Affine2;)Lcom/badlogic/gdx/math/Matrix4;

    .line 145
    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->checkIdt(Lcom/badlogic/gdx/math/Matrix4;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->haveIdentityRealMatrix:Z

    .line 148
    :goto_0
    return-void
.end method

.method public setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 3
    .param p1, "transform"    # Lcom/badlogic/gdx/math/Matrix4;

    .line 95
    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    .line 97
    .local v0, "realMatrix":Lcom/badlogic/gdx/math/Matrix4;
    invoke-static {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->checkEqual(Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Matrix4;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->adjustNeeded:Z

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->isDrawing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 101
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->virtualMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/math/Matrix4;->setAsAffine(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 102
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->adjustNeeded:Z

    .line 107
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->haveIdentityRealMatrix:Z

    if-eqz v1, :cond_1

    .line 108
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->adjustAffine:Lcom/badlogic/gdx/math/Affine2;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/math/Affine2;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Affine2;

    goto :goto_0

    .line 110
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->tmpAffine:Lcom/badlogic/gdx/math/Affine2;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/math/Affine2;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Affine2;

    .line 111
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->adjustAffine:Lcom/badlogic/gdx/math/Affine2;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/math/Affine2;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Affine2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Affine2;->inv()Lcom/badlogic/gdx/math/Affine2;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->tmpAffine:Lcom/badlogic/gdx/math/Affine2;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Affine2;->mul(Lcom/badlogic/gdx/math/Affine2;)Lcom/badlogic/gdx/math/Affine2;

    goto :goto_0

    .line 114
    :cond_2
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->setAsAffine(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 115
    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->checkIdt(Lcom/badlogic/gdx/math/Matrix4;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/CpuSpriteBatch;->haveIdentityRealMatrix:Z

    .line 118
    :goto_0
    return-void
.end method
