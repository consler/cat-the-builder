.class public Lcom/badlogic/gdx/math/Polyline;
.super Ljava/lang/Object;
.source "Polyline.java"

# interfaces
.implements Lcom/badlogic/gdx/math/Shape2D;


# instance fields
.field private calculateLength:Z

.field private calculateScaledLength:Z

.field private dirty:Z

.field private length:F

.field private localVertices:[F

.field private originX:F

.field private originY:F

.field private rotation:F

.field private scaleX:F

.field private scaleY:F

.field private scaledLength:F

.field private worldVertices:[F

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/math/Polyline;->scaleX:F

    iput v0, p0, Lcom/badlogic/gdx/math/Polyline;->scaleY:F

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polyline;->calculateScaledLength:Z

    .line 29
    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polyline;->calculateLength:Z

    .line 30
    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polyline;->dirty:Z

    .line 33
    const/4 v0, 0x0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/math/Polyline;->localVertices:[F

    .line 34
    return-void
.end method

.method public constructor <init>([F)V
    .locals 2
    .param p1, "vertices"    # [F

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/math/Polyline;->scaleX:F

    iput v0, p0, Lcom/badlogic/gdx/math/Polyline;->scaleY:F

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polyline;->calculateScaledLength:Z

    .line 29
    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polyline;->calculateLength:Z

    .line 30
    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polyline;->dirty:Z

    .line 37
    array-length v0, p1

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 38
    iput-object p1, p0, Lcom/badlogic/gdx/math/Polyline;->localVertices:[F

    .line 39
    return-void

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "polylines must contain at least 2 points."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public calculateLength()V
    .locals 1

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polyline;->calculateLength:Z

    .line 191
    return-void
.end method

.method public calculateScaledLength()V
    .locals 1

    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polyline;->calculateScaledLength:Z

    .line 195
    return-void
.end method

.method public contains(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 214
    const/4 v0, 0x0

    return v0
.end method

.method public contains(Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 1
    .param p1, "point"    # Lcom/badlogic/gdx/math/Vector2;

    .line 209
    const/4 v0, 0x0

    return v0
.end method

.method public dirty()V
    .locals 1

    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polyline;->dirty:Z

    .line 199
    return-void
.end method

.method public getLength()F
    .locals 7

    .line 91
    iget-boolean v0, p0, Lcom/badlogic/gdx/math/Polyline;->calculateLength:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Polyline;->length:F

    return v0

    .line 92
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polyline;->calculateLength:Z

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/math/Polyline;->length:F

    .line 95
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/badlogic/gdx/math/Polyline;->localVertices:[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x2

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 96
    iget-object v2, p0, Lcom/badlogic/gdx/math/Polyline;->localVertices:[F

    add-int/lit8 v3, v0, 0x2

    aget v3, v2, v3

    aget v4, v2, v0

    sub-float/2addr v3, v4

    .line 97
    .local v3, "x":F
    add-int/lit8 v4, v0, 0x1

    aget v4, v2, v4

    add-int/lit8 v5, v0, 0x3

    aget v2, v2, v5

    sub-float/2addr v4, v2

    .line 98
    .local v4, "y":F
    iget v2, p0, Lcom/badlogic/gdx/math/Polyline;->length:F

    mul-float v5, v3, v3

    mul-float v6, v4, v4

    add-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v5, v5

    add-float/2addr v2, v5

    iput v2, p0, Lcom/badlogic/gdx/math/Polyline;->length:F

    .line 95
    .end local v3    # "x":F
    .end local v4    # "y":F
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 101
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/math/Polyline;->length:F

    return v0
.end method

.method public getOriginX()F
    .locals 1

    .line 128
    iget v0, p0, Lcom/badlogic/gdx/math/Polyline;->originX:F

    return v0
.end method

.method public getOriginY()F
    .locals 1

    .line 132
    iget v0, p0, Lcom/badlogic/gdx/math/Polyline;->originY:F

    return v0
.end method

.method public getRotation()F
    .locals 1

    .line 136
    iget v0, p0, Lcom/badlogic/gdx/math/Polyline;->rotation:F

    return v0
.end method

.method public getScaleX()F
    .locals 1

    .line 140
    iget v0, p0, Lcom/badlogic/gdx/math/Polyline;->scaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .line 144
    iget v0, p0, Lcom/badlogic/gdx/math/Polyline;->scaleY:F

    return v0
.end method

.method public getScaledLength()F
    .locals 7

    .line 106
    iget-boolean v0, p0, Lcom/badlogic/gdx/math/Polyline;->calculateScaledLength:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Polyline;->scaledLength:F

    return v0

    .line 107
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polyline;->calculateScaledLength:Z

    .line 109
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/math/Polyline;->scaledLength:F

    .line 110
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/badlogic/gdx/math/Polyline;->localVertices:[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x2

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 111
    iget-object v2, p0, Lcom/badlogic/gdx/math/Polyline;->localVertices:[F

    add-int/lit8 v3, v0, 0x2

    aget v3, v2, v3

    iget v4, p0, Lcom/badlogic/gdx/math/Polyline;->scaleX:F

    mul-float/2addr v3, v4

    aget v5, v2, v0

    mul-float/2addr v5, v4

    sub-float/2addr v3, v5

    .line 112
    .local v3, "x":F
    add-int/lit8 v4, v0, 0x1

    aget v4, v2, v4

    iget v5, p0, Lcom/badlogic/gdx/math/Polyline;->scaleY:F

    mul-float/2addr v4, v5

    add-int/lit8 v6, v0, 0x3

    aget v2, v2, v6

    mul-float/2addr v2, v5

    sub-float/2addr v4, v2

    .line 113
    .local v4, "y":F
    iget v2, p0, Lcom/badlogic/gdx/math/Polyline;->scaledLength:F

    mul-float v5, v3, v3

    mul-float v6, v4, v4

    add-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v5, v5

    add-float/2addr v2, v5

    iput v2, p0, Lcom/badlogic/gdx/math/Polyline;->scaledLength:F

    .line 110
    .end local v3    # "x":F
    .end local v4    # "y":F
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 116
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/math/Polyline;->scaledLength:F

    return v0
.end method

.method public getTransformedVertices()[F
    .locals 20

    .line 48
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/badlogic/gdx/math/Polyline;->dirty:Z

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/badlogic/gdx/math/Polyline;->worldVertices:[F

    return-object v1

    .line 49
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/badlogic/gdx/math/Polyline;->dirty:Z

    .line 51
    iget-object v2, v0, Lcom/badlogic/gdx/math/Polyline;->localVertices:[F

    .line 52
    .local v2, "localVertices":[F
    iget-object v3, v0, Lcom/badlogic/gdx/math/Polyline;->worldVertices:[F

    if-eqz v3, :cond_1

    array-length v3, v3

    array-length v4, v2

    if-ge v3, v4, :cond_2

    :cond_1
    array-length v3, v2

    new-array v3, v3, [F

    iput-object v3, v0, Lcom/badlogic/gdx/math/Polyline;->worldVertices:[F

    .line 54
    :cond_2
    iget-object v3, v0, Lcom/badlogic/gdx/math/Polyline;->worldVertices:[F

    .line 55
    .local v3, "worldVertices":[F
    iget v4, v0, Lcom/badlogic/gdx/math/Polyline;->x:F

    .line 56
    .local v4, "positionX":F
    iget v5, v0, Lcom/badlogic/gdx/math/Polyline;->y:F

    .line 57
    .local v5, "positionY":F
    iget v6, v0, Lcom/badlogic/gdx/math/Polyline;->originX:F

    .line 58
    .local v6, "originX":F
    iget v7, v0, Lcom/badlogic/gdx/math/Polyline;->originY:F

    .line 59
    .local v7, "originY":F
    iget v8, v0, Lcom/badlogic/gdx/math/Polyline;->scaleX:F

    .line 60
    .local v8, "scaleX":F
    iget v9, v0, Lcom/badlogic/gdx/math/Polyline;->scaleY:F

    .line 61
    .local v9, "scaleY":F
    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v11, v8, v10

    if-nez v11, :cond_3

    cmpl-float v10, v9, v10

    if-eqz v10, :cond_4

    :cond_3
    const/4 v1, 0x1

    .line 62
    .local v1, "scale":Z
    :cond_4
    iget v10, v0, Lcom/badlogic/gdx/math/Polyline;->rotation:F

    .line 63
    .local v10, "rotation":F
    invoke-static {v10}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v11

    .line 64
    .local v11, "cos":F
    invoke-static {v10}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v12

    .line 66
    .local v12, "sin":F
    const/4 v13, 0x0

    .local v13, "i":I
    array-length v14, v2

    .local v14, "n":I
    :goto_0
    if-ge v13, v14, :cond_7

    .line 67
    aget v15, v2, v13

    sub-float/2addr v15, v6

    .line 68
    .local v15, "x":F
    add-int/lit8 v16, v13, 0x1

    aget v16, v2, v16

    sub-float v16, v16, v7

    .line 71
    .local v16, "y":F
    if-eqz v1, :cond_5

    .line 72
    mul-float/2addr v15, v8

    .line 73
    mul-float v16, v16, v9

    .line 77
    :cond_5
    const/16 v17, 0x0

    cmpl-float v17, v10, v17

    if-eqz v17, :cond_6

    .line 78
    move/from16 v17, v15

    .line 79
    .local v17, "oldX":F
    mul-float v18, v11, v15

    mul-float v19, v12, v16

    sub-float v15, v18, v19

    .line 80
    mul-float v18, v12, v17

    mul-float v19, v11, v16

    add-float v16, v18, v19

    .line 83
    .end local v17    # "oldX":F
    :cond_6
    add-float v17, v4, v15

    add-float v17, v17, v6

    aput v17, v3, v13

    .line 84
    add-int/lit8 v17, v13, 0x1

    add-float v18, v5, v16

    add-float v18, v18, v7

    aput v18, v3, v17

    .line 66
    .end local v15    # "x":F
    .end local v16    # "y":F
    add-int/lit8 v13, v13, 0x2

    goto :goto_0

    .line 86
    .end local v13    # "i":I
    .end local v14    # "n":I
    :cond_7
    return-object v3
.end method

.method public getVertices()[F
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/badlogic/gdx/math/Polyline;->localVertices:[F

    return-object v0
.end method

.method public getX()F
    .locals 1

    .line 120
    iget v0, p0, Lcom/badlogic/gdx/math/Polyline;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .line 124
    iget v0, p0, Lcom/badlogic/gdx/math/Polyline;->y:F

    return v0
.end method

.method public rotate(F)V
    .locals 1
    .param p1, "degrees"    # F

    .line 171
    iget v0, p0, Lcom/badlogic/gdx/math/Polyline;->rotation:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Polyline;->rotation:F

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polyline;->dirty:Z

    .line 173
    return-void
.end method

.method public scale(F)V
    .locals 1
    .param p1, "amount"    # F

    .line 183
    iget v0, p0, Lcom/badlogic/gdx/math/Polyline;->scaleX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Polyline;->scaleX:F

    .line 184
    iget v0, p0, Lcom/badlogic/gdx/math/Polyline;->scaleY:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Polyline;->scaleY:F

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polyline;->dirty:Z

    .line 186
    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polyline;->calculateScaledLength:Z

    .line 187
    return-void
.end method

.method public setOrigin(FF)V
    .locals 1
    .param p1, "originX"    # F
    .param p2, "originY"    # F

    .line 148
    iput p1, p0, Lcom/badlogic/gdx/math/Polyline;->originX:F

    .line 149
    iput p2, p0, Lcom/badlogic/gdx/math/Polyline;->originY:F

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polyline;->dirty:Z

    .line 151
    return-void
.end method

.method public setPosition(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 154
    iput p1, p0, Lcom/badlogic/gdx/math/Polyline;->x:F

    .line 155
    iput p2, p0, Lcom/badlogic/gdx/math/Polyline;->y:F

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polyline;->dirty:Z

    .line 157
    return-void
.end method

.method public setRotation(F)V
    .locals 1
    .param p1, "degrees"    # F

    .line 166
    iput p1, p0, Lcom/badlogic/gdx/math/Polyline;->rotation:F

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polyline;->dirty:Z

    .line 168
    return-void
.end method

.method public setScale(FF)V
    .locals 1
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F

    .line 176
    iput p1, p0, Lcom/badlogic/gdx/math/Polyline;->scaleX:F

    .line 177
    iput p2, p0, Lcom/badlogic/gdx/math/Polyline;->scaleY:F

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polyline;->dirty:Z

    .line 179
    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polyline;->calculateScaledLength:Z

    .line 180
    return-void
.end method

.method public setVertices([F)V
    .locals 2
    .param p1, "vertices"    # [F

    .line 160
    array-length v0, p1

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 161
    iput-object p1, p0, Lcom/badlogic/gdx/math/Polyline;->localVertices:[F

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polyline;->dirty:Z

    .line 163
    return-void

    .line 160
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "polylines must contain at least 2 points."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public translate(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 202
    iget v0, p0, Lcom/badlogic/gdx/math/Polyline;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Polyline;->x:F

    .line 203
    iget v0, p0, Lcom/badlogic/gdx/math/Polyline;->y:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/badlogic/gdx/math/Polyline;->y:F

    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/math/Polyline;->dirty:Z

    .line 205
    return-void
.end method
