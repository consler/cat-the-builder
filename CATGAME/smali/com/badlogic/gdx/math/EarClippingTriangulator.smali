.class public Lcom/badlogic/gdx/math/EarClippingTriangulator;
.super Ljava/lang/Object;
.source "EarClippingTriangulator.java"


# static fields
.field private static final CONCAVE:I = -0x1

.field private static final CONVEX:I = 0x1


# instance fields
.field private indices:[S

.field private final indicesArray:Lcom/badlogic/gdx/utils/ShortArray;

.field private final triangles:Lcom/badlogic/gdx/utils/ShortArray;

.field private vertexCount:I

.field private final vertexTypes:Lcom/badlogic/gdx/utils/IntArray;

.field private vertices:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/badlogic/gdx/utils/ShortArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ShortArray;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/EarClippingTriangulator;->indicesArray:Lcom/badlogic/gdx/utils/ShortArray;

    .line 50
    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/EarClippingTriangulator;->vertexTypes:Lcom/badlogic/gdx/utils/IntArray;

    .line 51
    new-instance v0, Lcom/badlogic/gdx/utils/ShortArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ShortArray;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/EarClippingTriangulator;->triangles:Lcom/badlogic/gdx/utils/ShortArray;

    return-void
.end method

.method private classifyVertex(I)I
    .locals 11
    .param p1, "index"    # I

    .line 124
    iget-object v0, p0, Lcom/badlogic/gdx/math/EarClippingTriangulator;->indices:[S

    .line 125
    .local v0, "indices":[S
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->previousIndex(I)I

    move-result v1

    aget-short v1, v0, v1

    mul-int/lit8 v1, v1, 0x2

    .line 126
    .local v1, "previous":I
    aget-short v2, v0, p1

    mul-int/lit8 v2, v2, 0x2

    .line 127
    .local v2, "current":I
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->nextIndex(I)I

    move-result v3

    aget-short v3, v0, v3

    mul-int/lit8 v3, v3, 0x2

    .line 128
    .local v3, "next":I
    iget-object v4, p0, Lcom/badlogic/gdx/math/EarClippingTriangulator;->vertices:[F

    .line 129
    .local v4, "vertices":[F
    aget v5, v4, v1

    add-int/lit8 v6, v1, 0x1

    aget v6, v4, v6

    aget v7, v4, v2

    add-int/lit8 v8, v2, 0x1

    aget v8, v4, v8

    aget v9, v4, v3

    add-int/lit8 v10, v3, 0x1

    aget v10, v4, v10

    invoke-static/range {v5 .. v10}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->computeSpannedAreaSign(FFFFFF)I

    move-result v5

    return v5
.end method

.method private static computeSpannedAreaSign(FFFFFF)I
    .locals 2
    .param p0, "p1x"    # F
    .param p1, "p1y"    # F
    .param p2, "p2x"    # F
    .param p3, "p2y"    # F
    .param p4, "p3x"    # F
    .param p5, "p3y"    # F

    .line 210
    sub-float v0, p5, p3

    mul-float/2addr v0, p0

    .line 211
    .local v0, "area":F
    sub-float v1, p1, p5

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    .line 212
    sub-float v1, p3, p1

    mul-float/2addr v1, p4

    add-float/2addr v0, v1

    .line 213
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v1

    float-to-int v1, v1

    return v1
.end method

.method private cutEarTip(I)V
    .locals 3
    .param p1, "earTipIndex"    # I

    .line 189
    iget-object v0, p0, Lcom/badlogic/gdx/math/EarClippingTriangulator;->indices:[S

    .line 190
    .local v0, "indices":[S
    iget-object v1, p0, Lcom/badlogic/gdx/math/EarClippingTriangulator;->triangles:Lcom/badlogic/gdx/utils/ShortArray;

    .line 192
    .local v1, "triangles":Lcom/badlogic/gdx/utils/ShortArray;
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->previousIndex(I)I

    move-result v2

    aget-short v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 193
    aget-short v2, v0, p1

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 194
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->nextIndex(I)I

    move-result v2

    aget-short v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 196
    iget-object v2, p0, Lcom/badlogic/gdx/math/EarClippingTriangulator;->indicesArray:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/utils/ShortArray;->removeIndex(I)S

    .line 197
    iget-object v2, p0, Lcom/badlogic/gdx/math/EarClippingTriangulator;->vertexTypes:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/utils/IntArray;->removeIndex(I)I

    .line 198
    iget v2, p0, Lcom/badlogic/gdx/math/EarClippingTriangulator;->vertexCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/math/EarClippingTriangulator;->vertexCount:I

    .line 199
    return-void
.end method

.method private findEarTip()I
    .locals 5

    .line 134
    iget v0, p0, Lcom/badlogic/gdx/math/EarClippingTriangulator;->vertexCount:I

    .line 135
    .local v0, "vertexCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 136
    invoke-direct {p0, v1}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->isEarTip(I)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    .line 135
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 145
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/math/EarClippingTriangulator;->vertexTypes:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 146
    .local v1, "vertexTypes":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 147
    aget v3, v1, v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    return v2

    .line 146
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 148
    .end local v2    # "i":I
    :cond_3
    const/4 v2, 0x0

    return v2
.end method

.method private isEarTip(I)Z
    .locals 26
    .param p1, "earTipIndex"    # I

    .line 152
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/math/EarClippingTriangulator;->vertexTypes:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 153
    .local v1, "vertexTypes":[I
    aget v2, v1, p1

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    return v3

    .line 155
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->previousIndex(I)I

    move-result v2

    .line 156
    .local v2, "previousIndex":I
    invoke-direct/range {p0 .. p1}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->nextIndex(I)I

    move-result v4

    .line 157
    .local v4, "nextIndex":I
    iget-object v5, v0, Lcom/badlogic/gdx/math/EarClippingTriangulator;->indices:[S

    .line 158
    .local v5, "indices":[S
    aget-short v6, v5, v2

    mul-int/lit8 v6, v6, 0x2

    .line 159
    .local v6, "p1":I
    aget-short v7, v5, p1

    mul-int/lit8 v7, v7, 0x2

    .line 160
    .local v7, "p2":I
    aget-short v8, v5, v4

    mul-int/lit8 v8, v8, 0x2

    .line 161
    .local v8, "p3":I
    iget-object v9, v0, Lcom/badlogic/gdx/math/EarClippingTriangulator;->vertices:[F

    .line 162
    .local v9, "vertices":[F
    aget v16, v9, v6

    .local v16, "p1x":F
    add-int/lit8 v10, v6, 0x1

    aget v17, v9, v10

    .line 163
    .local v17, "p1y":F
    aget v18, v9, v7

    .local v18, "p2x":F
    add-int/lit8 v10, v7, 0x1

    aget v19, v9, v10

    .line 164
    .local v19, "p2y":F
    aget v20, v9, v8

    .local v20, "p3x":F
    add-int/lit8 v10, v8, 0x1

    aget v21, v9, v10

    .line 168
    .local v21, "p3y":F
    invoke-direct {v0, v4}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->nextIndex(I)I

    move-result v10

    move v15, v10

    .local v15, "i":I
    :goto_0
    const/4 v10, 0x1

    if-eq v15, v2, :cond_3

    .line 171
    aget v11, v1, v15

    if-eq v11, v10, :cond_1

    .line 172
    aget-short v10, v5, v15

    mul-int/lit8 v22, v10, 0x2

    .line 173
    .local v22, "v":I
    aget v23, v9, v22

    .line 174
    .local v23, "vx":F
    add-int/lit8 v10, v22, 0x1

    aget v24, v9, v10

    .line 178
    .local v24, "vy":F
    move/from16 v10, v20

    move/from16 v11, v21

    move/from16 v12, v16

    move/from16 v13, v17

    move/from16 v14, v23

    move/from16 v25, v15

    .end local v15    # "i":I
    .local v25, "i":I
    move/from16 v15, v24

    invoke-static/range {v10 .. v15}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->computeSpannedAreaSign(FFFFFF)I

    move-result v10

    if-ltz v10, :cond_2

    .line 179
    move/from16 v10, v16

    move/from16 v11, v17

    move/from16 v12, v18

    move/from16 v13, v19

    move/from16 v14, v23

    move/from16 v15, v24

    invoke-static/range {v10 .. v15}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->computeSpannedAreaSign(FFFFFF)I

    move-result v10

    if-ltz v10, :cond_2

    .line 180
    move/from16 v10, v18

    move/from16 v11, v19

    move/from16 v12, v20

    move/from16 v13, v21

    move/from16 v14, v23

    move/from16 v15, v24

    invoke-static/range {v10 .. v15}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->computeSpannedAreaSign(FFFFFF)I

    move-result v10

    if-ltz v10, :cond_2

    return v3

    .line 171
    .end local v22    # "v":I
    .end local v23    # "vx":F
    .end local v24    # "vy":F
    .end local v25    # "i":I
    .restart local v15    # "i":I
    :cond_1
    move/from16 v25, v15

    .line 168
    .end local v15    # "i":I
    .restart local v25    # "i":I
    :cond_2
    move/from16 v11, v25

    .end local v25    # "i":I
    .local v11, "i":I
    invoke-direct {v0, v11}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->nextIndex(I)I

    move-result v15

    .end local v11    # "i":I
    .restart local v15    # "i":I
    goto :goto_0

    .line 185
    .end local v15    # "i":I
    :cond_3
    return v10
.end method

.method private nextIndex(I)I
    .locals 2
    .param p1, "index"    # I

    .line 206
    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lcom/badlogic/gdx/math/EarClippingTriangulator;->vertexCount:I

    rem-int/2addr v0, v1

    return v0
.end method

.method private previousIndex(I)I
    .locals 1
    .param p1, "index"    # I

    .line 202
    if-nez p1, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/EarClippingTriangulator;->vertexCount:I

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private triangulate()V
    .locals 5

    .line 100
    iget-object v0, p0, Lcom/badlogic/gdx/math/EarClippingTriangulator;->vertexTypes:Lcom/badlogic/gdx/utils/IntArray;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 102
    .local v0, "vertexTypes":[I
    :goto_0
    iget v1, p0, Lcom/badlogic/gdx/math/EarClippingTriangulator;->vertexCount:I

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-le v1, v3, :cond_1

    .line 103
    invoke-direct {p0}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->findEarTip()I

    move-result v1

    .line 104
    .local v1, "earTipIndex":I
    invoke-direct {p0, v1}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->cutEarTip(I)V

    .line 107
    invoke-direct {p0, v1}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->previousIndex(I)I

    move-result v3

    .line 108
    .local v3, "previousIndex":I
    iget v4, p0, Lcom/badlogic/gdx/math/EarClippingTriangulator;->vertexCount:I

    if-ne v1, v4, :cond_0

    goto :goto_1

    :cond_0
    move v2, v1

    .line 109
    .local v2, "nextIndex":I
    :goto_1
    invoke-direct {p0, v3}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->classifyVertex(I)I

    move-result v4

    aput v4, v0, v3

    .line 110
    invoke-direct {p0, v2}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->classifyVertex(I)I

    move-result v4

    aput v4, v0, v2

    .line 111
    .end local v1    # "earTipIndex":I
    .end local v2    # "nextIndex":I
    .end local v3    # "previousIndex":I
    goto :goto_0

    .line 113
    :cond_1
    if-ne v1, v3, :cond_2

    .line 114
    iget-object v1, p0, Lcom/badlogic/gdx/math/EarClippingTriangulator;->triangles:Lcom/badlogic/gdx/utils/ShortArray;

    .line 115
    .local v1, "triangles":Lcom/badlogic/gdx/utils/ShortArray;
    iget-object v3, p0, Lcom/badlogic/gdx/math/EarClippingTriangulator;->indices:[S

    .line 116
    .local v3, "indices":[S
    aget-short v2, v3, v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 117
    const/4 v2, 0x1

    aget-short v2, v3, v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 118
    const/4 v2, 0x2

    aget-short v2, v3, v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/ShortArray;->add(S)V

    .line 120
    .end local v1    # "triangles":Lcom/badlogic/gdx/utils/ShortArray;
    .end local v3    # "indices":[S
    :cond_2
    return-void
.end method


# virtual methods
.method public computeTriangles(Lcom/badlogic/gdx/utils/FloatArray;)Lcom/badlogic/gdx/utils/ShortArray;
    .locals 3
    .param p1, "vertices"    # Lcom/badlogic/gdx/utils/FloatArray;

    .line 55
    iget-object v0, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v1, p1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->computeTriangles([FII)Lcom/badlogic/gdx/utils/ShortArray;

    move-result-object v0

    return-object v0
.end method

.method public computeTriangles([F)Lcom/badlogic/gdx/utils/ShortArray;
    .locals 2
    .param p1, "vertices"    # [F

    .line 60
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->computeTriangles([FII)Lcom/badlogic/gdx/utils/ShortArray;

    move-result-object v0

    return-object v0
.end method

.method public computeTriangles([FII)Lcom/badlogic/gdx/utils/ShortArray;
    .locals 8
    .param p1, "vertices"    # [F
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .line 68
    iput-object p1, p0, Lcom/badlogic/gdx/math/EarClippingTriangulator;->vertices:[F

    .line 69
    div-int/lit8 v0, p3, 0x2

    iput v0, p0, Lcom/badlogic/gdx/math/EarClippingTriangulator;->vertexCount:I

    .line 70
    .local v0, "vertexCount":I
    div-int/lit8 v1, p2, 0x2

    .line 72
    .local v1, "vertexOffset":I
    iget-object v2, p0, Lcom/badlogic/gdx/math/EarClippingTriangulator;->indicesArray:Lcom/badlogic/gdx/utils/ShortArray;

    .line 73
    .local v2, "indicesArray":Lcom/badlogic/gdx/utils/ShortArray;
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/ShortArray;->clear()V

    .line 74
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/ShortArray;->ensureCapacity(I)[S

    .line 75
    iput v0, v2, Lcom/badlogic/gdx/utils/ShortArray;->size:I

    .line 76
    iget-object v3, v2, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    iput-object v3, p0, Lcom/badlogic/gdx/math/EarClippingTriangulator;->indices:[S

    .line 77
    .local v3, "indices":[S
    invoke-static {p1, p2, p3}, Lcom/badlogic/gdx/math/GeometryUtils;->isClockwise([FII)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 78
    const/4 v4, 0x0

    .local v4, "i":S
    :goto_0
    if-ge v4, v0, :cond_0

    .line 79
    add-int v5, v1, v4

    int-to-short v5, v5

    aput-short v5, v3, v4

    .line 78
    add-int/lit8 v5, v4, 0x1

    int-to-short v4, v5

    goto :goto_0

    .end local v4    # "i":S
    :cond_0
    goto :goto_2

    .line 81
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    add-int/lit8 v5, v0, -0x1

    .local v5, "n":I
    :goto_1
    if-ge v4, v0, :cond_2

    .line 82
    add-int v6, v1, v5

    sub-int/2addr v6, v4

    int-to-short v6, v6

    aput-short v6, v3, v4

    .line 81
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 85
    .end local v4    # "i":I
    .end local v5    # "n":I
    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/badlogic/gdx/math/EarClippingTriangulator;->vertexTypes:Lcom/badlogic/gdx/utils/IntArray;

    .line 86
    .local v4, "vertexTypes":Lcom/badlogic/gdx/utils/IntArray;
    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/IntArray;->clear()V

    .line 87
    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/utils/IntArray;->ensureCapacity(I)[I

    .line 88
    const/4 v5, 0x0

    .local v5, "i":I
    move v6, v0

    .local v6, "n":I
    :goto_3
    if-ge v5, v6, :cond_3

    .line 89
    invoke-direct {p0, v5}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->classifyVertex(I)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 88
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 92
    .end local v5    # "i":I
    .end local v6    # "n":I
    :cond_3
    iget-object v5, p0, Lcom/badlogic/gdx/math/EarClippingTriangulator;->triangles:Lcom/badlogic/gdx/utils/ShortArray;

    .line 93
    .local v5, "triangles":Lcom/badlogic/gdx/utils/ShortArray;
    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/ShortArray;->clear()V

    .line 94
    const/4 v6, 0x0

    add-int/lit8 v7, v0, -0x2

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    mul-int/lit8 v6, v6, 0x3

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/ShortArray;->ensureCapacity(I)[S

    .line 95
    invoke-direct {p0}, Lcom/badlogic/gdx/math/EarClippingTriangulator;->triangulate()V

    .line 96
    return-object v5
.end method
