.class public final Lorg/catrobat/catroid/sensing/CollisionDetection;
.super Ljava/lang/Object;
.source "CollisionDetection.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public static checkCollisionBetweenLooks(Lorg/catrobat/catroid/content/Look;Lorg/catrobat/catroid/content/Look;)Z
    .locals 3
    .param p0, "firstLook"    # Lorg/catrobat/catroid/content/Look;
    .param p1, "secondLook"    # Lorg/catrobat/catroid/content/Look;

    .line 48
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->isLookVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Look;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Look;->isLookVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->getHitbox()Lcom/badlogic/gdx/math/Rectangle;

    move-result-object v0

    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Look;->getHitbox()Lcom/badlogic/gdx/math/Rectangle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/math/Rectangle;->overlaps(Lcom/badlogic/gdx/math/Rectangle;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    return v1

    .line 56
    :cond_1
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Look;->getCurrentCollisionPolygon()[Lcom/badlogic/gdx/math/Polygon;

    move-result-object v0

    .line 57
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Look;->getCurrentCollisionPolygon()[Lcom/badlogic/gdx/math/Polygon;

    move-result-object v1

    .line 56
    invoke-static {v0, v1}, Lorg/catrobat/catroid/sensing/CollisionDetection;->checkCollisionBetweenPolygons([Lcom/badlogic/gdx/math/Polygon;[Lcom/badlogic/gdx/math/Polygon;)Z

    move-result v0

    return v0

    .line 49
    :cond_2
    :goto_0
    return v1
.end method

.method public static checkCollisionBetweenPolygons([Lcom/badlogic/gdx/math/Polygon;[Lcom/badlogic/gdx/math/Polygon;)Z
    .locals 6
    .param p0, "first"    # [Lcom/badlogic/gdx/math/Polygon;
    .param p1, "second"    # [Lcom/badlogic/gdx/math/Polygon;

    .line 61
    invoke-static {p0}, Lorg/catrobat/catroid/sensing/CollisionDetection;->createBoundingBoxesOfCollisionPolygons([Lcom/badlogic/gdx/math/Polygon;)[Lcom/badlogic/gdx/math/Rectangle;

    move-result-object v0

    .line 62
    .local v0, "firstBoxes":[Lcom/badlogic/gdx/math/Rectangle;
    invoke-static {p1}, Lorg/catrobat/catroid/sensing/CollisionDetection;->createBoundingBoxesOfCollisionPolygons([Lcom/badlogic/gdx/math/Polygon;)[Lcom/badlogic/gdx/math/Rectangle;

    move-result-object v1

    .line 64
    .local v1, "secondBoxes":[Lcom/badlogic/gdx/math/Rectangle;
    const/4 v2, 0x0

    .local v2, "firstIndex":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 65
    const/4 v3, 0x0

    .local v3, "secondIndex":I
    :goto_1
    array-length v4, p1

    if-ge v3, v4, :cond_1

    .line 66
    aget-object v4, v0, v2

    aget-object v5, v1, v3

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Rectangle;->overlaps(Lcom/badlogic/gdx/math/Rectangle;)Z

    move-result v4

    if-eqz v4, :cond_0

    aget-object v4, p0, v2

    aget-object v5, p1, v3

    .line 67
    invoke-static {v4, v5}, Lorg/catrobat/catroid/sensing/CollisionDetection;->intersectPolygons(Lcom/badlogic/gdx/math/Polygon;Lcom/badlogic/gdx/math/Polygon;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 68
    const/4 v4, 0x1

    return v4

    .line 65
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 64
    .end local v3    # "secondIndex":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 72
    .end local v2    # "firstIndex":I
    :cond_2
    invoke-static {p0, p1}, Lorg/catrobat/catroid/sensing/CollisionDetection;->checkCollisionForPolygonsInPolygons([Lcom/badlogic/gdx/math/Polygon;[Lcom/badlogic/gdx/math/Polygon;)Z

    move-result v2

    return v2
.end method

.method public static checkCollisionForPolygonsInPolygons([Lcom/badlogic/gdx/math/Polygon;[Lcom/badlogic/gdx/math/Polygon;)Z
    .locals 11
    .param p0, "first"    # [Lcom/badlogic/gdx/math/Polygon;
    .param p1, "second"    # [Lcom/badlogic/gdx/math/Polygon;

    .line 103
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    aget-object v4, p0, v2

    .line 104
    .local v4, "firstPolygon":Lcom/badlogic/gdx/math/Polygon;
    const/4 v5, 0x0

    .line 105
    .local v5, "containedIn":I
    array-length v6, p1

    move v7, v1

    :goto_1
    if-ge v7, v6, :cond_1

    aget-object v8, p1, v7

    .line 106
    .local v8, "secondPolygon":Lcom/badlogic/gdx/math/Polygon;
    invoke-virtual {v4}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

    move-result-object v9

    aget v9, v9, v1

    invoke-virtual {v4}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

    move-result-object v10

    aget v10, v10, v3

    invoke-virtual {v8, v9, v10}, Lcom/badlogic/gdx/math/Polygon;->contains(FF)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 107
    add-int/lit8 v5, v5, 0x1

    .line 105
    .end local v8    # "secondPolygon":Lcom/badlogic/gdx/math/Polygon;
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 110
    :cond_1
    rem-int/lit8 v6, v5, 0x2

    if-eqz v6, :cond_2

    .line 111
    return v3

    .line 103
    .end local v4    # "firstPolygon":Lcom/badlogic/gdx/math/Polygon;
    .end local v5    # "containedIn":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 115
    :cond_3
    array-length v0, p1

    move v2, v1

    :goto_2
    if-ge v2, v0, :cond_7

    aget-object v4, p1, v2

    .line 116
    .local v4, "secondPolygon":Lcom/badlogic/gdx/math/Polygon;
    const/4 v5, 0x0

    .line 117
    .restart local v5    # "containedIn":I
    array-length v6, p0

    move v7, v1

    :goto_3
    if-ge v7, v6, :cond_5

    aget-object v8, p0, v7

    .line 118
    .local v8, "firstPolygon":Lcom/badlogic/gdx/math/Polygon;
    invoke-virtual {v4}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

    move-result-object v9

    aget v9, v9, v1

    invoke-virtual {v4}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

    move-result-object v10

    aget v10, v10, v3

    invoke-virtual {v8, v9, v10}, Lcom/badlogic/gdx/math/Polygon;->contains(FF)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 119
    add-int/lit8 v5, v5, 0x1

    .line 117
    .end local v8    # "firstPolygon":Lcom/badlogic/gdx/math/Polygon;
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 122
    :cond_5
    rem-int/lit8 v6, v5, 0x2

    if-eqz v6, :cond_6

    .line 123
    return v3

    .line 115
    .end local v4    # "secondPolygon":Lcom/badlogic/gdx/math/Polygon;
    .end local v5    # "containedIn":I
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 126
    :cond_7
    return v1
.end method

.method public static collidesWithEdge([Lcom/badlogic/gdx/math/Polygon;Lcom/badlogic/gdx/math/Rectangle;)Z
    .locals 10
    .param p0, "currentCollisionPolygon"    # [Lcom/badlogic/gdx/math/Polygon;
    .param p1, "screen"    # Lcom/badlogic/gdx/math/Rectangle;

    .line 149
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    .line 150
    .local v0, "firstPoint":Lcom/badlogic/gdx/math/Vector2;
    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    .line 152
    .local v1, "secondPoint":Lcom/badlogic/gdx/math/Vector2;
    array-length v2, p0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, p0, v4

    .line 153
    .local v5, "polygon":Lcom/badlogic/gdx/math/Polygon;
    invoke-virtual {v5}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

    move-result-object v6

    .line 154
    .local v6, "transformedVertices":[F
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v8, v6

    add-int/lit8 v8, v8, -0x4

    if-ge v7, v8, :cond_1

    .line 155
    aget v8, v6, v7

    add-int/lit8 v9, v7, 0x1

    aget v9, v6, v9

    invoke-virtual {v0, v8, v9}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 156
    add-int/lit8 v8, v7, 0x2

    aget v8, v6, v8

    add-int/lit8 v9, v7, 0x3

    aget v9, v6, v9

    invoke-virtual {v1, v8, v9}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 159
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/Rectangle;->contains(Lcom/badlogic/gdx/math/Vector2;)Z

    move-result v8

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/math/Rectangle;->contains(Lcom/badlogic/gdx/math/Vector2;)Z

    move-result v9

    xor-int/2addr v8, v9

    if-eqz v8, :cond_0

    .line 160
    const/4 v2, 0x1

    return v2

    .line 154
    :cond_0
    add-int/lit8 v7, v7, 0x2

    goto :goto_1

    .line 152
    .end local v5    # "polygon":Lcom/badlogic/gdx/math/Polygon;
    .end local v6    # "transformedVertices":[F
    .end local v7    # "i":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 164
    :cond_2
    return v3
.end method

.method public static collidesWithFinger([Lcom/badlogic/gdx/math/Polygon;Ljava/util/ArrayList;)D
    .locals 18
    .param p0, "currentCollisionPolygon"    # [Lcom/badlogic/gdx/math/Polygon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/badlogic/gdx/math/Polygon;",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;)D"
        }
    .end annotation

    .line 181
    .local p1, "touchingPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/PointF;>;"
    move-object/from16 v0, p0

    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    .line 182
    .local v1, "start":Lcom/badlogic/gdx/math/Vector2;
    new-instance v2, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    .line 183
    .local v2, "end":Lcom/badlogic/gdx/math/Vector2;
    new-instance v3, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v3}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    .line 184
    .local v3, "center":Lcom/badlogic/gdx/math/Vector2;
    const/high16 v4, 0x42480000    # 50.0f

    .line 186
    .local v4, "touchRadius":F
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    .line 187
    .local v6, "point":Landroid/graphics/PointF;
    iget v7, v6, Landroid/graphics/PointF;->x:F

    iget v8, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v7, v8}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 188
    const/4 v7, 0x0

    .line 189
    .local v7, "containedIn":I
    array-length v8, v0

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v8, :cond_4

    aget-object v13, v0, v10

    .line 190
    .local v13, "polygon":Lcom/badlogic/gdx/math/Polygon;
    invoke-virtual {v13}, Lcom/badlogic/gdx/math/Polygon;->getBoundingRectangle()Lcom/badlogic/gdx/math/Rectangle;

    move-result-object v14

    .line 191
    .local v14, "boundingRectangle":Lcom/badlogic/gdx/math/Rectangle;
    iget v15, v14, Lcom/badlogic/gdx/math/Rectangle;->x:F

    sub-float/2addr v15, v4

    iput v15, v14, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 192
    iget v15, v14, Lcom/badlogic/gdx/math/Rectangle;->y:F

    sub-float/2addr v15, v4

    iput v15, v14, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 193
    iget v15, v14, Lcom/badlogic/gdx/math/Rectangle;->width:F

    const/high16 v16, 0x40000000    # 2.0f

    mul-float v17, v4, v16

    add-float v15, v15, v17

    iput v15, v14, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 194
    iget v15, v14, Lcom/badlogic/gdx/math/Rectangle;->height:F

    mul-float v16, v16, v4

    add-float v15, v15, v16

    iput v15, v14, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 195
    iget v15, v6, Landroid/graphics/PointF;->x:F

    iget v9, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v14, v15, v9}, Lcom/badlogic/gdx/math/Rectangle;->contains(FF)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 196
    invoke-virtual {v13}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

    move-result-object v9

    .line 197
    .local v9, "vertices":[F
    const/4 v15, 0x0

    .line 198
    .local v15, "f":I
    :cond_0
    invoke-virtual {v13}, Lcom/badlogic/gdx/math/Polygon;->getVertices()[F

    move-result-object v11

    array-length v11, v11

    add-int/lit8 v11, v11, -0x3

    if-ge v15, v11, :cond_1

    .line 199
    add-int/lit8 v11, v15, 0x1

    .end local v15    # "f":I
    .local v11, "f":I
    aget v12, v9, v15

    iput v12, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 200
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "f":I
    .local v12, "f":I
    aget v11, v9, v11

    iput v11, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 201
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "f":I
    .restart local v11    # "f":I
    aget v12, v9, v12

    iput v12, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 202
    add-int/lit8 v15, v11, 0x1

    .end local v11    # "f":I
    .restart local v15    # "f":I
    aget v11, v9, v11

    iput v11, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 203
    mul-float v11, v4, v4

    invoke-static {v1, v2, v3, v11}, Lcom/badlogic/gdx/math/Intersector;->intersectSegmentCircle(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;F)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 204
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    return-wide v10

    .line 207
    :cond_1
    array-length v11, v9

    add-int/lit8 v11, v11, -0x2

    aget v11, v9, v11

    iput v11, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 208
    array-length v11, v9

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    aget v11, v9, v11

    iput v11, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 209
    const/4 v11, 0x0

    aget v12, v9, v11

    iput v12, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 210
    const/4 v12, 0x1

    aget v12, v9, v12

    iput v12, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 211
    mul-float v12, v4, v4

    invoke-static {v1, v2, v3, v12}, Lcom/badlogic/gdx/math/Intersector;->intersectSegmentCircle(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;F)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 212
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    return-wide v10

    .line 214
    :cond_2
    iget v12, v6, Landroid/graphics/PointF;->x:F

    iget v11, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v13, v12, v11}, Lcom/badlogic/gdx/math/Polygon;->contains(FF)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 215
    add-int/lit8 v7, v7, 0x1

    .line 189
    .end local v9    # "vertices":[F
    .end local v13    # "polygon":Lcom/badlogic/gdx/math/Polygon;
    .end local v14    # "boundingRectangle":Lcom/badlogic/gdx/math/Rectangle;
    .end local v15    # "f":I
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 219
    :cond_4
    rem-int/lit8 v8, v7, 0x2

    if-eqz v8, :cond_5

    .line 220
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    return-wide v8

    .line 222
    .end local v6    # "point":Landroid/graphics/PointF;
    .end local v7    # "containedIn":I
    :cond_5
    goto/16 :goto_0

    .line 223
    :cond_6
    const-wide/16 v5, 0x0

    return-wide v5
.end method

.method private static createBoundingBoxesOfCollisionPolygons([Lcom/badlogic/gdx/math/Polygon;)[Lcom/badlogic/gdx/math/Rectangle;
    .locals 3
    .param p0, "polygons"    # [Lcom/badlogic/gdx/math/Polygon;

    .line 76
    array-length v0, p0

    new-array v0, v0, [Lcom/badlogic/gdx/math/Rectangle;

    .line 77
    .local v0, "boundingBoxes":[Lcom/badlogic/gdx/math/Rectangle;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 78
    aget-object v2, p0, v1

    invoke-virtual {v2}, Lcom/badlogic/gdx/math/Polygon;->getBoundingRectangle()Lcom/badlogic/gdx/math/Rectangle;

    move-result-object v2

    aput-object v2, v0, v1

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static getSecondSpriteNameFromCollisionFormulaString(Ljava/lang/String;Lorg/catrobat/catroid/content/Project;)Ljava/lang/String;
    .locals 8
    .param p0, "formula"    # Ljava/lang/String;
    .param p1, "currentProject"    # Lorg/catrobat/catroid/content/Project;

    .line 131
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 132
    .local v0, "indexOfSpriteInFormula":I
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Project;->getSceneList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/content/Scene;

    .line 133
    .local v2, "scene":Lorg/catrobat/catroid/content/Scene;
    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Scene;->getSpriteList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/catrobat/catroid/content/Sprite;

    .line 134
    .local v4, "sprite":Lorg/catrobat/catroid/content/Sprite;
    invoke-virtual {v4}, Lorg/catrobat/catroid/content/Sprite;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 135
    .local v5, "index":I
    if-lez v5, :cond_0

    invoke-virtual {v4}, Lorg/catrobat/catroid/content/Sprite;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v6, v7, :cond_0

    if-ge v5, v0, :cond_0

    .line 137
    move v0, v5

    .line 139
    .end local v4    # "sprite":Lorg/catrobat/catroid/content/Sprite;
    .end local v5    # "index":I
    :cond_0
    goto :goto_1

    .line 140
    .end local v2    # "scene":Lorg/catrobat/catroid/content/Scene;
    :cond_1
    goto :goto_0

    .line 141
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_3

    .line 142
    const/4 v1, 0x0

    return-object v1

    .line 144
    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "secondSpriteName":Ljava/lang/String;
    return-object v1
.end method

.method public static intersectPolygons(Lcom/badlogic/gdx/math/Polygon;Lcom/badlogic/gdx/math/Polygon;)Z
    .locals 6
    .param p0, "first"    # Lcom/badlogic/gdx/math/Polygon;
    .param p1, "second"    # Lcom/badlogic/gdx/math/Polygon;

    .line 84
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

    move-result-object v0

    .line 85
    .local v0, "firstVertices":[F
    array-length v1, v0

    .line 86
    .local v1, "firstLength":I
    new-instance v2, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v2}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    .line 87
    .local v2, "v1":Lcom/badlogic/gdx/math/Vector2;
    new-instance v3, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v3}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    .line 89
    .local v3, "v2":Lcom/badlogic/gdx/math/Vector2;
    const/4 v4, 0x0

    .local v4, "firstIndex":I
    :goto_0
    if-ge v4, v1, :cond_1

    .line 90
    aget v5, v0, v4

    iput v5, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 91
    add-int/lit8 v5, v4, 0x1

    aget v5, v0, v5

    iput v5, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 92
    add-int/lit8 v5, v4, 0x2

    rem-int/2addr v5, v1

    aget v5, v0, v5

    iput v5, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 93
    add-int/lit8 v5, v4, 0x3

    rem-int/2addr v5, v1

    aget v5, v0, v5

    iput v5, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 95
    invoke-static {v2, v3, p1}, Lcom/badlogic/gdx/math/Intersector;->intersectSegmentPolygon(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Polygon;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 96
    const/4 v5, 0x1

    return v5

    .line 89
    :cond_0
    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    .line 99
    .end local v4    # "firstIndex":I
    :cond_1
    const/4 v4, 0x0

    return v4
.end method
