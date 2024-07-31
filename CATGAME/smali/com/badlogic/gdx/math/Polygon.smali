.class public Lcom/badlogic/gdx/math/Polygon;
.super Ljava/lang/Object;
.source "Polygon.java"

# interfaces
.implements Lcom/badlogic/gdx/math/Shape2D;


# instance fields
.field private bounds:Lcom/badlogic/gdx/math/Rectangle;

.field private dirty:Z

.field private localVertices:[F

.field private originX:F

.field private originY:F

.field private rotation:F

.field private scaleX:F

.field private scaleY:F

.field private worldVertices:[F

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/math/Polygon;->scaleX:F

    iput v0, p0, Lcom/badlogic/gdx/math/Polygon;->scaleY:F

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polygon;->dirty:Z

    .line 32
    const/4 v0, 0x0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/math/Polygon;->localVertices:[F

    .line 33
    return-void
.end method

.method public constructor <init>([F)V
    .locals 2
    .param p1, "vertices"    # [F

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/math/Polygon;->scaleX:F

    iput v0, p0, Lcom/badlogic/gdx/math/Polygon;->scaleY:F

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polygon;->dirty:Z

    .line 42
    array-length v0, p1

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    .line 43
    iput-object p1, p0, Lcom/badlogic/gdx/math/Polygon;->localVertices:[F

    .line 44
    return-void

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "polygons must contain at least 3 points."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public area()F
    .locals 3

    .line 162
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

    move-result-object v0

    .line 163
    .local v0, "vertices":[F
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/badlogic/gdx/math/GeometryUtils;->polygonArea([FII)F

    move-result v1

    return v1
.end method

.method public contains(FF)Z
    .locals 10
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 199
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

    move-result-object v0

    .line 200
    .local v0, "vertices":[F
    array-length v1, v0

    .line 201
    .local v1, "numFloats":I
    const/4 v2, 0x0

    .line 203
    .local v2, "intersects":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 204
    aget v4, v0, v3

    .line 205
    .local v4, "x1":F
    add-int/lit8 v5, v3, 0x1

    aget v5, v0, v5

    .line 206
    .local v5, "y1":F
    add-int/lit8 v6, v3, 0x2

    rem-int/2addr v6, v1

    aget v6, v0, v6

    .line 207
    .local v6, "x2":F
    add-int/lit8 v7, v3, 0x3

    rem-int/2addr v7, v1

    aget v7, v0, v7

    .line 208
    .local v7, "y2":F
    cmpg-float v8, v5, p2

    if-gtz v8, :cond_0

    cmpg-float v8, p2, v7

    if-ltz v8, :cond_1

    :cond_0
    cmpg-float v8, v7, p2

    if-gtz v8, :cond_2

    cmpg-float v8, p2, v5

    if-gez v8, :cond_2

    :cond_1
    sub-float v8, v6, v4

    sub-float v9, v7, v5

    div-float/2addr v8, v9

    sub-float v9, p2, v5

    mul-float/2addr v8, v9

    add-float/2addr v8, v4

    cmpg-float v8, p1, v8

    if-gez v8, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 203
    .end local v4    # "x1":F
    .end local v5    # "y1":F
    .end local v6    # "x2":F
    .end local v7    # "y2":F
    :cond_2
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 210
    .end local v3    # "i":I
    :cond_3
    and-int/lit8 v3, v2, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :goto_1
    return v4
.end method

.method public contains(Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 2
    .param p1, "point"    # Lcom/badlogic/gdx/math/Vector2;

    .line 215
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/math/Polygon;->contains(FF)Z

    move-result v0

    return v0
.end method

.method public dirty()V
    .locals 1

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polygon;->dirty:Z

    .line 158
    return-void
.end method

.method public getBoundingRectangle()Lcom/badlogic/gdx/math/Rectangle;
    .locals 8

    .line 172
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

    move-result-object v0

    .line 174
    .local v0, "vertices":[F
    const/4 v1, 0x0

    aget v2, v0, v1

    .line 175
    .local v2, "minX":F
    const/4 v3, 0x1

    aget v4, v0, v3

    .line 176
    .local v4, "minY":F
    aget v1, v0, v1

    .line 177
    .local v1, "maxX":F
    aget v3, v0, v3

    .line 179
    .local v3, "maxY":F
    array-length v5, v0

    .line 180
    .local v5, "numFloats":I
    const/4 v6, 0x2

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_4

    .line 181
    aget v7, v0, v6

    cmpl-float v7, v2, v7

    if-lez v7, :cond_0

    aget v7, v0, v6

    goto :goto_1

    :cond_0
    move v7, v2

    :goto_1
    move v2, v7

    .line 182
    add-int/lit8 v7, v6, 0x1

    aget v7, v0, v7

    cmpl-float v7, v4, v7

    if-lez v7, :cond_1

    add-int/lit8 v7, v6, 0x1

    aget v7, v0, v7

    goto :goto_2

    :cond_1
    move v7, v4

    :goto_2
    move v4, v7

    .line 183
    aget v7, v0, v6

    cmpg-float v7, v1, v7

    if-gez v7, :cond_2

    aget v7, v0, v6

    goto :goto_3

    :cond_2
    move v7, v1

    :goto_3
    move v1, v7

    .line 184
    add-int/lit8 v7, v6, 0x1

    aget v7, v0, v7

    cmpg-float v7, v3, v7

    if-gez v7, :cond_3

    add-int/lit8 v7, v6, 0x1

    aget v7, v0, v7

    goto :goto_4

    :cond_3
    move v7, v3

    :goto_4
    move v3, v7

    .line 180
    add-int/lit8 v6, v6, 0x2

    goto :goto_0

    .line 187
    .end local v6    # "i":I
    :cond_4
    iget-object v6, p0, Lcom/badlogic/gdx/math/Polygon;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    if-nez v6, :cond_5

    new-instance v6, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v6}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v6, p0, Lcom/badlogic/gdx/math/Polygon;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 188
    :cond_5
    iget-object v6, p0, Lcom/badlogic/gdx/math/Polygon;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    iput v2, v6, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 189
    iget-object v6, p0, Lcom/badlogic/gdx/math/Polygon;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    iput v4, v6, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 190
    iget-object v6, p0, Lcom/badlogic/gdx/math/Polygon;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    sub-float v7, v1, v2

    iput v7, v6, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 191
    iget-object v6, p0, Lcom/badlogic/gdx/math/Polygon;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    sub-float v7, v3, v4

    iput v7, v6, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 193
    iget-object v6, p0, Lcom/badlogic/gdx/math/Polygon;->bounds:Lcom/badlogic/gdx/math/Rectangle;

    return-object v6
.end method

.method public getOriginX()F
    .locals 1

    .line 230
    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->originX:F

    return v0
.end method

.method public getOriginY()F
    .locals 1

    .line 235
    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->originY:F

    return v0
.end method

.method public getRotation()F
    .locals 1

    .line 240
    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->rotation:F

    return v0
.end method

.method public getScaleX()F
    .locals 1

    .line 245
    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->scaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .line 250
    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->scaleY:F

    return v0
.end method

.method public getTransformedVertices()[F
    .locals 20

    .line 56
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/badlogic/gdx/math/Polygon;->dirty:Z

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/badlogic/gdx/math/Polygon;->worldVertices:[F

    return-object v1

    .line 57
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/badlogic/gdx/math/Polygon;->dirty:Z

    .line 59
    iget-object v2, v0, Lcom/badlogic/gdx/math/Polygon;->localVertices:[F

    .line 60
    .local v2, "localVertices":[F
    iget-object v3, v0, Lcom/badlogic/gdx/math/Polygon;->worldVertices:[F

    if-eqz v3, :cond_1

    array-length v3, v3

    array-length v4, v2

    if-eq v3, v4, :cond_2

    :cond_1
    array-length v3, v2

    new-array v3, v3, [F

    iput-object v3, v0, Lcom/badlogic/gdx/math/Polygon;->worldVertices:[F

    .line 62
    :cond_2
    iget-object v3, v0, Lcom/badlogic/gdx/math/Polygon;->worldVertices:[F

    .line 63
    .local v3, "worldVertices":[F
    iget v4, v0, Lcom/badlogic/gdx/math/Polygon;->x:F

    .line 64
    .local v4, "positionX":F
    iget v5, v0, Lcom/badlogic/gdx/math/Polygon;->y:F

    .line 65
    .local v5, "positionY":F
    iget v6, v0, Lcom/badlogic/gdx/math/Polygon;->originX:F

    .line 66
    .local v6, "originX":F
    iget v7, v0, Lcom/badlogic/gdx/math/Polygon;->originY:F

    .line 67
    .local v7, "originY":F
    iget v8, v0, Lcom/badlogic/gdx/math/Polygon;->scaleX:F

    .line 68
    .local v8, "scaleX":F
    iget v9, v0, Lcom/badlogic/gdx/math/Polygon;->scaleY:F

    .line 69
    .local v9, "scaleY":F
    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v11, v8, v10

    if-nez v11, :cond_3

    cmpl-float v10, v9, v10

    if-eqz v10, :cond_4

    :cond_3
    const/4 v1, 0x1

    .line 70
    .local v1, "scale":Z
    :cond_4
    iget v10, v0, Lcom/badlogic/gdx/math/Polygon;->rotation:F

    .line 71
    .local v10, "rotation":F
    invoke-static {v10}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v11

    .line 72
    .local v11, "cos":F
    invoke-static {v10}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v12

    .line 74
    .local v12, "sin":F
    const/4 v13, 0x0

    .local v13, "i":I
    array-length v14, v2

    .local v14, "n":I
    :goto_0
    if-ge v13, v14, :cond_7

    .line 75
    aget v15, v2, v13

    sub-float/2addr v15, v6

    .line 76
    .local v15, "x":F
    add-int/lit8 v16, v13, 0x1

    aget v16, v2, v16

    sub-float v16, v16, v7

    .line 79
    .local v16, "y":F
    if-eqz v1, :cond_5

    .line 80
    mul-float/2addr v15, v8

    .line 81
    mul-float v16, v16, v9

    .line 85
    :cond_5
    const/16 v17, 0x0

    cmpl-float v17, v10, v17

    if-eqz v17, :cond_6

    .line 86
    move/from16 v17, v15

    .line 87
    .local v17, "oldX":F
    mul-float v18, v11, v15

    mul-float v19, v12, v16

    sub-float v15, v18, v19

    .line 88
    mul-float v18, v12, v17

    mul-float v19, v11, v16

    add-float v16, v18, v19

    .line 91
    .end local v17    # "oldX":F
    :cond_6
    add-float v17, v4, v15

    add-float v17, v17, v6

    aput v17, v3, v13

    .line 92
    add-int/lit8 v17, v13, 0x1

    add-float v18, v5, v16

    add-float v18, v18, v7

    aput v18, v3, v17

    .line 74
    .end local v15    # "x":F
    .end local v16    # "y":F
    add-int/lit8 v13, v13, 0x2

    goto :goto_0

    .line 94
    .end local v13    # "i":I
    .end local v14    # "n":I
    :cond_7
    return-object v3
.end method

.method public getVertices()[F
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/badlogic/gdx/math/Polygon;->localVertices:[F

    return-object v0
.end method

.method public getX()F
    .locals 1

    .line 220
    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .line 225
    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->y:F

    return v0
.end method

.method public rotate(F)V
    .locals 1
    .param p1, "degrees"    # F

    .line 137
    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->rotation:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Polygon;->rotation:F

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polygon;->dirty:Z

    .line 139
    return-void
.end method

.method public scale(F)V
    .locals 1
    .param p1, "amount"    # F

    .line 150
    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->scaleX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Polygon;->scaleX:F

    .line 151
    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->scaleY:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Polygon;->scaleY:F

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polygon;->dirty:Z

    .line 153
    return-void
.end method

.method public setOrigin(FF)V
    .locals 1
    .param p1, "originX"    # F
    .param p2, "originY"    # F

    .line 99
    iput p1, p0, Lcom/badlogic/gdx/math/Polygon;->originX:F

    .line 100
    iput p2, p0, Lcom/badlogic/gdx/math/Polygon;->originY:F

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polygon;->dirty:Z

    .line 102
    return-void
.end method

.method public setPosition(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 106
    iput p1, p0, Lcom/badlogic/gdx/math/Polygon;->x:F

    .line 107
    iput p2, p0, Lcom/badlogic/gdx/math/Polygon;->y:F

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polygon;->dirty:Z

    .line 109
    return-void
.end method

.method public setRotation(F)V
    .locals 1
    .param p1, "degrees"    # F

    .line 131
    iput p1, p0, Lcom/badlogic/gdx/math/Polygon;->rotation:F

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polygon;->dirty:Z

    .line 133
    return-void
.end method

.method public setScale(FF)V
    .locals 1
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F

    .line 143
    iput p1, p0, Lcom/badlogic/gdx/math/Polygon;->scaleX:F

    .line 144
    iput p2, p0, Lcom/badlogic/gdx/math/Polygon;->scaleY:F

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polygon;->dirty:Z

    .line 146
    return-void
.end method

.method public setVertices([F)V
    .locals 2
    .param p1, "vertices"    # [F

    .line 117
    array-length v0, p1

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    .line 118
    iput-object p1, p0, Lcom/badlogic/gdx/math/Polygon;->localVertices:[F

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polygon;->dirty:Z

    .line 120
    return-void

    .line 117
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "polygons must contain at least 3 points."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public translate(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 124
    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Polygon;->x:F

    .line 125
    iget v0, p0, Lcom/badlogic/gdx/math/Polygon;->y:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/badlogic/gdx/math/Polygon;->y:F

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polygon;->dirty:Z

    .line 127
    return-void
.end method
