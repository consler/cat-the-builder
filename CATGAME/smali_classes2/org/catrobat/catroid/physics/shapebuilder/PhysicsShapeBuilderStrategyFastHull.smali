.class public final Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilderStrategyFastHull;
.super Ljava/lang/Object;
.source "PhysicsShapeBuilderStrategyFastHull.java"

# interfaces
.implements Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilderStrategy;


# static fields
.field private static final MINIMUM_PIXEL_ALPHA_VALUE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addPoint(Ljava/util/Stack;Lcom/badlogic/gdx/math/Vector2;)V
    .locals 0
    .param p2, "point"    # Lcom/badlogic/gdx/math/Vector2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack<",
            "Lcom/badlogic/gdx/math/Vector2;",
            ">;",
            "Lcom/badlogic/gdx/math/Vector2;",
            ")V"
        }
    .end annotation

    .line 105
    .local p1, "convexHull":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/badlogic/gdx/math/Vector2;>;"
    invoke-direct {p0, p1, p2}, Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilderStrategyFastHull;->removeNonConvexPoints(Ljava/util/Stack;Lcom/badlogic/gdx/math/Vector2;)V

    .line 106
    invoke-virtual {p1, p2}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 107
    return-void
.end method

.method private devideShape([Lcom/badlogic/gdx/math/Vector2;II)[Lcom/badlogic/gdx/physics/box2d/Shape;
    .locals 10
    .param p1, "convexpoints"    # [Lcom/badlogic/gdx/math/Vector2;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 131
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 132
    aget-object v1, p1, v0

    .line 133
    .local v1, "point":Lcom/badlogic/gdx/math/Vector2;
    iget v2, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    int-to-float v3, p2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 134
    int-to-float v2, p3

    div-float/2addr v2, v4

    iget v3, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 135
    invoke-static {v1}, Lorg/catrobat/catroid/physics/PhysicsWorldConverter;->convertCatroidToBox2dVector(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    aput-object v2, p1, v0

    .line 131
    .end local v1    # "point":Lcom/badlogic/gdx/math/Vector2;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    .end local v0    # "index":I
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    const/16 v2, 0x9

    const/4 v3, 0x1

    if-ge v0, v2, :cond_1

    .line 139
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/PolygonShape;

    invoke-direct {v0}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;-><init>()V

    .line 140
    .local v0, "polygon":Lcom/badlogic/gdx/physics/box2d/PolygonShape;
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->set([Lcom/badlogic/gdx/math/Vector2;)V

    .line 141
    new-array v2, v3, [Lcom/badlogic/gdx/physics/box2d/Shape;

    aput-object v0, v2, v1

    return-object v2

    .line 144
    .end local v0    # "polygon":Lcom/badlogic/gdx/physics/box2d/PolygonShape;
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    array-length v4, p1

    div-int/lit8 v4, v4, 0x6

    add-int/2addr v4, v3

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 145
    .local v0, "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/badlogic/gdx/physics/box2d/Shape;>;"
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0x8

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 147
    .local v4, "pointsPerShape":Ljava/util/List;, "Ljava/util/List<Lcom/badlogic/gdx/math/Vector2;>;"
    aget-object v1, p1, v1

    .line 148
    .local v1, "rome":Lcom/badlogic/gdx/math/Vector2;
    const/4 v5, 0x1

    .line 149
    .local v5, "index":I
    :goto_1
    array-length v6, p1

    sub-int/2addr v6, v3

    if-ge v5, v6, :cond_4

    .line 150
    add-int/lit8 v6, v5, 0x7

    .line 152
    .local v6, "k":I
    array-length v7, p1

    sub-int/2addr v7, v5

    .line 153
    .local v7, "remainingPointsCount":I
    const/4 v8, 0x7

    if-le v7, v8, :cond_2

    if-ge v7, v2, :cond_2

    .line 154
    add-int/lit8 v6, v6, -0x3

    .line 157
    :cond_2
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    :goto_2
    if-ge v5, v6, :cond_3

    array-length v8, p1

    if-ge v5, v8, :cond_3

    .line 159
    aget-object v8, p1, v5

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 162
    :cond_3
    new-instance v8, Lcom/badlogic/gdx/physics/box2d/PolygonShape;

    invoke-direct {v8}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;-><init>()V

    .line 163
    .local v8, "polygon":Lcom/badlogic/gdx/physics/box2d/PolygonShape;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Lcom/badlogic/gdx/math/Vector2;

    invoke-interface {v4, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->set([Lcom/badlogic/gdx/math/Vector2;)V

    .line 164
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 167
    nop

    .end local v6    # "k":I
    .end local v7    # "remainingPointsCount":I
    .end local v8    # "polygon":Lcom/badlogic/gdx/physics/box2d/PolygonShape;
    add-int/lit8 v5, v5, -0x1

    .line 168
    goto :goto_1

    .line 170
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/badlogic/gdx/physics/box2d/Shape;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/badlogic/gdx/physics/box2d/Shape;

    return-object v2
.end method

.method private leftTurn(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 4
    .param p1, "a"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "b"    # Lcom/badlogic/gdx/math/Vector2;
    .param p3, "c"    # Lcom/badlogic/gdx/math/Vector2;

    .line 127
    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v0, v1

    iget v1, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v1, v2

    iget v2, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private removeNonConvexPoints(Ljava/util/Stack;Lcom/badlogic/gdx/math/Vector2;)V
    .locals 4
    .param p2, "newTop"    # Lcom/badlogic/gdx/math/Vector2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack<",
            "Lcom/badlogic/gdx/math/Vector2;",
            ">;",
            "Lcom/badlogic/gdx/math/Vector2;",
            ")V"
        }
    .end annotation

    .line 110
    .local p1, "convexHull":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/badlogic/gdx/math/Vector2;>;"
    :goto_0
    invoke-virtual {p1}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 111
    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    .line 112
    .local v0, "top":Lcom/badlogic/gdx/math/Vector2;
    invoke-virtual {p1}, Ljava/util/Stack;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p1, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/math/Vector2;

    .line 114
    .local v1, "secondTop":Lcom/badlogic/gdx/math/Vector2;
    invoke-direct {p0, v1, v0, p2}, Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilderStrategyFastHull;->leftTurn(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    goto :goto_1

    .line 118
    :cond_0
    iget v2, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v3, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    iget v2, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v3, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 119
    goto :goto_1

    .line 122
    :cond_1
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 123
    .end local v0    # "top":Lcom/badlogic/gdx/math/Vector2;
    .end local v1    # "secondTop":Lcom/badlogic/gdx/math/Vector2;
    goto :goto_0

    .line 124
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public build(Lcom/badlogic/gdx/graphics/Pixmap;F)[Lcom/badlogic/gdx/physics/box2d/Shape;
    .locals 12
    .param p1, "pixmap"    # Lcom/badlogic/gdx/graphics/Pixmap;
    .param p2, "scale"    # F

    .line 42
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 43
    return-object v0

    .line 46
    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v1

    .line 47
    .local v1, "width":I
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v2

    .line 48
    .local v2, "height":I
    const/high16 v3, 0x3f800000    # 1.0f

    .line 49
    .local v3, "coordinateAdjustmentValue":F
    new-instance v4, Ljava/util/Stack;

    invoke-direct {v4}, Ljava/util/Stack;-><init>()V

    .line 51
    .local v4, "convexHull":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/badlogic/gdx/math/Vector2;>;"
    new-instance v5, Lcom/badlogic/gdx/math/Vector2;

    int-to-float v6, v1

    int-to-float v7, v2

    invoke-direct {v5, v6, v7}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    .line 52
    .local v5, "point":Lcom/badlogic/gdx/math/Vector2;
    const/4 v6, 0x0

    .local v6, "y":I
    :goto_0
    const/4 v7, 0x1

    if-ge v6, v2, :cond_3

    .line 53
    const/4 v8, 0x0

    .local v8, "x":I
    :goto_1
    int-to-float v9, v8

    iget v10, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_2

    .line 54
    invoke-virtual {p1, v8, v6}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixel(II)I

    move-result v9

    and-int/lit16 v9, v9, 0xff

    if-lt v9, v7, :cond_1

    .line 55
    new-instance v7, Lcom/badlogic/gdx/math/Vector2;

    int-to-float v9, v8

    int-to-float v10, v6

    invoke-direct {v7, v9, v10}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    move-object v5, v7

    .line 56
    invoke-direct {p0, v4, v5}, Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilderStrategyFastHull;->addPoint(Ljava/util/Stack;Lcom/badlogic/gdx/math/Vector2;)V

    .line 57
    goto :goto_2

    .line 53
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 52
    .end local v8    # "x":I
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 62
    .end local v6    # "y":I
    :cond_3
    invoke-virtual {v4}, Ljava/util/Stack;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 63
    return-object v0

    .line 66
    :cond_4
    iget v0, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v0, v0

    .local v0, "x":I
    :goto_3
    if-ge v0, v1, :cond_7

    .line 67
    add-int/lit8 v6, v2, -0x1

    .restart local v6    # "y":I
    :goto_4
    int-to-float v8, v6

    iget v9, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_6

    .line 68
    invoke-virtual {p1, v0, v6}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixel(II)I

    move-result v8

    and-int/lit16 v8, v8, 0xff

    if-lt v8, v7, :cond_5

    .line 69
    new-instance v8, Lcom/badlogic/gdx/math/Vector2;

    int-to-float v9, v0

    int-to-float v10, v6

    invoke-direct {v8, v9, v10}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    move-object v5, v8

    .line 70
    new-instance v8, Lcom/badlogic/gdx/math/Vector2;

    int-to-float v9, v0

    int-to-float v10, v6

    add-float/2addr v10, v3

    invoke-direct {v8, v9, v10}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-direct {p0, v4, v8}, Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilderStrategyFastHull;->addPoint(Ljava/util/Stack;Lcom/badlogic/gdx/math/Vector2;)V

    .line 71
    goto :goto_5

    .line 67
    :cond_5
    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    .line 66
    .end local v6    # "y":I
    :cond_6
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 76
    .end local v0    # "x":I
    :cond_7
    invoke-virtual {v4}, Ljava/util/Stack;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    .line 77
    .local v0, "firstPoint":Lcom/badlogic/gdx/math/Vector2;
    iget v6, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v6, v6

    .restart local v6    # "y":I
    :goto_6
    int-to-float v8, v6

    iget v9, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_a

    .line 78
    add-int/lit8 v8, v1, -0x1

    .restart local v8    # "x":I
    :goto_7
    int-to-float v9, v8

    iget v10, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_9

    .line 79
    invoke-virtual {p1, v8, v6}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixel(II)I

    move-result v9

    and-int/lit16 v9, v9, 0xff

    if-lt v9, v7, :cond_8

    .line 80
    new-instance v9, Lcom/badlogic/gdx/math/Vector2;

    int-to-float v10, v8

    int-to-float v11, v6

    invoke-direct {v9, v10, v11}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    move-object v5, v9

    .line 81
    new-instance v9, Lcom/badlogic/gdx/math/Vector2;

    int-to-float v10, v8

    add-float/2addr v10, v3

    int-to-float v11, v6

    add-float/2addr v11, v3

    invoke-direct {v9, v10, v11}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-direct {p0, v4, v9}, Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilderStrategyFastHull;->addPoint(Ljava/util/Stack;Lcom/badlogic/gdx/math/Vector2;)V

    .line 82
    goto :goto_8

    .line 78
    :cond_8
    add-int/lit8 v8, v8, -0x1

    goto :goto_7

    .line 77
    .end local v8    # "x":I
    :cond_9
    :goto_8
    add-int/lit8 v6, v6, -0x1

    goto :goto_6

    .line 87
    .end local v6    # "y":I
    :cond_a
    iget v6, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v6, v6

    .local v6, "x":I
    :goto_9
    int-to-float v8, v6

    iget v9, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_d

    .line 88
    iget v8, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v8, v8

    .local v8, "y":I
    :goto_a
    int-to-float v9, v8

    iget v10, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_c

    .line 89
    invoke-virtual {p1, v6, v8}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixel(II)I

    move-result v9

    and-int/lit16 v9, v9, 0xff

    if-lt v9, v7, :cond_b

    .line 90
    new-instance v9, Lcom/badlogic/gdx/math/Vector2;

    int-to-float v10, v6

    int-to-float v11, v8

    invoke-direct {v9, v10, v11}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    move-object v5, v9

    .line 91
    new-instance v9, Lcom/badlogic/gdx/math/Vector2;

    int-to-float v10, v6

    add-float/2addr v10, v3

    int-to-float v11, v8

    invoke-direct {v9, v10, v11}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-direct {p0, v4, v9}, Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilderStrategyFastHull;->addPoint(Ljava/util/Stack;Lcom/badlogic/gdx/math/Vector2;)V

    .line 92
    goto :goto_b

    .line 88
    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    .line 87
    .end local v8    # "y":I
    :cond_c
    :goto_b
    add-int/lit8 v6, v6, -0x1

    goto :goto_9

    .line 97
    .end local v6    # "x":I
    :cond_d
    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v6

    const/4 v7, 0x2

    if-le v6, v7, :cond_e

    .line 98
    invoke-direct {p0, v4, v0}, Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilderStrategyFastHull;->removeNonConvexPoints(Ljava/util/Stack;Lcom/badlogic/gdx/math/Vector2;)V

    .line 101
    :cond_e
    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v6

    new-array v6, v6, [Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v4, v6}, Ljava/util/Stack;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {p0, v6, v1, v2}, Lorg/catrobat/catroid/physics/shapebuilder/PhysicsShapeBuilderStrategyFastHull;->devideShape([Lcom/badlogic/gdx/math/Vector2;II)[Lcom/badlogic/gdx/physics/box2d/Shape;

    move-result-object v6

    return-object v6
.end method
