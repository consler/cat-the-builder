.class public Lcom/badlogic/gdx/math/ConvexHull;
.super Ljava/lang/Object;
.source "ConvexHull.java"


# instance fields
.field private final hull:Lcom/badlogic/gdx/utils/FloatArray;

.field private final indices:Lcom/badlogic/gdx/utils/IntArray;

.field private final originalIndices:Lcom/badlogic/gdx/utils/ShortArray;

.field private final quicksortStack:Lcom/badlogic/gdx/utils/IntArray;

.field private sortedPoints:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/ConvexHull;->quicksortStack:Lcom/badlogic/gdx/utils/IntArray;

    .line 28
    new-instance v0, Lcom/badlogic/gdx/utils/FloatArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/FloatArray;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/ConvexHull;->hull:Lcom/badlogic/gdx/utils/FloatArray;

    .line 29
    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/ConvexHull;->indices:Lcom/badlogic/gdx/utils/IntArray;

    .line 30
    new-instance v0, Lcom/badlogic/gdx/utils/ShortArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/badlogic/gdx/utils/ShortArray;-><init>(ZI)V

    iput-object v0, p0, Lcom/badlogic/gdx/math/ConvexHull;->originalIndices:Lcom/badlogic/gdx/utils/ShortArray;

    return-void
.end method

.method private ccw(FF)F
    .locals 9
    .param p1, "p3x"    # F
    .param p2, "p3y"    # F

    .line 155
    iget-object v0, p0, Lcom/badlogic/gdx/math/ConvexHull;->hull:Lcom/badlogic/gdx/utils/FloatArray;

    .line 156
    .local v0, "hull":Lcom/badlogic/gdx/utils/FloatArray;
    iget v1, v0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    .line 157
    .local v1, "size":I
    add-int/lit8 v2, v1, -0x4

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v2

    .line 158
    .local v2, "p1x":F
    add-int/lit8 v3, v1, -0x3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v3

    .line 159
    .local v3, "p1y":F
    add-int/lit8 v4, v1, -0x2

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v4

    .line 160
    .local v4, "p2x":F
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/FloatArray;->peek()F

    move-result v5

    .line 161
    .local v5, "p2y":F
    sub-float v6, v4, v2

    sub-float v7, p2, v3

    mul-float/2addr v6, v7

    sub-float v7, v5, v3

    sub-float v8, p1, v2

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    return v6
.end method

.method private quicksortPartition([FII)I
    .locals 7
    .param p1, "values"    # [F
    .param p2, "lower"    # I
    .param p3, "upper"    # I

    .line 191
    aget v0, p1, p2

    .line 192
    .local v0, "x":F
    add-int/lit8 v1, p2, 0x1

    aget v1, p1, v1

    .line 193
    .local v1, "y":F
    move v2, p3

    .line 194
    .local v2, "up":I
    move v3, p2

    .line 196
    .local v3, "down":I
    :goto_0
    if-ge v3, v2, :cond_4

    move v4, v3

    .line 197
    .end local v3    # "down":I
    .local v4, "down":I
    :goto_1
    if-ge v4, v2, :cond_0

    aget v3, p1, v4

    cmpg-float v3, v3, v0

    if-gtz v3, :cond_0

    .line 198
    add-int/lit8 v4, v4, 0x2

    goto :goto_1

    .line 199
    :cond_0
    :goto_2
    aget v3, p1, v2

    cmpl-float v3, v3, v0

    if-gtz v3, :cond_3

    aget v3, p1, v2

    cmpl-float v3, v3, v0

    if-nez v3, :cond_1

    add-int/lit8 v3, v2, 0x1

    aget v3, p1, v3

    cmpg-float v3, v3, v1

    if-gez v3, :cond_1

    goto :goto_3

    .line 201
    :cond_1
    if-ge v4, v2, :cond_2

    .line 202
    aget v3, p1, v4

    .line 203
    .local v3, "temp":F
    aget v5, p1, v2

    aput v5, p1, v4

    .line 204
    aput v3, p1, v2

    .line 206
    add-int/lit8 v5, v4, 0x1

    aget v3, p1, v5

    .line 207
    add-int/lit8 v5, v4, 0x1

    add-int/lit8 v6, v2, 0x1

    aget v6, p1, v6

    aput v6, p1, v5

    .line 208
    add-int/lit8 v5, v2, 0x1

    aput v3, p1, v5

    .line 196
    .end local v3    # "temp":F
    :cond_2
    move v3, v4

    goto :goto_0

    .line 200
    :cond_3
    :goto_3
    add-int/lit8 v2, v2, -0x2

    goto :goto_2

    .line 211
    .end local v4    # "down":I
    .local v3, "down":I
    :cond_4
    aget v4, p1, v2

    aput v4, p1, p2

    .line 212
    aput v0, p1, v2

    .line 214
    add-int/lit8 v4, p2, 0x1

    add-int/lit8 v5, v2, 0x1

    aget v5, p1, v5

    aput v5, p1, v4

    .line 215
    add-int/lit8 v4, v2, 0x1

    aput v1, p1, v4

    .line 217
    return v2
.end method

.method private quicksortPartitionWithIndices([FIIZ[S)I
    .locals 8
    .param p1, "values"    # [F
    .param p2, "lower"    # I
    .param p3, "upper"    # I
    .param p4, "yDown"    # Z
    .param p5, "originalIndices"    # [S

    .line 254
    aget v0, p1, p2

    .line 255
    .local v0, "x":F
    add-int/lit8 v1, p2, 0x1

    aget v1, p1, v1

    .line 256
    .local v1, "y":F
    move v2, p3

    .line 257
    .local v2, "up":I
    move v3, p2

    .line 260
    .local v3, "down":I
    :goto_0
    if-ge v3, v2, :cond_6

    move v4, v3

    .line 261
    .end local v3    # "down":I
    .local v4, "down":I
    :goto_1
    if-ge v4, v2, :cond_0

    aget v3, p1, v4

    cmpg-float v3, v3, v0

    if-gtz v3, :cond_0

    .line 262
    add-int/lit8 v4, v4, 0x2

    goto :goto_1

    .line 263
    :cond_0
    if-eqz p4, :cond_2

    .line 264
    :goto_2
    aget v3, p1, v2

    cmpl-float v3, v3, v0

    if-gtz v3, :cond_1

    aget v3, p1, v2

    cmpl-float v3, v3, v0

    if-nez v3, :cond_3

    add-int/lit8 v3, v2, 0x1

    aget v3, p1, v3

    cmpg-float v3, v3, v1

    if-gez v3, :cond_3

    .line 265
    :cond_1
    add-int/lit8 v2, v2, -0x2

    goto :goto_2

    .line 267
    :cond_2
    :goto_3
    aget v3, p1, v2

    cmpl-float v3, v3, v0

    if-gtz v3, :cond_5

    aget v3, p1, v2

    cmpl-float v3, v3, v0

    if-nez v3, :cond_3

    add-int/lit8 v3, v2, 0x1

    aget v3, p1, v3

    cmpl-float v3, v3, v1

    if-lez v3, :cond_3

    goto :goto_4

    .line 270
    :cond_3
    if-ge v4, v2, :cond_4

    .line 271
    aget v3, p1, v4

    .line 272
    .local v3, "temp":F
    aget v5, p1, v2

    aput v5, p1, v4

    .line 273
    aput v3, p1, v2

    .line 275
    add-int/lit8 v5, v4, 0x1

    aget v3, p1, v5

    .line 276
    add-int/lit8 v5, v4, 0x1

    add-int/lit8 v6, v2, 0x1

    aget v6, p1, v6

    aput v6, p1, v5

    .line 277
    add-int/lit8 v5, v2, 0x1

    aput v3, p1, v5

    .line 279
    div-int/lit8 v5, v4, 0x2

    aget-short v5, p5, v5

    .line 280
    .local v5, "tempIndex":S
    div-int/lit8 v6, v4, 0x2

    div-int/lit8 v7, v2, 0x2

    aget-short v7, p5, v7

    aput-short v7, p5, v6

    .line 281
    div-int/lit8 v6, v2, 0x2

    aput-short v5, p5, v6

    .line 260
    .end local v3    # "temp":F
    .end local v5    # "tempIndex":S
    :cond_4
    move v3, v4

    goto :goto_0

    .line 268
    :cond_5
    :goto_4
    add-int/lit8 v2, v2, -0x2

    goto :goto_3

    .line 284
    .end local v4    # "down":I
    .local v3, "down":I
    :cond_6
    aget v4, p1, v2

    aput v4, p1, p2

    .line 285
    aput v0, p1, v2

    .line 287
    add-int/lit8 v4, p2, 0x1

    add-int/lit8 v5, v2, 0x1

    aget v5, p1, v5

    aput v5, p1, v4

    .line 288
    add-int/lit8 v4, v2, 0x1

    aput v1, p1, v4

    .line 290
    div-int/lit8 v4, p2, 0x2

    aget-short v4, p5, v4

    .line 291
    .local v4, "tempIndex":S
    div-int/lit8 v5, p2, 0x2

    div-int/lit8 v6, v2, 0x2

    aget-short v6, p5, v6

    aput-short v6, p5, v5

    .line 292
    div-int/lit8 v5, v2, 0x2

    aput-short v4, p5, v5

    .line 294
    return v2
.end method

.method private sort([FI)V
    .locals 6
    .param p1, "values"    # [F
    .param p2, "count"    # I

    .line 167
    const/4 v0, 0x0

    .line 168
    .local v0, "lower":I
    add-int/lit8 v1, p2, -0x1

    .line 169
    .local v1, "upper":I
    iget-object v2, p0, Lcom/badlogic/gdx/math/ConvexHull;->quicksortStack:Lcom/badlogic/gdx/utils/IntArray;

    .line 170
    .local v2, "stack":Lcom/badlogic/gdx/utils/IntArray;
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 171
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 172
    :goto_0
    iget v3, v2, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-lez v3, :cond_3

    .line 173
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/IntArray;->pop()I

    move-result v1

    .line 174
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/IntArray;->pop()I

    move-result v0

    .line 175
    if-gt v1, v0, :cond_0

    goto :goto_0

    .line 176
    :cond_0
    invoke-direct {p0, p1, v0, v1}, Lcom/badlogic/gdx/math/ConvexHull;->quicksortPartition([FII)I

    move-result v3

    .line 177
    .local v3, "i":I
    sub-int v4, v3, v0

    sub-int v5, v1, v3

    if-le v4, v5, :cond_1

    .line 178
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 179
    add-int/lit8 v4, v3, -0x2

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 181
    :cond_1
    add-int/lit8 v4, v3, 0x2

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 182
    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 183
    sub-int v4, v1, v3

    sub-int v5, v3, v0

    if-lt v4, v5, :cond_2

    .line 184
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 185
    add-int/lit8 v4, v3, -0x2

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 187
    .end local v3    # "i":I
    :cond_2
    goto :goto_0

    .line 188
    :cond_3
    return-void
.end method

.method private sortWithIndices([FIZ)V
    .locals 11
    .param p1, "values"    # [F
    .param p2, "count"    # I
    .param p3, "yDown"    # Z

    .line 223
    div-int/lit8 v0, p2, 0x2

    .line 224
    .local v0, "pointCount":I
    iget-object v1, p0, Lcom/badlogic/gdx/math/ConvexHull;->originalIndices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/ShortArray;->clear()V

    .line 225
    iget-object v1, p0, Lcom/badlogic/gdx/math/ConvexHull;->originalIndices:Lcom/badlogic/gdx/utils/ShortArray;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/ShortArray;->ensureCapacity(I)[S

    .line 226
    iget-object v1, p0, Lcom/badlogic/gdx/math/ConvexHull;->originalIndices:Lcom/badlogic/gdx/utils/ShortArray;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 227
    .local v1, "originalIndicesArray":[S
    const/4 v2, 0x0

    .local v2, "i":S
    :goto_0
    if-ge v2, v0, :cond_0

    .line 228
    aput-short v2, v1, v2

    .line 227
    add-int/lit8 v3, v2, 0x1

    int-to-short v2, v3

    goto :goto_0

    .line 230
    .end local v2    # "i":S
    :cond_0
    const/4 v2, 0x0

    .line 231
    .local v2, "lower":I
    add-int/lit8 v3, p2, -0x1

    .line 232
    .local v3, "upper":I
    iget-object v8, p0, Lcom/badlogic/gdx/math/ConvexHull;->quicksortStack:Lcom/badlogic/gdx/utils/IntArray;

    .line 233
    .local v8, "stack":Lcom/badlogic/gdx/utils/IntArray;
    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 234
    add-int/lit8 v4, v3, -0x1

    invoke-virtual {v8, v4}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 235
    :goto_1
    iget v4, v8, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-lez v4, :cond_4

    .line 236
    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/IntArray;->pop()I

    move-result v9

    .line 237
    .end local v3    # "upper":I
    .local v9, "upper":I
    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/IntArray;->pop()I

    move-result v10

    .line 238
    .end local v2    # "lower":I
    .local v10, "lower":I
    if-gt v9, v10, :cond_1

    goto :goto_2

    .line 239
    :cond_1
    move-object v2, p0

    move-object v3, p1

    move v4, v10

    move v5, v9

    move v6, p3

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/badlogic/gdx/math/ConvexHull;->quicksortPartitionWithIndices([FIIZ[S)I

    move-result v2

    .line 240
    .local v2, "i":I
    sub-int v3, v2, v10

    sub-int v4, v9, v2

    if-le v3, v4, :cond_2

    .line 241
    invoke-virtual {v8, v10}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 242
    add-int/lit8 v3, v2, -0x2

    invoke-virtual {v8, v3}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 244
    :cond_2
    add-int/lit8 v3, v2, 0x2

    invoke-virtual {v8, v3}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 245
    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 246
    sub-int v3, v9, v2

    sub-int v4, v2, v10

    if-lt v3, v4, :cond_3

    .line 247
    invoke-virtual {v8, v10}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 248
    add-int/lit8 v3, v2, -0x2

    invoke-virtual {v8, v3}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 250
    .end local v2    # "i":I
    :cond_3
    nop

    .line 235
    :goto_2
    move v3, v9

    move v2, v10

    goto :goto_1

    .line 251
    .end local v9    # "upper":I
    .end local v10    # "lower":I
    .local v2, "lower":I
    .restart local v3    # "upper":I
    :cond_4
    return-void
.end method


# virtual methods
.method public computeIndices(Lcom/badlogic/gdx/utils/FloatArray;ZZ)Lcom/badlogic/gdx/utils/IntArray;
    .locals 6
    .param p1, "points"    # Lcom/badlogic/gdx/utils/FloatArray;
    .param p2, "sorted"    # Z
    .param p3, "yDown"    # Z

    .line 89
    iget-object v1, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v3, p1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    const/4 v2, 0x0

    move-object v0, p0

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/math/ConvexHull;->computeIndices([FIIZZ)Lcom/badlogic/gdx/utils/IntArray;

    move-result-object v0

    return-object v0
.end method

.method public computeIndices([FIIZZ)Lcom/badlogic/gdx/utils/IntArray;
    .locals 10
    .param p1, "points"    # [F
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "sorted"    # Z
    .param p5, "yDown"    # Z

    .line 99
    const/16 v0, 0x7fff

    if-gt p3, v0, :cond_8

    .line 100
    add-int v0, p2, p3

    .line 102
    .local v0, "end":I
    if-nez p4, :cond_2

    .line 103
    iget-object v1, p0, Lcom/badlogic/gdx/math/ConvexHull;->sortedPoints:[F

    if-eqz v1, :cond_0

    array-length v1, v1

    if-ge v1, p3, :cond_1

    :cond_0
    new-array v1, p3, [F

    iput-object v1, p0, Lcom/badlogic/gdx/math/ConvexHull;->sortedPoints:[F

    .line 104
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/math/ConvexHull;->sortedPoints:[F

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    iget-object p1, p0, Lcom/badlogic/gdx/math/ConvexHull;->sortedPoints:[F

    .line 106
    const/4 p2, 0x0

    .line 107
    invoke-direct {p0, p1, p3, p5}, Lcom/badlogic/gdx/math/ConvexHull;->sortWithIndices([FIZ)V

    .line 110
    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/math/ConvexHull;->indices:Lcom/badlogic/gdx/utils/IntArray;

    .line 111
    .local v1, "indices":Lcom/badlogic/gdx/utils/IntArray;
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/IntArray;->clear()V

    .line 113
    iget-object v2, p0, Lcom/badlogic/gdx/math/ConvexHull;->hull:Lcom/badlogic/gdx/utils/FloatArray;

    .line 114
    .local v2, "hull":Lcom/badlogic/gdx/utils/FloatArray;
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    .line 117
    move v3, p2

    .local v3, "i":I
    div-int/lit8 v4, v3, 0x2

    .local v4, "index":I
    :goto_0
    const/4 v5, 0x0

    if-ge v3, v0, :cond_4

    .line 118
    aget v6, p1, v3

    .line 119
    .local v6, "x":F
    add-int/lit8 v7, v3, 0x1

    aget v7, p1, v7

    .line 120
    .local v7, "y":F
    :goto_1
    iget v8, v2, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    const/4 v9, 0x4

    if-lt v8, v9, :cond_3

    invoke-direct {p0, v6, v7}, Lcom/badlogic/gdx/math/ConvexHull;->ccw(FF)F

    move-result v8

    cmpg-float v8, v8, v5

    if-gtz v8, :cond_3

    .line 121
    iget v8, v2, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    add-int/lit8 v8, v8, -0x2

    iput v8, v2, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    .line 122
    iget v8, v1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/lit8 v8, v8, -0x1

    iput v8, v1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    goto :goto_1

    .line 124
    :cond_3
    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 125
    invoke-virtual {v2, v7}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 126
    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 117
    .end local v6    # "x":F
    .end local v7    # "y":F
    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 130
    .end local v3    # "i":I
    .end local v4    # "index":I
    :cond_4
    add-int/lit8 v3, v0, -0x4

    .restart local v3    # "i":I
    div-int/lit8 v4, v3, 0x2

    .restart local v4    # "index":I
    iget v6, v2, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    add-int/lit8 v6, v6, 0x2

    .local v6, "t":I
    :goto_2
    if-lt v3, p2, :cond_6

    .line 131
    aget v7, p1, v3

    .line 132
    .local v7, "x":F
    add-int/lit8 v8, v3, 0x1

    aget v8, p1, v8

    .line 133
    .local v8, "y":F
    :goto_3
    iget v9, v2, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-lt v9, v6, :cond_5

    invoke-direct {p0, v7, v8}, Lcom/badlogic/gdx/math/ConvexHull;->ccw(FF)F

    move-result v9

    cmpg-float v9, v9, v5

    if-gtz v9, :cond_5

    .line 134
    iget v9, v2, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    add-int/lit8 v9, v9, -0x2

    iput v9, v2, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    .line 135
    iget v9, v1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    add-int/lit8 v9, v9, -0x1

    iput v9, v1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    goto :goto_3

    .line 137
    :cond_5
    invoke-virtual {v2, v7}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 138
    invoke-virtual {v2, v8}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 139
    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 130
    .end local v7    # "x":F
    .end local v8    # "y":F
    add-int/lit8 v3, v3, -0x2

    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 143
    .end local v3    # "i":I
    .end local v4    # "index":I
    .end local v6    # "t":I
    :cond_6
    if-nez p4, :cond_7

    .line 144
    iget-object v3, p0, Lcom/badlogic/gdx/math/ConvexHull;->originalIndices:Lcom/badlogic/gdx/utils/ShortArray;

    iget-object v3, v3, Lcom/badlogic/gdx/utils/ShortArray;->items:[S

    .line 145
    .local v3, "originalIndicesArray":[S
    iget-object v4, v1, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    .line 146
    .local v4, "indicesArray":[I
    const/4 v5, 0x0

    .local v5, "i":I
    iget v6, v1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    .local v6, "n":I
    :goto_4
    if-ge v5, v6, :cond_7

    .line 147
    aget v7, v4, v5

    aget-short v7, v3, v7

    aput v7, v4, v5

    .line 146
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 150
    .end local v3    # "originalIndicesArray":[S
    .end local v4    # "indicesArray":[I
    .end local v5    # "i":I
    .end local v6    # "n":I
    :cond_7
    return-object v1

    .line 99
    .end local v0    # "end":I
    .end local v1    # "indices":Lcom/badlogic/gdx/utils/IntArray;
    .end local v2    # "hull":Lcom/badlogic/gdx/utils/FloatArray;
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "count must be <= 32767"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public computeIndices([FZZ)Lcom/badlogic/gdx/utils/IntArray;
    .locals 6
    .param p1, "polygon"    # [F
    .param p2, "sorted"    # Z
    .param p3, "yDown"    # Z

    .line 94
    array-length v3, p1

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/math/ConvexHull;->computeIndices([FIIZZ)Lcom/badlogic/gdx/utils/IntArray;

    move-result-object v0

    return-object v0
.end method

.method public computePolygon(Lcom/badlogic/gdx/utils/FloatArray;Z)Lcom/badlogic/gdx/utils/FloatArray;
    .locals 3
    .param p1, "points"    # Lcom/badlogic/gdx/utils/FloatArray;
    .param p2, "sorted"    # Z

    .line 34
    iget-object v0, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v1, p1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1, p2}, Lcom/badlogic/gdx/math/ConvexHull;->computePolygon([FIIZ)Lcom/badlogic/gdx/utils/FloatArray;

    move-result-object v0

    return-object v0
.end method

.method public computePolygon([FIIZ)Lcom/badlogic/gdx/utils/FloatArray;
    .locals 8
    .param p1, "points"    # [F
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "sorted"    # Z

    .line 51
    add-int v0, p2, p3

    .line 53
    .local v0, "end":I
    if-nez p4, :cond_2

    .line 54
    iget-object v1, p0, Lcom/badlogic/gdx/math/ConvexHull;->sortedPoints:[F

    if-eqz v1, :cond_0

    array-length v1, v1

    if-ge v1, p3, :cond_1

    :cond_0
    new-array v1, p3, [F

    iput-object v1, p0, Lcom/badlogic/gdx/math/ConvexHull;->sortedPoints:[F

    .line 55
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/math/ConvexHull;->sortedPoints:[F

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    iget-object p1, p0, Lcom/badlogic/gdx/math/ConvexHull;->sortedPoints:[F

    .line 57
    const/4 p2, 0x0

    .line 58
    invoke-direct {p0, p1, p3}, Lcom/badlogic/gdx/math/ConvexHull;->sort([FI)V

    .line 61
    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/math/ConvexHull;->hull:Lcom/badlogic/gdx/utils/FloatArray;

    .line 62
    .local v1, "hull":Lcom/badlogic/gdx/utils/FloatArray;
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    .line 65
    move v2, p2

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x0

    if-ge v2, v0, :cond_4

    .line 66
    aget v4, p1, v2

    .line 67
    .local v4, "x":F
    add-int/lit8 v5, v2, 0x1

    aget v5, p1, v5

    .line 68
    .local v5, "y":F
    :goto_1
    iget v6, v1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    const/4 v7, 0x4

    if-lt v6, v7, :cond_3

    invoke-direct {p0, v4, v5}, Lcom/badlogic/gdx/math/ConvexHull;->ccw(FF)F

    move-result v6

    cmpg-float v6, v6, v3

    if-gtz v6, :cond_3

    .line 69
    iget v6, v1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    add-int/lit8 v6, v6, -0x2

    iput v6, v1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    goto :goto_1

    .line 70
    :cond_3
    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 71
    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 65
    .end local v4    # "x":F
    .end local v5    # "y":F
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 75
    .end local v2    # "i":I
    :cond_4
    add-int/lit8 v2, v0, -0x4

    .restart local v2    # "i":I
    iget v4, v1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    add-int/lit8 v4, v4, 0x2

    .local v4, "t":I
    :goto_2
    if-lt v2, p2, :cond_6

    .line 76
    aget v5, p1, v2

    .line 77
    .local v5, "x":F
    add-int/lit8 v6, v2, 0x1

    aget v6, p1, v6

    .line 78
    .local v6, "y":F
    :goto_3
    iget v7, v1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-lt v7, v4, :cond_5

    invoke-direct {p0, v5, v6}, Lcom/badlogic/gdx/math/ConvexHull;->ccw(FF)F

    move-result v7

    cmpg-float v7, v7, v3

    if-gtz v7, :cond_5

    .line 79
    iget v7, v1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    add-int/lit8 v7, v7, -0x2

    iput v7, v1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    goto :goto_3

    .line 80
    :cond_5
    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 81
    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 75
    .end local v5    # "x":F
    .end local v6    # "y":F
    add-int/lit8 v2, v2, -0x2

    goto :goto_2

    .line 84
    .end local v2    # "i":I
    .end local v4    # "t":I
    :cond_6
    return-object v1
.end method

.method public computePolygon([FZ)Lcom/badlogic/gdx/utils/FloatArray;
    .locals 2
    .param p1, "polygon"    # [F
    .param p2, "sorted"    # Z

    .line 39
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/badlogic/gdx/math/ConvexHull;->computePolygon([FIIZ)Lcom/badlogic/gdx/utils/FloatArray;

    move-result-object v0

    return-object v0
.end method
