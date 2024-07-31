.class public final Lcom/badlogic/gdx/math/GeometryUtils;
.super Ljava/lang/Object;
.source "GeometryUtils.java"


# static fields
.field private static final tmp1:Lcom/badlogic/gdx/math/Vector2;

.field private static final tmp2:Lcom/badlogic/gdx/math/Vector2;

.field private static final tmp3:Lcom/badlogic/gdx/math/Vector2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/GeometryUtils;->tmp1:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/GeometryUtils;->tmp2:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/GeometryUtils;->tmp3:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static barycoordInsideTriangle(Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 2
    .param p0, "barycentric"    # Lcom/badlogic/gdx/math/Vector2;

    .line 54
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static colinear(FFFFFF)Z
    .locals 7
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "x2"    # F
    .param p3, "y2"    # F
    .param p4, "x3"    # F
    .param p5, "y3"    # F

    .line 100
    sub-float v0, p2, p0

    .local v0, "dx21":F
    sub-float v1, p3, p1

    .line 101
    .local v1, "dy21":F
    sub-float v2, p4, p2

    .local v2, "dx32":F
    sub-float v3, p5, p3

    .line 102
    .local v3, "dy32":F
    mul-float v4, v2, v1

    mul-float v5, v0, v3

    sub-float/2addr v4, v5

    .line 103
    .local v4, "det":F
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x358637bd    # 1.0E-6f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    return v5
.end method

.method public static ensureCCW([F)V
    .locals 2
    .param p0, "polygon"    # [F

    .line 222
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/badlogic/gdx/math/GeometryUtils;->ensureCCW([FII)V

    .line 223
    return-void
.end method

.method public static ensureCCW([FII)V
    .locals 8
    .param p0, "polygon"    # [F
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .line 226
    invoke-static {p0, p1, p2}, Lcom/badlogic/gdx/math/GeometryUtils;->isClockwise([FII)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 227
    :cond_0
    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x2

    .line 228
    .local v0, "lastX":I
    move v1, p1

    .local v1, "i":I
    div-int/lit8 v2, p2, 0x2

    add-int/2addr v2, p1

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 229
    sub-int v3, v0, v1

    .line 230
    .local v3, "other":I
    aget v4, p0, v1

    .line 231
    .local v4, "x":F
    add-int/lit8 v5, v1, 0x1

    aget v5, p0, v5

    .line 232
    .local v5, "y":F
    aget v6, p0, v3

    aput v6, p0, v1

    .line 233
    add-int/lit8 v6, v1, 0x1

    add-int/lit8 v7, v3, 0x1

    aget v7, p0, v7

    aput v7, p0, v6

    .line 234
    aput v4, p0, v3

    .line 235
    add-int/lit8 v6, v3, 0x1

    aput v5, p0, v6

    .line 228
    .end local v3    # "other":I
    .end local v4    # "x":F
    .end local v5    # "y":F
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 237
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    return-void
.end method

.method public static fromBarycoord(Lcom/badlogic/gdx/math/Vector2;FFF)F
    .locals 3
    .param p0, "barycentric"    # Lcom/badlogic/gdx/math/Vector2;
    .param p1, "a"    # F
    .param p2, "b"    # F
    .param p3, "c"    # F

    .line 69
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v1, v0

    .line 70
    .local v1, "u":F
    mul-float v0, v1, p1

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v2, p2

    add-float/2addr v0, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v2, p3

    add-float/2addr v0, v2

    return v0
.end method

.method public static fromBarycoord(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 4
    .param p0, "barycentric"    # Lcom/badlogic/gdx/math/Vector2;
    .param p1, "a"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "b"    # Lcom/badlogic/gdx/math/Vector2;
    .param p3, "c"    # Lcom/badlogic/gdx/math/Vector2;
    .param p4, "interpolatedOut"    # Lcom/badlogic/gdx/math/Vector2;

    .line 60
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v1, v0

    .line 61
    .local v1, "u":F
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v0, v1

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v3, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    iput v0, p4, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 62
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v0, v1

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v3, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    iput v0, p4, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 63
    return-object p4
.end method

.method public static isClockwise([FII)Z
    .locals 10
    .param p0, "polygon"    # [F
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .line 240
    const/4 v0, 0x0

    const/4 v1, 0x2

    if-gt p2, v1, :cond_0

    return v0

    .line 241
    :cond_0
    const/4 v2, 0x0

    .line 242
    .local v2, "area":F
    add-int v3, p1, p2

    sub-int/2addr v3, v1

    .line 243
    .local v3, "last":I
    aget v1, p0, v3

    .local v1, "x1":F
    add-int/lit8 v4, v3, 0x1

    aget v4, p0, v4

    .line 244
    .local v4, "y1":F
    move v5, p1

    .local v5, "i":I
    :goto_0
    if-gt v5, v3, :cond_1

    .line 245
    aget v6, p0, v5

    .local v6, "x2":F
    add-int/lit8 v7, v5, 0x1

    aget v7, p0, v7

    .line 246
    .local v7, "y2":F
    mul-float v8, v1, v7

    mul-float v9, v6, v4

    sub-float/2addr v8, v9

    add-float/2addr v2, v8

    .line 247
    move v1, v6

    .line 248
    move v4, v7

    .line 244
    .end local v6    # "x2":F
    .end local v7    # "y2":F
    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    .line 250
    .end local v5    # "i":I
    :cond_1
    const/4 v5, 0x0

    cmpg-float v5, v2, v5

    if-gez v5, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static lowestPositiveRoot(FFF)F
    .locals 8
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F

    .line 80
    mul-float v0, p1, p1

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v1, p0

    mul-float/2addr v1, p2

    sub-float/2addr v0, v1

    .line 81
    .local v0, "det":F
    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    const/high16 v3, 0x7fc00000    # Float.NaN

    if-gez v2, :cond_0

    return v3

    .line 83
    :cond_0
    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v2, v4

    .line 84
    .local v2, "sqrtD":F
    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v5, p0

    div-float/2addr v4, v5

    .line 85
    .local v4, "invA":F
    neg-float v5, p1

    sub-float/2addr v5, v2

    mul-float/2addr v5, v4

    .line 86
    .local v5, "r1":F
    neg-float v6, p1

    add-float/2addr v6, v2

    mul-float/2addr v6, v4

    .line 88
    .local v6, "r2":F
    cmpl-float v7, v5, v6

    if-lez v7, :cond_1

    .line 89
    move v7, v6

    .line 90
    .local v7, "tmp":F
    move v6, v5

    .line 91
    move v5, v7

    .line 94
    .end local v7    # "tmp":F
    :cond_1
    cmpl-float v7, v5, v1

    if-lez v7, :cond_2

    return v5

    .line 95
    :cond_2
    cmpl-float v1, v6, v1

    if-lez v1, :cond_3

    return v6

    .line 96
    :cond_3
    return v3
.end method

.method public static polygonArea([FII)F
    .locals 9
    .param p0, "polygon"    # [F
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .line 209
    const/4 v0, 0x0

    .line 210
    .local v0, "area":F
    add-int v1, p1, p2

    add-int/lit8 v1, v1, -0x2

    .line 211
    .local v1, "last":I
    aget v2, p0, v1

    .local v2, "x1":F
    add-int/lit8 v3, v1, 0x1

    aget v3, p0, v3

    .line 212
    .local v3, "y1":F
    move v4, p1

    .local v4, "i":I
    :goto_0
    if-gt v4, v1, :cond_0

    .line 213
    aget v5, p0, v4

    .local v5, "x2":F
    add-int/lit8 v6, v4, 0x1

    aget v6, p0, v6

    .line 214
    .local v6, "y2":F
    mul-float v7, v2, v6

    mul-float v8, v5, v3

    sub-float/2addr v7, v8

    add-float/2addr v0, v7

    .line 215
    move v2, v5

    .line 216
    move v3, v6

    .line 212
    .end local v5    # "x2":F
    .end local v6    # "y2":F
    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    .line 218
    .end local v4    # "i":I
    :cond_0
    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v4, v0

    return v4
.end method

.method public static polygonCentroid([FIILcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 11
    .param p0, "polygon"    # [F
    .param p1, "offset"    # I
    .param p2, "count"    # I
    .param p3, "centroid"    # Lcom/badlogic/gdx/math/Vector2;

    .line 182
    const/4 v0, 0x6

    if-lt p2, v0, :cond_2

    .line 184
    const/4 v0, 0x0

    .local v0, "area":F
    const/4 v1, 0x0

    .local v1, "x":F
    const/4 v2, 0x0

    .line 185
    .local v2, "y":F
    add-int v3, p1, p2

    add-int/lit8 v3, v3, -0x2

    .line 186
    .local v3, "last":I
    aget v4, p0, v3

    .local v4, "x1":F
    add-int/lit8 v5, v3, 0x1

    aget v5, p0, v5

    .line 187
    .local v5, "y1":F
    move v6, p1

    .local v6, "i":I
    :goto_0
    if-gt v6, v3, :cond_0

    .line 188
    aget v7, p0, v6

    .local v7, "x2":F
    add-int/lit8 v8, v6, 0x1

    aget v8, p0, v8

    .line 189
    .local v8, "y2":F
    mul-float v9, v4, v8

    mul-float v10, v7, v5

    sub-float/2addr v9, v10

    .line 190
    .local v9, "a":F
    add-float/2addr v0, v9

    .line 191
    add-float v10, v4, v7

    mul-float/2addr v10, v9

    add-float/2addr v1, v10

    .line 192
    add-float v10, v5, v8

    mul-float/2addr v10, v9

    add-float/2addr v2, v10

    .line 193
    move v4, v7

    .line 194
    move v5, v8

    .line 187
    .end local v7    # "x2":F
    .end local v8    # "y2":F
    .end local v9    # "a":F
    add-int/lit8 v6, v6, 0x2

    goto :goto_0

    .line 196
    .end local v6    # "i":I
    :cond_0
    const/4 v6, 0x0

    cmpl-float v7, v0, v6

    if-nez v7, :cond_1

    .line 197
    iput v6, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 198
    iput v6, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto :goto_1

    .line 200
    :cond_1
    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v0, v6

    .line 201
    const/high16 v6, 0x40c00000    # 6.0f

    mul-float v7, v0, v6

    div-float v7, v1, v7

    iput v7, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 202
    mul-float/2addr v6, v0

    div-float v6, v2, v6

    iput v6, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 204
    :goto_1
    return-object p3

    .line 182
    .end local v0    # "area":F
    .end local v1    # "x":F
    .end local v2    # "y":F
    .end local v3    # "last":I
    .end local v4    # "x1":F
    .end local v5    # "y1":F
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A polygon must have 3 or more coordinate pairs."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static quadrilateralCentroid(FFFFFFFFLcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 6
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "x2"    # F
    .param p3, "y2"    # F
    .param p4, "x3"    # F
    .param p5, "y3"    # F
    .param p6, "x4"    # F
    .param p7, "y4"    # F
    .param p8, "centroid"    # Lcom/badlogic/gdx/math/Vector2;

    .line 171
    add-float v0, p0, p2

    add-float/2addr v0, p4

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    .line 172
    .local v0, "avgX1":F
    add-float v2, p1, p3

    add-float/2addr v2, p5

    div-float/2addr v2, v1

    .line 173
    .local v2, "avgY1":F
    add-float v3, p0, p6

    add-float/2addr v3, p4

    div-float/2addr v3, v1

    .line 174
    .local v3, "avgX2":F
    add-float v4, p1, p7

    add-float/2addr v4, p5

    div-float/2addr v4, v1

    .line 175
    .local v4, "avgY2":F
    sub-float v1, v0, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v1, v5

    sub-float v1, v0, v1

    iput v1, p8, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 176
    sub-float v1, v2, v4

    div-float/2addr v1, v5

    sub-float v1, v2, v1

    iput v1, p8, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 177
    return-object p8
.end method

.method public static toBarycoord(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 11
    .param p0, "p"    # Lcom/badlogic/gdx/math/Vector2;
    .param p1, "a"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "b"    # Lcom/badlogic/gdx/math/Vector2;
    .param p3, "c"    # Lcom/badlogic/gdx/math/Vector2;
    .param p4, "barycentricOut"    # Lcom/badlogic/gdx/math/Vector2;

    .line 38
    sget-object v0, Lcom/badlogic/gdx/math/GeometryUtils;->tmp1:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector2;->sub(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    .line 39
    .local v0, "v0":Lcom/badlogic/gdx/math/Vector2;
    sget-object v1, Lcom/badlogic/gdx/math/GeometryUtils;->tmp2:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, p3}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/math/Vector2;->sub(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    .line 40
    .local v1, "v1":Lcom/badlogic/gdx/math/Vector2;
    sget-object v2, Lcom/badlogic/gdx/math/GeometryUtils;->tmp3:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2, p0}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/math/Vector2;->sub(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    .line 41
    .local v2, "v2":Lcom/badlogic/gdx/math/Vector2;
    invoke-virtual {v0, v0}, Lcom/badlogic/gdx/math/Vector2;->dot(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v3

    .line 42
    .local v3, "d00":F
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector2;->dot(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v4

    .line 43
    .local v4, "d01":F
    invoke-virtual {v1, v1}, Lcom/badlogic/gdx/math/Vector2;->dot(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v5

    .line 44
    .local v5, "d11":F
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/math/Vector2;->dot(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v6

    .line 45
    .local v6, "d20":F
    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/math/Vector2;->dot(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v7

    .line 46
    .local v7, "d21":F
    mul-float v8, v3, v5

    mul-float v9, v4, v4

    sub-float/2addr v8, v9

    .line 47
    .local v8, "denom":F
    mul-float v9, v5, v6

    mul-float v10, v4, v7

    sub-float/2addr v9, v10

    div-float/2addr v9, v8

    iput v9, p4, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 48
    mul-float v9, v3, v7

    mul-float v10, v4, v6

    sub-float/2addr v9, v10

    div-float/2addr v9, v8

    iput v9, p4, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 49
    return-object p4
.end method

.method public static triangleArea(FFFFFF)F
    .locals 3
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "x2"    # F
    .param p3, "y2"    # F
    .param p4, "x3"    # F
    .param p5, "y3"    # F

    .line 166
    sub-float v0, p0, p4

    sub-float v1, p3, p1

    mul-float/2addr v0, v1

    sub-float v1, p0, p2

    sub-float v2, p5, p1

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    return v0
.end method

.method public static triangleCentroid(FFFFFFLcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 2
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "x2"    # F
    .param p3, "y2"    # F
    .param p4, "x3"    # F
    .param p5, "y3"    # F
    .param p6, "centroid"    # Lcom/badlogic/gdx/math/Vector2;

    .line 107
    add-float v0, p0, p2

    add-float/2addr v0, p4

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    iput v0, p6, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 108
    add-float v0, p1, p3

    add-float/2addr v0, p5

    div-float/2addr v0, v1

    iput v0, p6, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 109
    return-object p6
.end method

.method public static triangleCircumcenter(FFFFFFLcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 14
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "x2"    # F
    .param p3, "y2"    # F
    .param p4, "x3"    # F
    .param p5, "y3"    # F
    .param p6, "circumcenter"    # Lcom/badlogic/gdx/math/Vector2;

    .line 114
    move-object/from16 v0, p6

    sub-float v1, p2, p0

    .local v1, "dx21":F
    sub-float v2, p3, p1

    .line 115
    .local v2, "dy21":F
    sub-float v3, p4, p2

    .local v3, "dx32":F
    sub-float v4, p5, p3

    .line 116
    .local v4, "dy32":F
    sub-float v5, p0, p4

    .local v5, "dx13":F
    sub-float v6, p1, p5

    .line 117
    .local v6, "dy13":F
    mul-float v7, v3, v2

    mul-float v8, v1, v4

    sub-float/2addr v7, v8

    .line 118
    .local v7, "det":F
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const v9, 0x358637bd    # 1.0E-6f

    cmpg-float v8, v8, v9

    if-ltz v8, :cond_0

    .line 120
    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v7, v8

    .line 121
    mul-float v8, p0, p0

    mul-float v9, p1, p1

    add-float/2addr v8, v9

    .local v8, "sqr1":F
    mul-float v9, p2, p2

    mul-float v10, p3, p3

    add-float/2addr v9, v10

    .local v9, "sqr2":F
    mul-float v10, p4, p4

    mul-float v11, p5, p5

    add-float/2addr v10, v11

    .line 122
    .local v10, "sqr3":F
    mul-float v11, v8, v4

    mul-float v12, v9, v6

    add-float/2addr v11, v12

    mul-float v12, v10, v2

    add-float/2addr v11, v12

    div-float/2addr v11, v7

    mul-float v12, v8, v3

    mul-float v13, v9, v5

    add-float/2addr v12, v13

    mul-float v13, v10, v1

    add-float/2addr v12, v13

    neg-float v12, v12

    div-float/2addr v12, v7

    invoke-virtual {v0, v11, v12}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 123
    return-object v0

    .line 119
    .end local v8    # "sqr1":F
    .end local v9    # "sqr2":F
    .end local v10    # "sqr3":F
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Triangle points must not be colinear."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public static triangleCircumradius(FFFFFF)F
    .locals 8
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "x2"    # F
    .param p3, "y2"    # F
    .param p4, "x3"    # F
    .param p5, "y3"    # F

    .line 128
    sub-float v0, p3, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x358637bd    # 1.0E-6f

    cmpg-float v0, v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    if-gez v0, :cond_0

    .line 129
    sub-float v0, p4, p2

    neg-float v0, v0

    sub-float v1, p5, p3

    div-float/2addr v0, v1

    .line 130
    .local v0, "m2":F
    add-float v1, p2, p4

    div-float/2addr v1, v2

    .line 131
    .local v1, "mx2":F
    add-float v3, p3, p5

    div-float/2addr v3, v2

    .line 132
    .local v3, "my2":F
    add-float v4, p2, p0

    div-float/2addr v4, v2

    .line 133
    .local v4, "x":F
    sub-float v2, v4, v1

    mul-float/2addr v2, v0

    add-float/2addr v2, v3

    .local v2, "y":F
    goto :goto_0

    .line 134
    .end local v0    # "m2":F
    .end local v1    # "mx2":F
    .end local v2    # "y":F
    .end local v3    # "my2":F
    .end local v4    # "x":F
    :cond_0
    sub-float v0, p5, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 135
    sub-float v0, p2, p0

    neg-float v0, v0

    sub-float v1, p3, p1

    div-float/2addr v0, v1

    .line 136
    .local v0, "m1":F
    add-float v1, p0, p2

    div-float/2addr v1, v2

    .line 137
    .local v1, "mx1":F
    add-float v3, p1, p3

    div-float/2addr v3, v2

    .line 138
    .local v3, "my1":F
    add-float v4, p4, p2

    div-float/2addr v4, v2

    .line 139
    .restart local v4    # "x":F
    sub-float v2, v4, v1

    mul-float/2addr v2, v0

    add-float/2addr v2, v3

    .restart local v2    # "y":F
    goto :goto_0

    .line 141
    .end local v0    # "m1":F
    .end local v1    # "mx1":F
    .end local v2    # "y":F
    .end local v3    # "my1":F
    .end local v4    # "x":F
    :cond_1
    sub-float v0, p2, p0

    neg-float v0, v0

    sub-float v1, p3, p1

    div-float/2addr v0, v1

    .line 142
    .restart local v0    # "m1":F
    sub-float v1, p4, p2

    neg-float v1, v1

    sub-float v3, p5, p3

    div-float/2addr v1, v3

    .line 143
    .local v1, "m2":F
    add-float v3, p0, p2

    div-float/2addr v3, v2

    .line 144
    .local v3, "mx1":F
    add-float v4, p2, p4

    div-float/2addr v4, v2

    .line 145
    .local v4, "mx2":F
    add-float v5, p1, p3

    div-float/2addr v5, v2

    .line 146
    .local v5, "my1":F
    add-float v6, p3, p5

    div-float/2addr v6, v2

    .line 147
    .local v6, "my2":F
    mul-float v2, v0, v3

    mul-float v7, v1, v4

    sub-float/2addr v2, v7

    add-float/2addr v2, v6

    sub-float/2addr v2, v5

    sub-float v7, v0, v1

    div-float/2addr v2, v7

    .line 148
    .local v2, "x":F
    sub-float v7, v2, v3

    mul-float/2addr v7, v0

    add-float/2addr v7, v5

    move v4, v2

    move v2, v7

    .line 150
    .end local v0    # "m1":F
    .end local v1    # "m2":F
    .end local v3    # "mx1":F
    .end local v5    # "my1":F
    .end local v6    # "my2":F
    .local v2, "y":F
    .local v4, "x":F
    :goto_0
    sub-float v0, p0, v4

    .local v0, "dx":F
    sub-float v1, p1, v2

    .line 151
    .local v1, "dy":F
    mul-float v3, v0, v0

    mul-float v5, v1, v1

    add-float/2addr v3, v5

    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v3, v5

    return v3
.end method

.method public static triangleQuality(FFFFFF)F
    .locals 5
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "x2"    # F
    .param p3, "y2"    # F
    .param p4, "x3"    # F
    .param p5, "y3"    # F

    .line 159
    mul-float v0, p0, p0

    mul-float v1, p1, p1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 160
    .local v0, "length1":F
    mul-float v1, p2, p2

    mul-float v2, p3, p3

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 161
    .local v1, "length2":F
    mul-float v2, p4, p4

    mul-float v3, p5, p5

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 162
    .local v2, "length3":F
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static/range {p0 .. p5}, Lcom/badlogic/gdx/math/GeometryUtils;->triangleCircumradius(FFFFFF)F

    move-result v4

    div-float/2addr v3, v4

    return v3
.end method
