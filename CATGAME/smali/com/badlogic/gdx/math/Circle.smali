.class public Lcom/badlogic/gdx/math/Circle;
.super Ljava/lang/Object;
.source "Circle.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/badlogic/gdx/math/Shape2D;


# instance fields
.field public radius:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "radius"    # F

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    .line 38
    iput p2, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    .line 39
    iput p3, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Circle;)V
    .locals 1
    .param p1, "circle"    # Lcom/badlogic/gdx/math/Circle;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iget v0, p1, Lcom/badlogic/gdx/math/Circle;->x:F

    iput v0, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    .line 57
    iget v0, p1, Lcom/badlogic/gdx/math/Circle;->y:F

    iput v0, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    .line 58
    iget v0, p1, Lcom/badlogic/gdx/math/Circle;->radius:F

    iput v0, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Vector2;F)V
    .locals 1
    .param p1, "position"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "radius"    # F

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v0, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    .line 48
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput v0, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    .line 49
    iput p2, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)V
    .locals 3
    .param p1, "center"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "edge"    # Lcom/badlogic/gdx/math/Vector2;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v0, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    .line 67
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput v0, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    .line 68
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v0, v1

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->len(FF)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    .line 69
    return-void
.end method


# virtual methods
.method public area()F
    .locals 2

    .line 202
    iget v0, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    mul-float/2addr v0, v0

    const v1, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v0, v1

    return v0
.end method

.method public circumference()F
    .locals 2

    .line 197
    iget v0, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    const v1, 0x40c90fdb

    mul-float/2addr v0, v1

    return v0
.end method

.method public contains(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 151
    iget v0, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    sub-float/2addr v0, p1

    .line 152
    .end local p1    # "x":F
    .local v0, "x":F
    iget p1, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    sub-float/2addr p1, p2

    .line 153
    .end local p2    # "y":F
    .local p1, "y":F
    mul-float p2, v0, v0

    mul-float v1, p1, p1

    add-float/2addr p2, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    mul-float/2addr v1, v1

    cmpg-float p2, p2, v1

    if-gtz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method public contains(Lcom/badlogic/gdx/math/Circle;)Z
    .locals 8
    .param p1, "c"    # Lcom/badlogic/gdx/math/Circle;

    .line 170
    iget v0, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    iget v1, p1, Lcom/badlogic/gdx/math/Circle;->radius:F

    sub-float v2, v0, v1

    .line 171
    .local v2, "radiusDiff":F
    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    const/4 v4, 0x0

    if-gez v3, :cond_0

    return v4

    .line 172
    :cond_0
    iget v3, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    iget v5, p1, Lcom/badlogic/gdx/math/Circle;->x:F

    sub-float/2addr v3, v5

    .line 173
    .local v3, "dx":F
    iget v5, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    iget v6, p1, Lcom/badlogic/gdx/math/Circle;->y:F

    sub-float/2addr v5, v6

    .line 174
    .local v5, "dy":F
    mul-float v6, v3, v3

    mul-float v7, v5, v5

    add-float/2addr v6, v7

    .line 175
    .local v6, "dst":F
    add-float/2addr v0, v1

    .line 176
    .local v0, "radiusSum":F
    mul-float v1, v2, v2

    cmpg-float v1, v1, v6

    if-ltz v1, :cond_1

    mul-float v1, v0, v0

    cmpg-float v1, v6, v1

    if-gez v1, :cond_1

    const/4 v4, 0x1

    :cond_1
    return v4
.end method

.method public contains(Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 4
    .param p1, "point"    # Lcom/badlogic/gdx/math/Vector2;

    .line 162
    iget v0, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v0, v1

    .line 163
    .local v0, "dx":F
    iget v1, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v1, v2

    .line 164
    .local v1, "dy":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    mul-float/2addr v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 207
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 208
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 209
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/badlogic/gdx/math/Circle;

    .line 210
    .local v2, "c":Lcom/badlogic/gdx/math/Circle;
    iget v3, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    iget v4, v2, Lcom/badlogic/gdx/math/Circle;->x:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    iget v3, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    iget v4, v2, Lcom/badlogic/gdx/math/Circle;->y:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    iget v3, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    iget v4, v2, Lcom/badlogic/gdx/math/Circle;->radius:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 208
    .end local v2    # "c":Lcom/badlogic/gdx/math/Circle;
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 215
    const/16 v0, 0x29

    .line 216
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 217
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x29

    iget v3, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v3

    add-int/2addr v2, v3

    .line 218
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x29

    iget v3, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v3

    add-int/2addr v1, v3

    .line 219
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x29

    iget v3, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v3

    add-int/2addr v2, v3

    .line 220
    .end local v1    # "result":I
    .restart local v2    # "result":I
    return v2
.end method

.method public overlaps(Lcom/badlogic/gdx/math/Circle;)Z
    .locals 5
    .param p1, "c"    # Lcom/badlogic/gdx/math/Circle;

    .line 182
    iget v0, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Circle;->x:F

    sub-float/2addr v0, v1

    .line 183
    .local v0, "dx":F
    iget v1, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Circle;->y:F

    sub-float/2addr v1, v2

    .line 184
    .local v1, "dy":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    .line 185
    .local v2, "distance":F
    iget v3, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    iget v4, p1, Lcom/badlogic/gdx/math/Circle;->radius:F

    add-float/2addr v3, v4

    .line 186
    .local v3, "radiusSum":F
    mul-float v4, v3, v3

    cmpg-float v4, v2, v4

    if-gez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return v4
.end method

.method public set(FFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "radius"    # F

    .line 77
    iput p1, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    .line 78
    iput p2, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    .line 79
    iput p3, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    .line 80
    return-void
.end method

.method public set(Lcom/badlogic/gdx/math/Circle;)V
    .locals 1
    .param p1, "circle"    # Lcom/badlogic/gdx/math/Circle;

    .line 96
    iget v0, p1, Lcom/badlogic/gdx/math/Circle;->x:F

    iput v0, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    .line 97
    iget v0, p1, Lcom/badlogic/gdx/math/Circle;->y:F

    iput v0, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    .line 98
    iget v0, p1, Lcom/badlogic/gdx/math/Circle;->radius:F

    iput v0, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    .line 99
    return-void
.end method

.method public set(Lcom/badlogic/gdx/math/Vector2;F)V
    .locals 1
    .param p1, "position"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "radius"    # F

    .line 87
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v0, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    .line 88
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput v0, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    .line 89
    iput p2, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    .line 90
    return-void
.end method

.method public set(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)V
    .locals 3
    .param p1, "center"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "edge"    # Lcom/badlogic/gdx/math/Vector2;

    .line 106
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v0, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    .line 107
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput v0, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    .line 108
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v0, v1

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->len(FF)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    .line 109
    return-void
.end method

.method public setPosition(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 122
    iput p1, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    .line 123
    iput p2, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    .line 124
    return-void
.end method

.method public setPosition(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 1
    .param p1, "position"    # Lcom/badlogic/gdx/math/Vector2;

    .line 114
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v0, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    .line 115
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput v0, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    .line 116
    return-void
.end method

.method public setRadius(F)V
    .locals 0
    .param p1, "radius"    # F

    .line 141
    iput p1, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    .line 142
    return-void
.end method

.method public setX(F)V
    .locals 0
    .param p1, "x"    # F

    .line 129
    iput p1, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    .line 130
    return-void
.end method

.method public setY(F)V
    .locals 0
    .param p1, "y"    # F

    .line 135
    iput p1, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    .line 136
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
