.class public Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;
.source "TiledDrawable.java"


# static fields
.field private static final temp:Lcom/badlogic/gdx/graphics/Color;


# instance fields
.field private final color:Lcom/badlogic/gdx/graphics/Color;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->temp:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>()V

    .line 29
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 2
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 36
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 29
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;)V
    .locals 2
    .param p1, "drawable"    # Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    .line 40
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;)V

    .line 29
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 41
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V
    .locals 33
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .line 44
    move-object/from16 v10, p1

    invoke-interface/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v11

    .line 45
    .local v11, "batchColor":Lcom/badlogic/gdx/graphics/Color;
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->temp:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v11}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 46
    move-object/from16 v12, p0

    iget-object v0, v12, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v11, v0}, Lcom/badlogic/gdx/graphics/Color;->mul(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-interface {v10, v0}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->getRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v13

    .line 49
    .local v13, "region":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    invoke-virtual {v13}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v14, v0

    .local v14, "regionWidth":F
    invoke-virtual {v13}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v15, v0

    .line 50
    .local v15, "regionHeight":F
    div-float v0, p4, v14

    float-to-int v9, v0

    .local v9, "fullX":I
    div-float v0, p5, v15

    float-to-int v8, v0

    .line 51
    .local v8, "fullY":I
    int-to-float v0, v9

    mul-float/2addr v0, v14

    sub-float v16, p4, v0

    .local v16, "remainingX":F
    int-to-float v0, v8

    mul-float/2addr v0, v15

    sub-float v17, p5, v0

    .line 52
    .local v17, "remainingY":F
    move/from16 v18, p2

    .local v18, "startX":F
    move/from16 v19, p3

    .line 53
    .local v19, "startY":F
    add-float v0, p2, p4

    sub-float v20, v0, v16

    .local v20, "endX":F
    add-float v0, p3, p5

    sub-float v21, v0, v17

    .line 54
    .local v21, "endY":F
    const/4 v0, 0x0

    move/from16 v22, p2

    move v6, v0

    move/from16 v0, p3

    .end local p2    # "x":F
    .end local p3    # "y":F
    .local v0, "y":F
    .local v6, "i":I
    .local v22, "x":F
    :goto_0
    if-ge v6, v9, :cond_1

    .line 55
    move/from16 v0, v19

    .line 56
    const/4 v1, 0x0

    move v7, v0

    move v5, v1

    .end local v0    # "y":F
    .local v5, "ii":I
    .local v7, "y":F
    :goto_1
    if-ge v5, v8, :cond_0

    .line 57
    move-object/from16 v0, p1

    move-object v1, v13

    move/from16 v2, v22

    move v3, v7

    move v4, v14

    move/from16 v23, v5

    .end local v5    # "ii":I
    .local v23, "ii":I
    move v5, v15

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    .line 58
    add-float/2addr v7, v15

    .line 56
    add-int/lit8 v5, v23, 0x1

    .end local v23    # "ii":I
    .restart local v5    # "ii":I
    goto :goto_1

    :cond_0
    move/from16 v23, v5

    .line 60
    .end local v5    # "ii":I
    add-float v22, v22, v14

    .line 54
    add-int/lit8 v6, v6, 0x1

    move v0, v7

    goto :goto_0

    .line 62
    .end local v6    # "i":I
    .end local v7    # "y":F
    .restart local v0    # "y":F
    :cond_1
    invoke-virtual {v13}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v23

    .line 63
    .local v23, "texture":Lcom/badlogic/gdx/graphics/Texture;
    invoke-virtual {v13}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v24

    .line 64
    .local v24, "u":F
    invoke-virtual {v13}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v25

    .line 65
    .local v25, "v2":F
    const/16 v26, 0x0

    cmpl-float v1, v16, v26

    if-lez v1, :cond_3

    .line 67
    invoke-virtual/range {v23 .. v23}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v16, v1

    add-float v27, v24, v1

    .line 68
    .local v27, "u2":F
    invoke-virtual {v13}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v28

    .line 69
    .local v28, "v":F
    move/from16 v0, v19

    .line 70
    const/4 v1, 0x0

    move/from16 v29, v0

    move v7, v1

    .end local v0    # "y":F
    .local v7, "ii":I
    .local v29, "y":F
    :goto_2
    if-ge v7, v8, :cond_2

    .line 71
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move/from16 v2, v22

    move/from16 v3, v29

    move/from16 v4, v16

    move v5, v15

    move/from16 v6, v24

    move/from16 v30, v7

    .end local v7    # "ii":I
    .local v30, "ii":I
    move/from16 v7, v25

    move/from16 v31, v8

    .end local v8    # "fullY":I
    .local v31, "fullY":I
    move/from16 v8, v27

    move-object/from16 v32, v11

    move v11, v9

    .end local v9    # "fullX":I
    .local v11, "fullX":I
    .local v32, "batchColor":Lcom/badlogic/gdx/graphics/Color;
    move/from16 v9, v28

    invoke-interface/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFF)V

    .line 72
    add-float v29, v29, v15

    .line 70
    add-int/lit8 v7, v30, 0x1

    move v9, v11

    move/from16 v8, v31

    move-object/from16 v11, v32

    .end local v30    # "ii":I
    .restart local v7    # "ii":I
    goto :goto_2

    .end local v31    # "fullY":I
    .end local v32    # "batchColor":Lcom/badlogic/gdx/graphics/Color;
    .restart local v8    # "fullY":I
    .restart local v9    # "fullX":I
    .local v11, "batchColor":Lcom/badlogic/gdx/graphics/Color;
    :cond_2
    move/from16 v30, v7

    move/from16 v31, v8

    move-object/from16 v32, v11

    move v11, v9

    .line 75
    .end local v7    # "ii":I
    .end local v8    # "fullY":I
    .end local v9    # "fullX":I
    .local v11, "fullX":I
    .restart local v31    # "fullY":I
    .restart local v32    # "batchColor":Lcom/badlogic/gdx/graphics/Color;
    cmpl-float v0, v17, v26

    if-lez v0, :cond_4

    .line 76
    invoke-virtual/range {v23 .. v23}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v17, v0

    sub-float v28, v25, v0

    .line 77
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move/from16 v2, v22

    move/from16 v3, v29

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v24

    move/from16 v7, v25

    move/from16 v8, v27

    move/from16 v9, v28

    invoke-interface/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFF)V

    goto :goto_3

    .line 65
    .end local v27    # "u2":F
    .end local v28    # "v":F
    .end local v29    # "y":F
    .end local v31    # "fullY":I
    .end local v32    # "batchColor":Lcom/badlogic/gdx/graphics/Color;
    .restart local v0    # "y":F
    .restart local v8    # "fullY":I
    .restart local v9    # "fullX":I
    .local v11, "batchColor":Lcom/badlogic/gdx/graphics/Color;
    :cond_3
    move/from16 v31, v8

    move-object/from16 v32, v11

    move v11, v9

    .end local v8    # "fullY":I
    .end local v9    # "fullX":I
    .local v11, "fullX":I
    .restart local v31    # "fullY":I
    .restart local v32    # "batchColor":Lcom/badlogic/gdx/graphics/Color;
    move/from16 v29, v0

    .line 80
    .end local v0    # "y":F
    .restart local v29    # "y":F
    :cond_4
    :goto_3
    cmpl-float v0, v17, v26

    if-lez v0, :cond_6

    .line 82
    invoke-virtual {v13}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU2()F

    move-result v26

    .line 83
    .local v26, "u2":F
    invoke-virtual/range {v23 .. v23}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v17, v0

    sub-float v27, v25, v0

    .line 84
    .local v27, "v":F
    move/from16 v0, v18

    .line 85
    .end local v22    # "x":F
    .local v0, "x":F
    const/4 v1, 0x0

    move/from16 v22, v0

    move v9, v1

    .end local v0    # "x":F
    .local v9, "i":I
    .restart local v22    # "x":F
    :goto_4
    if-ge v9, v11, :cond_5

    .line 86
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move/from16 v2, v22

    move/from16 v3, v29

    move v4, v14

    move/from16 v5, v17

    move/from16 v6, v24

    move/from16 v7, v25

    move/from16 v8, v26

    move/from16 v28, v9

    .end local v9    # "i":I
    .local v28, "i":I
    move/from16 v9, v27

    invoke-interface/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;FFFFFFFF)V

    .line 87
    add-float v22, v22, v14

    .line 85
    add-int/lit8 v9, v28, 0x1

    .end local v28    # "i":I
    .restart local v9    # "i":I
    goto :goto_4

    :cond_5
    move/from16 v28, v9

    .line 91
    .end local v9    # "i":I
    .end local v26    # "u2":F
    .end local v27    # "v":F
    :cond_6
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->temp:Lcom/badlogic/gdx/graphics/Color;

    invoke-interface {v10, v0}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 92
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFFFFFFF)V
    .locals 1
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "originX"    # F
    .param p5, "originY"    # F
    .param p6, "width"    # F
    .param p7, "height"    # F
    .param p8, "scaleX"    # F
    .param p9, "scaleY"    # F
    .param p10, "rotation"    # F

    .line 96
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->color:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public bridge synthetic tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;

    move-result-object p1

    return-object p1
.end method

.method public tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;
    .locals 2
    .param p1, "tint"    # Lcom/badlogic/gdx/graphics/Color;

    .line 104
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;)V

    .line 105
    .local v0, "drawable":Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 106
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->getLeftWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->setLeftWidth(F)V

    .line 107
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->getRightWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->setRightWidth(F)V

    .line 108
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->getTopHeight()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->setTopHeight(F)V

    .line 109
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->getBottomHeight()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/TiledDrawable;->setBottomHeight(F)V

    .line 110
    return-object v0
.end method
