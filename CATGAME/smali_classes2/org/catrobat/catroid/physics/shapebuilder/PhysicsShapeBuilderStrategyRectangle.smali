.class public Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilderStrategyRectangle;
.super Ljava/lang/Object;
.source "PhysicsShapeBuilderStrategyRectangle.java"

# interfaces
.implements Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilderStrategy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Lcom/badlogic/gdx/graphics/Pixmap;F)[Lcom/badlogic/gdx/physics/box2d/Shape;
    .locals 10
    .param p1, "pixmap"    # Lcom/badlogic/gdx/graphics/Pixmap;
    .param p2, "scale"    # F

    .line 39
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 40
    return-object v0

    .line 43
    :cond_0
    const/4 v1, 0x0

    .line 44
    .local v1, "start":Landroid/graphics/Point;
    const/4 v2, 0x0

    .line 46
    .local v2, "end":Landroid/graphics/Point;
    const/4 v3, 0x0

    .local v3, "y":I
    :goto_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 47
    const/4 v4, 0x0

    .local v4, "x":I
    :goto_1
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 48
    invoke-virtual {p1, v4, v3}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixel(II)I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    .line 50
    .local v5, "alpha":I
    if-lez v5, :cond_5

    .line 51
    if-nez v1, :cond_1

    .line 52
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v4, v3}, Landroid/graphics/Point;-><init>(II)V

    move-object v1, v6

    .line 53
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v4, v3}, Landroid/graphics/Point;-><init>(II)V

    move-object v2, v6

    .line 54
    goto :goto_3

    .line 57
    :cond_1
    iget v6, v1, Landroid/graphics/Point;->x:I

    if-ge v4, v6, :cond_2

    .line 58
    iput v4, v1, Landroid/graphics/Point;->x:I

    goto :goto_2

    .line 59
    :cond_2
    iget v6, v2, Landroid/graphics/Point;->x:I

    if-le v4, v6, :cond_3

    .line 60
    iput v4, v2, Landroid/graphics/Point;->x:I

    .line 63
    :cond_3
    :goto_2
    iget v6, v1, Landroid/graphics/Point;->y:I

    if-ge v3, v6, :cond_4

    .line 64
    iput v3, v1, Landroid/graphics/Point;->y:I

    goto :goto_3

    .line 65
    :cond_4
    iget v6, v2, Landroid/graphics/Point;->y:I

    if-le v3, v6, :cond_5

    .line 66
    iput v3, v2, Landroid/graphics/Point;->y:I

    .line 47
    .end local v5    # "alpha":I
    :cond_5
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 46
    .end local v4    # "x":I
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 72
    .end local v3    # "y":I
    :cond_7
    if-nez v1, :cond_8

    .line 73
    return-object v0

    .line 76
    :cond_8
    iget v0, v2, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v3

    .line 77
    .local v0, "width":I
    iget v3, v2, Landroid/graphics/Point;->y:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v4

    .line 79
    .local v3, "height":I
    if-nez v0, :cond_9

    .line 80
    const/4 v0, 0x1

    .line 83
    :cond_9
    if-nez v3, :cond_a

    .line 84
    const/4 v3, 0x1

    .line 87
    :cond_a
    int-to-float v4, v0

    invoke-static {v4}, Lorg/catrobat/catroid/physics/PhysicsWorldConverter;->convertNormalToBox2dCoordinate(F)F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 88
    .local v4, "box2dWidth":F
    int-to-float v6, v3

    invoke-static {v6}, Lorg/catrobat/catroid/physics/PhysicsWorldConverter;->convertNormalToBox2dCoordinate(F)F

    move-result v6

    div-float/2addr v6, v5

    .line 89
    .local v6, "box2dHeight":F
    new-instance v7, Lcom/badlogic/gdx/math/Vector2;

    .line 90
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v5

    invoke-static {v8}, Lorg/catrobat/catroid/physics/PhysicsWorldConverter;->convertNormalToBox2dCoordinate(F)F

    move-result v8

    sub-float v8, v4, v8

    .line 91
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v5

    invoke-static {v9}, Lorg/catrobat/catroid/physics/PhysicsWorldConverter;->convertNormalToBox2dCoordinate(F)F

    move-result v5

    sub-float v5, v6, v5

    invoke-direct {v7, v8, v5}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    move-object v5, v7

    .line 92
    .local v5, "center":Lcom/badlogic/gdx/math/Vector2;
    new-instance v7, Lcom/badlogic/gdx/physics/box2d/PolygonShape;

    invoke-direct {v7}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;-><init>()V

    .line 93
    .local v7, "polygonShape":Lcom/badlogic/gdx/physics/box2d/PolygonShape;
    const/4 v8, 0x0

    invoke-virtual {v7, v4, v6, v5, v8}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->setAsBox(FFLcom/badlogic/gdx/math/Vector2;F)V

    .line 95
    const/4 v8, 0x1

    new-array v8, v8, [Lcom/badlogic/gdx/physics/box2d/Shape;

    const/4 v9, 0x0

    aput-object v7, v8, v9

    return-object v8
.end method
