.class public Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;
.super Ljava/lang/Object;
.source "AmbientCubemap.java"


# static fields
.field private static final NUM_VALUES:I = 0x12


# instance fields
.field public final data:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/16 v0, 0x12

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->data:[F

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;)V
    .locals 1
    .param p1, "copyFrom"    # Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;

    .line 43
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->data:[F

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;-><init>([F)V

    .line 44
    return-void
.end method

.method public constructor <init>([F)V
    .locals 3
    .param p1, "copyFrom"    # [F

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    array-length v0, p1

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 38
    array-length v0, p1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->data:[F

    .line 39
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    return-void

    .line 37
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Incorrect array size"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final clamp(F)F
    .locals 3
    .param p0, "v"    # F

    .line 27
    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    cmpl-float v0, p0, v2

    if-lez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    return v0
.end method


# virtual methods
.method public add(FFF)Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;
    .locals 4
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F

    .line 88
    const/4 v0, 0x0

    .local v0, "idx":I
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->data:[F

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 89
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "idx":I
    .local v2, "idx":I
    aget v3, v1, v0

    add-float/2addr v3, p1

    aput v3, v1, v0

    .line 90
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "idx":I
    .restart local v0    # "idx":I
    aget v3, v1, v2

    add-float/2addr v3, p2

    aput v3, v1, v2

    .line 91
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "idx":I
    .restart local v2    # "idx":I
    aget v3, v1, v0

    add-float/2addr v3, p3

    aput v3, v1, v0

    move v0, v2

    goto :goto_0

    .line 93
    .end local v2    # "idx":I
    :cond_0
    return-object p0
.end method

.method public add(FFFFFF)Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;
    .locals 14
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "z"    # F

    .line 101
    move-object v0, p0

    mul-float v1, p4, p4

    .local v1, "x2":F
    mul-float v2, p5, p5

    .local v2, "y2":F
    mul-float v3, p6, p6

    .line 102
    .local v3, "z2":F
    add-float v4, v1, v2

    add-float/2addr v4, v3

    .line 103
    .local v4, "d":F
    const/4 v5, 0x0

    cmpl-float v6, v4, v5

    if-nez v6, :cond_0

    return-object v0

    .line 104
    :cond_0
    const/high16 v6, 0x3f800000    # 1.0f

    div-float v7, v6, v4

    add-float/2addr v6, v4

    mul-float/2addr v7, v6

    .line 105
    .end local v4    # "d":F
    .local v7, "d":F
    mul-float v4, p1, v7

    .local v4, "rd":F
    mul-float v6, p2, v7

    .local v6, "gd":F
    mul-float v8, p3, v7

    .line 106
    .local v8, "bd":F
    cmpl-float v9, p4, v5

    if-lez v9, :cond_1

    const/4 v9, 0x0

    goto :goto_0

    :cond_1
    const/4 v9, 0x3

    .line 107
    .local v9, "idx":I
    :goto_0
    iget-object v10, v0, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->data:[F

    aget v11, v10, v9

    mul-float v12, v1, v4

    add-float/2addr v11, v12

    aput v11, v10, v9

    .line 108
    add-int/lit8 v11, v9, 0x1

    aget v12, v10, v11

    mul-float v13, v1, v6

    add-float/2addr v12, v13

    aput v12, v10, v11

    .line 109
    add-int/lit8 v11, v9, 0x2

    aget v12, v10, v11

    mul-float v13, v1, v8

    add-float/2addr v12, v13

    aput v12, v10, v11

    .line 110
    cmpl-float v10, p5, v5

    if-lez v10, :cond_2

    const/4 v10, 0x6

    goto :goto_1

    :cond_2
    const/16 v10, 0x9

    :goto_1
    move v9, v10

    .line 111
    iget-object v10, v0, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->data:[F

    aget v11, v10, v9

    mul-float v12, v2, v4

    add-float/2addr v11, v12

    aput v11, v10, v9

    .line 112
    add-int/lit8 v11, v9, 0x1

    aget v12, v10, v11

    mul-float v13, v2, v6

    add-float/2addr v12, v13

    aput v12, v10, v11

    .line 113
    add-int/lit8 v11, v9, 0x2

    aget v12, v10, v11

    mul-float v13, v2, v8

    add-float/2addr v12, v13

    aput v12, v10, v11

    .line 114
    cmpl-float v5, p6, v5

    if-lez v5, :cond_3

    const/16 v5, 0xc

    goto :goto_2

    :cond_3
    const/16 v5, 0xf

    .line 115
    .end local v9    # "idx":I
    .local v5, "idx":I
    :goto_2
    iget-object v9, v0, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->data:[F

    aget v10, v9, v5

    mul-float v11, v3, v4

    add-float/2addr v10, v11

    aput v10, v9, v5

    .line 116
    add-int/lit8 v10, v5, 0x1

    aget v11, v9, v10

    mul-float v12, v3, v6

    add-float/2addr v11, v12

    aput v11, v9, v10

    .line 117
    add-int/lit8 v10, v5, 0x2

    aget v11, v9, v10

    mul-float v12, v3, v8

    add-float/2addr v11, v12

    aput v11, v9, v10

    .line 118
    return-object v0
.end method

.method public add(FFFLcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;
    .locals 7
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "direction"    # Lcom/badlogic/gdx/math/Vector3;

    .line 126
    iget v4, p4, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v5, p4, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v6, p4, Lcom/badlogic/gdx/math/Vector3;->z:F

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->add(FFFFFF)Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;

    move-result-object v0

    return-object v0
.end method

.method public add(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;
    .locals 3
    .param p1, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .line 97
    iget v0, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v2, p1, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->add(FFF)Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;

    move-result-object v0

    return-object v0
.end method

.method public add(Lcom/badlogic/gdx/graphics/Color;FFF)Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;
    .locals 7
    .param p1, "color"    # Lcom/badlogic/gdx/graphics/Color;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    .line 130
    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, p1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, p1, Lcom/badlogic/gdx/graphics/Color;->b:F

    move-object v0, p0

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->add(FFFFFF)Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;

    move-result-object v0

    return-object v0
.end method

.method public add(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;
    .locals 7
    .param p1, "color"    # Lcom/badlogic/gdx/graphics/Color;
    .param p2, "direction"    # Lcom/badlogic/gdx/math/Vector3;

    .line 122
    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, p1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, p1, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v5, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v6, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->add(FFFFFF)Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;

    move-result-object v0

    return-object v0
.end method

.method public add(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;
    .locals 7
    .param p1, "color"    # Lcom/badlogic/gdx/graphics/Color;
    .param p2, "point"    # Lcom/badlogic/gdx/math/Vector3;
    .param p3, "target"    # Lcom/badlogic/gdx/math/Vector3;

    .line 134
    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, p1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, p1, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v0, p3, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v4, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float v4, v0, v4

    iget v0, p3, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v5, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float v5, v0, v5

    iget v0, p3, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v6, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float v6, v0, v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->add(FFFFFF)Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;

    move-result-object v0

    return-object v0
.end method

.method public add(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;
    .locals 9
    .param p1, "color"    # Lcom/badlogic/gdx/graphics/Color;
    .param p2, "point"    # Lcom/badlogic/gdx/math/Vector3;
    .param p3, "target"    # Lcom/badlogic/gdx/math/Vector3;
    .param p4, "intensity"    # F

    .line 138
    invoke-virtual {p3, p2}, Lcom/badlogic/gdx/math/Vector3;->dst(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    div-float v0, p4, v0

    .line 139
    .local v0, "t":F
    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float v3, v1, v0

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float v4, v1, v0

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float v5, v1, v0

    iget v1, p3, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float v6, v1, v2

    iget v1, p3, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float v7, v1, v2

    iget v1, p3, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float v8, v1, v2

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->add(FFFFFF)Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;

    move-result-object v1

    return-object v1
.end method

.method public clamp()Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;
    .locals 3

    .line 82
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->data:[F

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 83
    aget v2, v1, v0

    invoke-static {v2}, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->clamp(F)F

    move-result v2

    aput v2, v1, v0

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    .end local v0    # "i":I
    :cond_0
    return-object p0
.end method

.method public clear()Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;
    .locals 3

    .line 76
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->data:[F

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 77
    const/4 v2, 0x0

    aput v2, v1, v0

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    .end local v0    # "i":I
    :cond_0
    return-object p0
.end method

.method public getColor(Lcom/badlogic/gdx/graphics/Color;I)Lcom/badlogic/gdx/graphics/Color;
    .locals 4
    .param p1, "out"    # Lcom/badlogic/gdx/graphics/Color;
    .param p2, "side"    # I

    .line 71
    mul-int/lit8 p2, p2, 0x3

    .line 72
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->data:[F

    aget v1, v0, p2

    add-int/lit8 v2, p2, 0x1

    aget v2, v0, v2

    add-int/lit8 v3, p2, 0x2

    aget v0, v0, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1, v2, v0, v3}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    return-object v0
.end method

.method public set(FFF)Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;
    .locals 3
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F

    .line 61
    const/4 v0, 0x0

    .local v0, "idx":I
    :goto_0
    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->data:[F

    aput p1, v1, v0

    .line 63
    add-int/lit8 v2, v0, 0x1

    aput p2, v1, v2

    .line 64
    add-int/lit8 v2, v0, 0x2

    aput p3, v1, v2

    .line 65
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 67
    .end local v0    # "idx":I
    :cond_0
    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;
    .locals 3
    .param p1, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .line 57
    iget v0, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v2, p1, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->set(FFF)Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;

    move-result-object v0

    return-object v0
.end method

.method public set(Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;)Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;
    .locals 1
    .param p1, "other"    # Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;

    .line 53
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->data:[F

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->set([F)Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;

    move-result-object v0

    return-object v0
.end method

.method public set([F)Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;
    .locals 3
    .param p1, "values"    # [F

    .line 47
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->data:[F

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 48
    aget v2, p1, v0

    aput v2, v1, v0

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    .end local v0    # "i":I
    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 144
    const-string v0, ""

    .line 145
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->data:[F

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->data:[F

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->data:[F

    add-int/lit8 v5, v1, 0x1

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->data:[F

    add-int/lit8 v4, v1, 0x2

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    .line 148
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method
