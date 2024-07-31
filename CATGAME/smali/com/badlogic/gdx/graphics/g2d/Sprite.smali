.class public Lcom/badlogic/gdx/graphics/g2d/Sprite;
.super Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
.source "Sprite.java"


# static fields
.field static final SPRITE_SIZE:I = 0x14

.field static final VERTEX_SIZE:I = 0x5


# instance fields
.field private bounds:Lcom/badlogic/gdx/math/Rectangle;

.field private final color:Lcom/badlogic/gdx/graphics/Color;

.field private dirty:Z

.field height:F

.field private originX:F

.field private originY:F

.field private rotation:F

.field private scaleX:F

.field private scaleY:F

.field final vertices:[F

.field width:F

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 50
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>()V

    .line 39
    const/16 v0, 0x14

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 40
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 45
    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 51
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setColor(FFFF)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;)V
    .locals 6
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;

    .line 56
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/Sprite;-><init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;II)V
    .locals 6
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "srcWidth"    # I
    .param p3, "srcHeight"    # I

    .line 64
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/Sprite;-><init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V

    .line 65
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V
    .locals 3
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "srcX"    # I
    .param p3, "srcY"    # I
    .param p4, "srcWidth"    # I
    .param p5, "srcHeight"    # I

    .line 70
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>()V

    .line 39
    const/16 v0, 0x14

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 40
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 45
    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 71
    if-eqz p1, :cond_0

    .line 72
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 73
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setRegion(IIII)V

    .line 74
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setColor(FFFF)V

    .line 75
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setSize(FF)V

    .line 76
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->width:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->height:F

    div-float/2addr v2, v1

    invoke-virtual {p0, v0, v2}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setOrigin(FF)V

    .line 77
    return-void

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "texture cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/Sprite;)V
    .locals 2
    .param p1, "sprite"    # Lcom/badlogic/gdx/graphics/g2d/Sprite;

    .line 101
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>()V

    .line 39
    const/16 v0, 0x14

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 40
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 45
    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 102
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->set(Lcom/badlogic/gdx/graphics/g2d/Sprite;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 3
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 82
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>()V

    .line 39
    const/16 v0, 0x14

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 40
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 45
    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 83
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 84
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setColor(FFFF)V

    .line 85
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setSize(FF)V

    .line 86
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->width:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->height:F

    div-float/2addr v2, v1

    invoke-virtual {p0, v0, v2}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setOrigin(FF)V

    .line 87
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V
    .locals 3
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "srcX"    # I
    .param p3, "srcY"    # I
    .param p4, "srcWidth"    # I
    .param p5, "srcHeight"    # I

    .line 93
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>()V

    .line 39
    const/16 v0, 0x14

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 40
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 45
    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 94
    invoke-virtual/range {p0 .. p5}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    .line 95
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setColor(FFFF)V

    .line 96
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setSize(FF)V

    .line 97
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->width:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->height:F

    div-float/2addr v2, v1

    invoke-virtual {p0, v0, v2}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setOrigin(FF)V

    .line 98
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V
    .locals 4
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;

    .line 517
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getVertices()[F

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x14

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    .line 518
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 2
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "alphaModulation"    # F

    .line 521
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 522
    .local v0, "oldAlpha":F
    mul-float v1, v0, p2

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setAlpha(F)V

    .line 523
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    .line 524
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setAlpha(F)V

    .line 525
    return-void
.end method

.method public flip(ZZ)V
    .locals 5
    .param p1, "x"    # Z
    .param p2, "y"    # Z

    .line 639
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->flip(ZZ)V

    .line 640
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 641
    .local v0, "vertices":[F
    if-eqz p1, :cond_0

    .line 642
    const/4 v1, 0x3

    aget v2, v0, v1

    .line 643
    .local v2, "temp":F
    const/16 v3, 0xd

    aget v4, v0, v3

    aput v4, v0, v1

    .line 644
    aput v2, v0, v3

    .line 645
    const/16 v1, 0x8

    aget v2, v0, v1

    .line 646
    const/16 v3, 0x12

    aget v4, v0, v3

    aput v4, v0, v1

    .line 647
    aput v2, v0, v3

    .line 649
    .end local v2    # "temp":F
    :cond_0
    if-eqz p2, :cond_1

    .line 650
    const/4 v1, 0x4

    aget v2, v0, v1

    .line 651
    .restart local v2    # "temp":F
    const/16 v3, 0xe

    aget v4, v0, v3

    aput v4, v0, v1

    .line 652
    aput v2, v0, v3

    .line 653
    const/16 v1, 0x9

    aget v2, v0, v1

    .line 654
    const/16 v3, 0x13

    aget v4, v0, v3

    aput v4, v0, v1

    .line 655
    aput v2, v0, v3

    .line 657
    .end local v2    # "temp":F
    :cond_1
    return-void
.end method

.method public getBoundingRectangle()Lcom/badlogic/gdx/math/Rectangle;
    .locals 9

    .line 485
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->getVertices()[F

    move-result-object v0

    .line 487
    .local v0, "vertices":[F
    const/4 v1, 0x0

    aget v2, v0, v1

    .line 488
    .local v2, "minx":F
    const/4 v3, 0x1

    aget v4, v0, v3

    .line 489
    .local v4, "miny":F
    aget v1, v0, v1

    .line 490
    .local v1, "maxx":F
    aget v3, v0, v3

    .line 492
    .local v3, "maxy":F
    const/4 v5, 0x5

    aget v6, v0, v5

    cmpl-float v6, v2, v6

    if-lez v6, :cond_0

    aget v6, v0, v5

    goto :goto_0

    :cond_0
    move v6, v2

    :goto_0
    move v2, v6

    .line 493
    const/16 v6, 0xa

    aget v7, v0, v6

    cmpl-float v7, v2, v7

    if-lez v7, :cond_1

    aget v7, v0, v6

    goto :goto_1

    :cond_1
    move v7, v2

    :goto_1
    move v2, v7

    .line 494
    const/16 v7, 0xf

    aget v8, v0, v7

    cmpl-float v8, v2, v8

    if-lez v8, :cond_2

    aget v8, v0, v7

    goto :goto_2

    :cond_2
    move v8, v2

    :goto_2
    move v2, v8

    .line 496
    aget v8, v0, v5

    cmpg-float v8, v1, v8

    if-gez v8, :cond_3

    aget v5, v0, v5

    goto :goto_3

    :cond_3
    move v5, v1

    :goto_3
    move v1, v5

    .line 497
    aget v5, v0, v6

    cmpg-float v5, v1, v5

    if-gez v5, :cond_4

    aget v5, v0, v6

    goto :goto_4

    :cond_4
    move v5, v1

    :goto_4
    move v1, v5

    .line 498
    aget v5, v0, v7

    cmpg-float v5, v1, v5

    if-gez v5, :cond_5

    aget v5, v0, v7

    goto :goto_5

    :cond_5
    move v5, v1

    :goto_5
    move v1, v5

    .line 500
    const/4 v5, 0x6

    aget v6, v0, v5

    cmpl-float v6, v4, v6

    if-lez v6, :cond_6

    aget v6, v0, v5

    goto :goto_6

    :cond_6
    move v6, v4

    :goto_6
    move v4, v6

    .line 501
    const/16 v6, 0xb

    aget v7, v0, v6

    cmpl-float v7, v4, v7

    if-lez v7, :cond_7

    aget v7, v0, v6

    goto :goto_7

    :cond_7
    move v7, v4

    :goto_7
    move v4, v7

    .line 502
    const/16 v7, 0x10

    aget v8, v0, v7

    cmpl-float v8, v4, v8

    if-lez v8, :cond_8

    aget v8, v0, v7

    goto :goto_8

    :cond_8
    move v8, v4

    :goto_8
    move v4, v8

    .line 504
    aget v8, v0, v5

    cmpg-float v8, v3, v8

    if-gez v8, :cond_9

    aget v5, v0, v5

    goto :goto_9

    :cond_9
    move v5, v3

    :goto_9
    move v3, v5

    .line 505
    aget v5, v0, v6

    cmpg-float v5, v3, v5

    if-gez v5, :cond_a

    aget v5, v0, v6

    goto :goto_a

    :cond_a
    move v5, v3

    :goto_a
    move v3, v5

    .line 506
    aget v5, v0, v7

    cmpg-float v5, v3, v5

    if-gez v5, :cond_b

    aget v5, v0, v7

    goto :goto_b

    :cond_b
    move v5, v3

    :goto_b
    move v3, v5

    .line 508
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    if-nez v5, :cond_c

    new-instance v5, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v5}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 509
    :cond_c
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    iput v2, v5, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 510
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    iput v4, v5, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 511
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    sub-float v6, v1, v2

    iput v6, v5, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 512
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    sub-float v6, v3, v4

    iput v6, v5, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 513
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    return-object v5
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 4

    .line 570
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-static {v0}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntColor(F)I

    move-result v0

    .line 571
    .local v0, "intBits":I
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 572
    .local v1, "color":Lcom/badlogic/gdx/graphics/Color;
    and-int/lit16 v2, v0, 0xff

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    iput v2, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 573
    ushr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 574
    ushr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 575
    ushr-int/lit8 v2, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 576
    return-object v1
.end method

.method public getHeight()F
    .locals 1

    .line 542
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->height:F

    return v0
.end method

.method public getOriginX()F
    .locals 1

    .line 548
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->originX:F

    return v0
.end method

.method public getOriginY()F
    .locals 1

    .line 554
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->originY:F

    return v0
.end method

.method public getRotation()F
    .locals 1

    .line 342
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->rotation:F

    return v0
.end method

.method public getScaleX()F
    .locals 1

    .line 559
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .line 564
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    return v0
.end method

.method public getVertices()[F
    .locals 28

    .line 412
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    if-eqz v1, :cond_3

    .line 413
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 415
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 416
    .local v2, "vertices":[F
    iget v3, v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->originX:F

    neg-float v3, v3

    .line 417
    .local v3, "localX":F
    iget v4, v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->originY:F

    neg-float v4, v4

    .line 418
    .local v4, "localY":F
    iget v5, v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->width:F

    add-float/2addr v5, v3

    .line 419
    .local v5, "localX2":F
    iget v6, v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->height:F

    add-float/2addr v6, v4

    .line 420
    .local v6, "localY2":F
    iget v7, v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->x:F

    sub-float/2addr v7, v3

    .line 421
    .local v7, "worldOriginX":F
    iget v8, v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->y:F

    sub-float/2addr v8, v4

    .line 422
    .local v8, "worldOriginY":F
    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-nez v9, :cond_0

    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_1

    .line 423
    :cond_0
    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    mul-float/2addr v3, v9

    .line 424
    iget v10, v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    mul-float/2addr v4, v10

    .line 425
    mul-float/2addr v5, v9

    .line 426
    mul-float/2addr v6, v10

    .line 428
    :cond_1
    iget v9, v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->rotation:F

    const/4 v10, 0x0

    cmpl-float v10, v9, v10

    const/16 v11, 0x10

    const/16 v12, 0xf

    const/16 v13, 0xb

    const/16 v14, 0xa

    const/4 v15, 0x6

    const/16 v16, 0x5

    const/16 v17, 0x1

    if-eqz v10, :cond_2

    .line 429
    invoke-static {v9}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v9

    .line 430
    .local v9, "cos":F
    iget v10, v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->rotation:F

    invoke-static {v10}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v10

    .line 431
    .local v10, "sin":F
    mul-float v18, v3, v9

    .line 432
    .local v18, "localXCos":F
    mul-float v19, v3, v10

    .line 433
    .local v19, "localXSin":F
    mul-float v20, v4, v9

    .line 434
    .local v20, "localYCos":F
    mul-float v21, v4, v10

    .line 435
    .local v21, "localYSin":F
    mul-float v22, v5, v9

    .line 436
    .local v22, "localX2Cos":F
    mul-float v23, v5, v10

    .line 437
    .local v23, "localX2Sin":F
    mul-float v24, v6, v9

    .line 438
    .local v24, "localY2Cos":F
    mul-float v25, v6, v10

    .line 440
    .local v25, "localY2Sin":F
    sub-float v26, v18, v21

    add-float v26, v26, v7

    .line 441
    .local v26, "x1":F
    add-float v27, v20, v19

    add-float v27, v27, v8

    .line 442
    .local v27, "y1":F
    aput v26, v2, v1

    .line 443
    aput v27, v2, v17

    .line 445
    sub-float v1, v18, v25

    add-float/2addr v1, v7

    .line 446
    .local v1, "x2":F
    add-float v17, v24, v19

    add-float v17, v17, v8

    .line 447
    .local v17, "y2":F
    aput v1, v2, v16

    .line 448
    aput v17, v2, v15

    .line 450
    sub-float v15, v22, v25

    add-float/2addr v15, v7

    .line 451
    .local v15, "x3":F
    add-float v16, v24, v23

    add-float v16, v16, v8

    .line 452
    .local v16, "y3":F
    aput v15, v2, v14

    .line 453
    aput v16, v2, v13

    .line 455
    sub-float v13, v15, v1

    add-float v13, v26, v13

    aput v13, v2, v12

    .line 456
    sub-float v12, v17, v27

    sub-float v12, v16, v12

    aput v12, v2, v11

    .line 457
    .end local v1    # "x2":F
    .end local v9    # "cos":F
    .end local v10    # "sin":F
    .end local v15    # "x3":F
    .end local v16    # "y3":F
    .end local v17    # "y2":F
    .end local v18    # "localXCos":F
    .end local v19    # "localXSin":F
    .end local v20    # "localYCos":F
    .end local v21    # "localYSin":F
    .end local v22    # "localX2Cos":F
    .end local v23    # "localX2Sin":F
    .end local v24    # "localY2Cos":F
    .end local v25    # "localY2Sin":F
    .end local v26    # "x1":F
    .end local v27    # "y1":F
    goto :goto_0

    .line 458
    :cond_2
    add-float v9, v3, v7

    .line 459
    .local v9, "x1":F
    add-float v10, v4, v8

    .line 460
    .local v10, "y1":F
    add-float v18, v5, v7

    .line 461
    .local v18, "x2":F
    add-float v19, v6, v8

    .line 463
    .local v19, "y2":F
    aput v9, v2, v1

    .line 464
    aput v10, v2, v17

    .line 466
    aput v9, v2, v16

    .line 467
    aput v19, v2, v15

    .line 469
    aput v18, v2, v14

    .line 470
    aput v19, v2, v13

    .line 472
    aput v18, v2, v12

    .line 473
    aput v10, v2, v11

    .line 476
    .end local v2    # "vertices":[F
    .end local v3    # "localX":F
    .end local v4    # "localY":F
    .end local v5    # "localX2":F
    .end local v6    # "localY2":F
    .end local v7    # "worldOriginX":F
    .end local v8    # "worldOriginY":F
    .end local v9    # "x1":F
    .end local v10    # "y1":F
    .end local v18    # "x2":F
    .end local v19    # "y2":F
    :cond_3
    :goto_0
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    return-object v1
.end method

.method public getWidth()F
    .locals 1

    .line 537
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->width:F

    return v0
.end method

.method public getX()F
    .locals 1

    .line 528
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .line 532
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->y:F

    return v0
.end method

.method public rotate(F)V
    .locals 1
    .param p1, "degrees"    # F

    .line 348
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    .line 349
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->rotation:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->rotation:F

    .line 350
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 351
    return-void
.end method

.method public rotate90(Z)V
    .locals 11
    .param p1, "clockwise"    # Z

    .line 356
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 358
    .local v0, "vertices":[F
    const/16 v1, 0x12

    const/16 v2, 0xd

    const/16 v3, 0x8

    const/4 v4, 0x3

    const/16 v5, 0x13

    const/16 v6, 0xe

    const/16 v7, 0x9

    const/4 v8, 0x4

    if-eqz p1, :cond_0

    .line 359
    aget v9, v0, v8

    .line 360
    .local v9, "temp":F
    aget v10, v0, v5

    aput v10, v0, v8

    .line 361
    aget v8, v0, v6

    aput v8, v0, v5

    .line 362
    aget v5, v0, v7

    aput v5, v0, v6

    .line 363
    aput v9, v0, v7

    .line 365
    aget v5, v0, v4

    .line 366
    .end local v9    # "temp":F
    .local v5, "temp":F
    aget v6, v0, v1

    aput v6, v0, v4

    .line 367
    aget v4, v0, v2

    aput v4, v0, v1

    .line 368
    aget v1, v0, v3

    aput v1, v0, v2

    .line 369
    aput v5, v0, v3

    .line 370
    .end local v5    # "temp":F
    goto :goto_0

    .line 371
    :cond_0
    aget v9, v0, v8

    .line 372
    .restart local v9    # "temp":F
    aget v10, v0, v7

    aput v10, v0, v8

    .line 373
    aget v8, v0, v6

    aput v8, v0, v7

    .line 374
    aget v7, v0, v5

    aput v7, v0, v6

    .line 375
    aput v9, v0, v5

    .line 377
    aget v5, v0, v4

    .line 378
    .end local v9    # "temp":F
    .restart local v5    # "temp":F
    aget v6, v0, v3

    aput v6, v0, v4

    .line 379
    aget v4, v0, v2

    aput v4, v0, v3

    .line 380
    aget v3, v0, v1

    aput v3, v0, v2

    .line 381
    aput v5, v0, v1

    .line 383
    .end local v5    # "temp":F
    :goto_0
    return-void
.end method

.method public scale(F)V
    .locals 1
    .param p1, "amount"    # F

    .line 405
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    .line 406
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    .line 407
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 408
    return-void
.end method

.method public scroll(FF)V
    .locals 7
    .param p1, "xAmount"    # F
    .param p2, "yAmount"    # F

    .line 660
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 661
    .local v0, "vertices":[F
    const/4 v1, 0x0

    cmpl-float v2, p1, v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_0

    .line 662
    const/4 v2, 0x3

    aget v4, v0, v2

    add-float/2addr v4, p1

    rem-float/2addr v4, v3

    .line 663
    .local v4, "u":F
    iget v5, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->width:F

    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    add-float/2addr v5, v4

    .line 664
    .local v5, "u2":F
    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->u:F

    .line 665
    iput v5, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->u2:F

    .line 666
    aput v4, v0, v2

    .line 667
    const/16 v2, 0x8

    aput v4, v0, v2

    .line 668
    const/16 v2, 0xd

    aput v5, v0, v2

    .line 669
    const/16 v2, 0x12

    aput v5, v0, v2

    .line 671
    .end local v4    # "u":F
    .end local v5    # "u2":F
    :cond_0
    cmpl-float v1, p2, v1

    if-eqz v1, :cond_1

    .line 672
    const/16 v1, 0x9

    aget v2, v0, v1

    add-float/2addr v2, p2

    rem-float/2addr v2, v3

    .line 673
    .local v2, "v":F
    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->height:F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    add-float/2addr v3, v2

    .line 674
    .local v3, "v2":F
    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->v:F

    .line 675
    iput v3, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->v2:F

    .line 676
    const/4 v4, 0x4

    aput v3, v0, v4

    .line 677
    aput v2, v0, v1

    .line 678
    const/16 v1, 0xe

    aput v2, v0, v1

    .line 679
    const/16 v1, 0x13

    aput v3, v0, v1

    .line 681
    .end local v2    # "v":F
    .end local v3    # "v2":F
    :cond_1
    return-void
.end method

.method public set(Lcom/badlogic/gdx/graphics/g2d/Sprite;)V
    .locals 4
    .param p1, "sprite"    # Lcom/badlogic/gdx/graphics/g2d/Sprite;

    .line 107
    if-eqz p1, :cond_0

    .line 108
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    const/16 v2, 0x14

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->texture:Lcom/badlogic/gdx/graphics/Texture;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 110
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->u:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->u:F

    .line 111
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->v:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->v:F

    .line 112
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->u2:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->u2:F

    .line 113
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->v2:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->v2:F

    .line 114
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->x:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->x:F

    .line 115
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->y:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->y:F

    .line 116
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->width:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->width:F

    .line 117
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->height:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->height:F

    .line 118
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->regionWidth:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->regionWidth:I

    .line 119
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->regionHeight:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->regionHeight:I

    .line 120
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->originX:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->originX:F

    .line 121
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->originY:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->originY:F

    .line 122
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->rotation:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->rotation:F

    .line 123
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    .line 124
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    .line 125
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->color:Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 126
    iget-boolean v0, p1, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 127
    return-void

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sprite cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAlpha(F)V
    .locals 3
    .param p1, "a"    # F

    .line 289
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->color:Lcom/badlogic/gdx/graphics/Color;

    iput p1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 290
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    .line 291
    .local v0, "color":F
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    const/4 v2, 0x2

    aput v0, v1, v2

    .line 292
    const/4 v2, 0x7

    aput v0, v1, v2

    .line 293
    const/16 v2, 0xc

    aput v0, v1, v2

    .line 294
    const/16 v2, 0x11

    aput v0, v1, v2

    .line 295
    return-void
.end method

.method public setBounds(FFFF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .line 132
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->x:F

    .line 133
    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->y:F

    .line 134
    iput p3, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->width:F

    .line 135
    iput p4, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->height:F

    .line 137
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    if-eqz v0, :cond_0

    return-void

    .line 139
    :cond_0
    add-float v0, p1, p3

    .line 140
    .local v0, "x2":F
    add-float v1, p2, p4

    .line 141
    .local v1, "y2":F
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 142
    .local v2, "vertices":[F
    const/4 v3, 0x0

    aput p1, v2, v3

    .line 143
    const/4 v3, 0x1

    aput p2, v2, v3

    .line 145
    const/4 v4, 0x5

    aput p1, v2, v4

    .line 146
    const/4 v4, 0x6

    aput v1, v2, v4

    .line 148
    const/16 v4, 0xa

    aput v0, v2, v4

    .line 149
    const/16 v4, 0xb

    aput v1, v2, v4

    .line 151
    const/16 v4, 0xf

    aput v0, v2, v4

    .line 152
    const/16 v4, 0x10

    aput p2, v2, v4

    .line 154
    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->rotation:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_2

    :cond_1
    iput-boolean v3, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 155
    :cond_2
    return-void
.end method

.method public setCenter(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 222
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setCenterX(F)V

    .line 223
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setCenterY(F)V

    .line 224
    return-void
.end method

.method public setCenterX(F)V
    .locals 2
    .param p1, "x"    # F

    .line 212
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->width:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setX(F)V

    .line 213
    return-void
.end method

.method public setCenterY(F)V
    .locals 2
    .param p1, "y"    # F

    .line 217
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->height:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setY(F)V

    .line 218
    return-void
.end method

.method public setColor(FFFF)V
    .locals 3
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .line 299
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    .line 300
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    .line 301
    .local v0, "color":F
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 302
    .local v1, "vertices":[F
    const/4 v2, 0x2

    aput v0, v1, v2

    .line 303
    const/4 v2, 0x7

    aput v0, v1, v2

    .line 304
    const/16 v2, 0xc

    aput v0, v1, v2

    .line 305
    const/16 v2, 0x11

    aput v0, v1, v2

    .line 306
    return-void
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 3
    .param p1, "tint"    # Lcom/badlogic/gdx/graphics/Color;

    .line 278
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 279
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    .line 280
    .local v0, "color":F
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 281
    .local v1, "vertices":[F
    const/4 v2, 0x2

    aput v0, v1, v2

    .line 282
    const/4 v2, 0x7

    aput v0, v1, v2

    .line 283
    const/16 v2, 0xc

    aput v0, v1, v2

    .line 284
    const/16 v2, 0x11

    aput v0, v1, v2

    .line 285
    return-void
.end method

.method public setFlip(ZZ)V
    .locals 3
    .param p1, "x"    # Z
    .param p2, "y"    # Z

    .line 624
    const/4 v0, 0x0

    .line 625
    .local v0, "performX":Z
    const/4 v1, 0x0

    .line 626
    .local v1, "performY":Z
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->isFlipX()Z

    move-result v2

    if-eq v2, p1, :cond_0

    .line 627
    const/4 v0, 0x1

    .line 629
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->isFlipY()Z

    move-result v2

    if-eq v2, p2, :cond_1

    .line 630
    const/4 v1, 0x1

    .line 632
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->flip(ZZ)V

    .line 633
    return-void
.end method

.method public setOrigin(FF)V
    .locals 1
    .param p1, "originX"    # F
    .param p2, "originY"    # F

    .line 322
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->originX:F

    .line 323
    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->originY:F

    .line 324
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 325
    return-void
.end method

.method public setOriginBasedPosition(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 193
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->originX:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->originY:F

    sub-float v1, p2, v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->setPosition(FF)V

    .line 194
    return-void
.end method

.method public setOriginCenter()V
    .locals 2

    .line 329
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->width:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->originX:F

    .line 330
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->height:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->originY:F

    .line 331
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 332
    return-void
.end method

.method public setPackedColor(F)V
    .locals 2
    .param p1, "packedColor"    # F

    .line 312
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v0, p1}, Lcom/badlogic/gdx/graphics/Color;->abgr8888ToColor(Lcom/badlogic/gdx/graphics/Color;F)V

    .line 313
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 314
    .local v0, "vertices":[F
    const/4 v1, 0x2

    aput p1, v0, v1

    .line 315
    const/4 v1, 0x7

    aput p1, v0, v1

    .line 316
    const/16 v1, 0xc

    aput p1, v0, v1

    .line 317
    const/16 v1, 0x11

    aput p1, v0, v1

    .line 318
    return-void
.end method

.method public setPosition(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 188
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->x:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->y:F

    sub-float v1, p2, v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->translate(FF)V

    .line 189
    return-void
.end method

.method public setRegion(FFFF)V
    .locals 2
    .param p1, "u"    # F
    .param p2, "v"    # F
    .param p3, "u2"    # F
    .param p4, "v2"    # F

    .line 580
    invoke-super {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setRegion(FFFF)V

    .line 582
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 583
    .local v0, "vertices":[F
    const/4 v1, 0x3

    aput p1, v0, v1

    .line 584
    const/4 v1, 0x4

    aput p4, v0, v1

    .line 586
    const/16 v1, 0x8

    aput p1, v0, v1

    .line 587
    const/16 v1, 0x9

    aput p2, v0, v1

    .line 589
    const/16 v1, 0xd

    aput p3, v0, v1

    .line 590
    const/16 v1, 0xe

    aput p2, v0, v1

    .line 592
    const/16 v1, 0x12

    aput p3, v0, v1

    .line 593
    const/16 v1, 0x13

    aput p4, v0, v1

    .line 594
    return-void
.end method

.method public setRotation(F)V
    .locals 1
    .param p1, "degrees"    # F

    .line 336
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->rotation:F

    .line 337
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 338
    return-void
.end method

.method public setScale(F)V
    .locals 1
    .param p1, "scaleXY"    # F

    .line 388
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    .line 389
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    .line 390
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 391
    return-void
.end method

.method public setScale(FF)V
    .locals 1
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F

    .line 396
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    .line 397
    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    .line 398
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 399
    return-void
.end method

.method public setSize(FF)V
    .locals 7
    .param p1, "width"    # F
    .param p2, "height"    # F

    .line 161
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->width:F

    .line 162
    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->height:F

    .line 164
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    if-eqz v0, :cond_0

    return-void

    .line 166
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->x:F

    add-float v1, v0, p1

    .line 167
    .local v1, "x2":F
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->y:F

    add-float v3, v2, p2

    .line 168
    .local v3, "y2":F
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 169
    .local v4, "vertices":[F
    const/4 v5, 0x0

    aput v0, v4, v5

    .line 170
    const/4 v5, 0x1

    aput v2, v4, v5

    .line 172
    const/4 v6, 0x5

    aput v0, v4, v6

    .line 173
    const/4 v0, 0x6

    aput v3, v4, v0

    .line 175
    const/16 v0, 0xa

    aput v1, v4, v0

    .line 176
    const/16 v0, 0xb

    aput v3, v4, v0

    .line 178
    const/16 v0, 0xf

    aput v1, v4, v0

    .line 179
    const/16 v0, 0x10

    aput v2, v4, v0

    .line 181
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->rotation:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleX:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->scaleY:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_2

    :cond_1
    iput-boolean v5, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    .line 182
    :cond_2
    return-void
.end method

.method public setU(F)V
    .locals 2
    .param p1, "u"    # F

    .line 597
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setU(F)V

    .line 598
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    const/4 v1, 0x3

    aput p1, v0, v1

    .line 599
    const/16 v1, 0x8

    aput p1, v0, v1

    .line 600
    return-void
.end method

.method public setU2(F)V
    .locals 2
    .param p1, "u2"    # F

    .line 609
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setU2(F)V

    .line 610
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    const/16 v1, 0xd

    aput p1, v0, v1

    .line 611
    const/16 v1, 0x12

    aput p1, v0, v1

    .line 612
    return-void
.end method

.method public setV(F)V
    .locals 2
    .param p1, "v"    # F

    .line 603
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setV(F)V

    .line 604
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    const/16 v1, 0x9

    aput p1, v0, v1

    .line 605
    const/16 v1, 0xe

    aput p1, v0, v1

    .line 606
    return-void
.end method

.method public setV2(F)V
    .locals 2
    .param p1, "v2"    # F

    .line 615
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setV2(F)V

    .line 616
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    const/4 v1, 0x4

    aput p1, v0, v1

    .line 617
    const/16 v1, 0x13

    aput p1, v0, v1

    .line 618
    return-void
.end method

.method public setX(F)V
    .locals 1
    .param p1, "x"    # F

    .line 200
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->x:F

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->translateX(F)V

    .line 201
    return-void
.end method

.method public setY(F)V
    .locals 1
    .param p1, "y"    # F

    .line 207
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->y:F

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/Sprite;->translateY(F)V

    .line 208
    return-void
.end method

.method public translate(FF)V
    .locals 3
    .param p1, "xAmount"    # F
    .param p2, "yAmount"    # F

    .line 257
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->x:F

    .line 258
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->y:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->y:F

    .line 260
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    if-eqz v0, :cond_0

    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 263
    .local v0, "vertices":[F
    const/4 v1, 0x0

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    .line 264
    const/4 v1, 0x1

    aget v2, v0, v1

    add-float/2addr v2, p2

    aput v2, v0, v1

    .line 266
    const/4 v1, 0x5

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    .line 267
    const/4 v1, 0x6

    aget v2, v0, v1

    add-float/2addr v2, p2

    aput v2, v0, v1

    .line 269
    const/16 v1, 0xa

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    .line 270
    const/16 v1, 0xb

    aget v2, v0, v1

    add-float/2addr v2, p2

    aput v2, v0, v1

    .line 272
    const/16 v1, 0xf

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    .line 273
    const/16 v1, 0x10

    aget v2, v0, v1

    add-float/2addr v2, p2

    aput v2, v0, v1

    .line 274
    return-void
.end method

.method public translateX(F)V
    .locals 3
    .param p1, "xAmount"    # F

    .line 229
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->x:F

    .line 231
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    if-eqz v0, :cond_0

    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 234
    .local v0, "vertices":[F
    const/4 v1, 0x0

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    .line 235
    const/4 v1, 0x5

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    .line 236
    const/16 v1, 0xa

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    .line 237
    const/16 v1, 0xf

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    .line 238
    return-void
.end method

.method public translateY(F)V
    .locals 3
    .param p1, "yAmount"    # F

    .line 243
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->y:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->y:F

    .line 245
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->dirty:Z

    if-eqz v0, :cond_0

    return-void

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Sprite;->vertices:[F

    .line 248
    .local v0, "vertices":[F
    const/4 v1, 0x1

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    .line 249
    const/4 v1, 0x6

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    .line 250
    const/16 v1, 0xb

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    .line 251
    const/16 v1, 0x10

    aget v2, v0, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    .line 252
    return-void
.end method
