.class public final Lcom/badlogic/gdx/math/Intersector;
.super Ljava/lang/Object;
.source "Intersector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;,
        Lcom/badlogic/gdx/math/Intersector$SplitTriangle;
    }
.end annotation


# static fields
.field static best:Lcom/badlogic/gdx/math/Vector3;

.field private static final dir:Lcom/badlogic/gdx/math/Vector3;

.field private static final e:Lcom/badlogic/gdx/math/Vector2;

.field private static final ep1:Lcom/badlogic/gdx/math/Vector2;

.field private static final ep2:Lcom/badlogic/gdx/math/Vector2;

.field private static final floatArray:Lcom/badlogic/gdx/utils/FloatArray;

.field private static final floatArray2:Lcom/badlogic/gdx/utils/FloatArray;

.field private static final i:Lcom/badlogic/gdx/math/Vector3;

.field static intersection:Lcom/badlogic/gdx/math/Vector3;

.field private static final ip:Lcom/badlogic/gdx/math/Vector2;

.field private static final p:Lcom/badlogic/gdx/math/Plane;

.field private static final s:Lcom/badlogic/gdx/math/Vector2;

.field private static final start:Lcom/badlogic/gdx/math/Vector3;

.field static tmp:Lcom/badlogic/gdx/math/Vector3;

.field static tmp1:Lcom/badlogic/gdx/math/Vector3;

.field static tmp2:Lcom/badlogic/gdx/math/Vector3;

.field static tmp3:Lcom/badlogic/gdx/math/Vector3;

.field private static final v0:Lcom/badlogic/gdx/math/Vector3;

.field private static final v1:Lcom/badlogic/gdx/math/Vector3;

.field private static final v2:Lcom/badlogic/gdx/math/Vector3;

.field static v2tmp:Lcom/badlogic/gdx/math/Vector2;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 34
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->v0:Lcom/badlogic/gdx/math/Vector3;

    .line 35
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->v1:Lcom/badlogic/gdx/math/Vector3;

    .line 36
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    .line 37
    new-instance v0, Lcom/badlogic/gdx/utils/FloatArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/FloatArray;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->floatArray:Lcom/badlogic/gdx/utils/FloatArray;

    .line 38
    new-instance v0, Lcom/badlogic/gdx/utils/FloatArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/FloatArray;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->floatArray2:Lcom/badlogic/gdx/utils/FloatArray;

    .line 148
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->ip:Lcom/badlogic/gdx/math/Vector2;

    .line 149
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->ep1:Lcom/badlogic/gdx/math/Vector2;

    .line 150
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->ep2:Lcom/badlogic/gdx/math/Vector2;

    .line 151
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->s:Lcom/badlogic/gdx/math/Vector2;

    .line 152
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->e:Lcom/badlogic/gdx/math/Vector2;

    .line 404
    new-instance v0, Lcom/badlogic/gdx/math/Plane;

    new-instance v1, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/math/Plane;-><init>(Lcom/badlogic/gdx/math/Vector3;F)V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->p:Lcom/badlogic/gdx/math/Plane;

    .line 405
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->i:Lcom/badlogic/gdx/math/Vector3;

    .line 454
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->dir:Lcom/badlogic/gdx/math/Vector3;

    .line 455
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->start:Lcom/badlogic/gdx/math/Vector3;

    .line 638
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->best:Lcom/badlogic/gdx/math/Vector3;

    .line 639
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    .line 640
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp1:Lcom/badlogic/gdx/math/Vector3;

    .line 641
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    .line 642
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp3:Lcom/badlogic/gdx/math/Vector3;

    .line 643
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->v2tmp:Lcom/badlogic/gdx/math/Vector2;

    .line 1273
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Intersector;->intersection:Lcom/badlogic/gdx/math/Vector3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static det(FFFF)F
    .locals 2
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F
    .param p3, "d"    # F

    .line 936
    mul-float v0, p0, p3

    mul-float v1, p1, p2

    sub-float/2addr v0, v1

    return v0
.end method

.method static detd(DDDD)D
    .locals 4
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "c"    # D
    .param p6, "d"    # D

    .line 940
    mul-double v0, p0, p6

    mul-double v2, p2, p4

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public static distanceLinePoint(FFFFFF)F
    .locals 4
    .param p0, "startX"    # F
    .param p1, "startY"    # F
    .param p2, "endX"    # F
    .param p3, "endY"    # F
    .param p4, "pointX"    # F
    .param p5, "pointY"    # F

    .line 246
    sub-float v0, p2, p0

    sub-float v1, p2, p0

    mul-float/2addr v0, v1

    sub-float v1, p3, p1

    sub-float v2, p3, p1

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 247
    .local v0, "normalLength":F
    sub-float v1, p4, p0

    sub-float v2, p3, p1

    mul-float/2addr v1, v2

    sub-float v2, p5, p1

    sub-float v3, p2, p0

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v1, v0

    return v1
.end method

.method public static distanceSegmentPoint(FFFFFF)F
    .locals 7
    .param p0, "startX"    # F
    .param p1, "startY"    # F
    .param p2, "endX"    # F
    .param p3, "endY"    # F
    .param p4, "pointX"    # F
    .param p5, "pointY"    # F

    .line 252
    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->v2tmp:Lcom/badlogic/gdx/math/Vector2;

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/math/Intersector;->nearestSegmentPoint(FFFFFFLcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Lcom/badlogic/gdx/math/Vector2;->dst(FF)F

    move-result v0

    return v0
.end method

.method public static distanceSegmentPoint(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)F
    .locals 1
    .param p0, "start"    # Lcom/badlogic/gdx/math/Vector2;
    .param p1, "end"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "point"    # Lcom/badlogic/gdx/math/Vector2;

    .line 257
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->v2tmp:Lcom/badlogic/gdx/math/Vector2;

    invoke-static {p0, p1, p2, v0}, Lcom/badlogic/gdx/math/Intersector;->nearestSegmentPoint(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector2;->dst(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v0

    return v0
.end method

.method public static intersectLinePlane(FFFFFFLcom/badlogic/gdx/math/Plane;Lcom/badlogic/gdx/math/Vector3;)F
    .locals 6
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "z"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "z2"    # F
    .param p6, "plane"    # Lcom/badlogic/gdx/math/Plane;
    .param p7, "intersection"    # Lcom/badlogic/gdx/math/Vector3;

    .line 389
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p3, p4, p5}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/badlogic/gdx/math/Vector3;->sub(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    .line 390
    .local v0, "direction":Lcom/badlogic/gdx/math/Vector3;
    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, p0, p1, p2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    .line 391
    .local v1, "origin":Lcom/badlogic/gdx/math/Vector3;
    invoke-virtual {p6}, Lcom/badlogic/gdx/math/Plane;->getNormal()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v2

    .line 392
    .local v2, "denom":F
    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_1

    .line 393
    invoke-virtual {p6}, Lcom/badlogic/gdx/math/Plane;->getNormal()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v3

    invoke-virtual {p6}, Lcom/badlogic/gdx/math/Plane;->getD()F

    move-result v4

    add-float/2addr v3, v4

    neg-float v3, v3

    div-float/2addr v3, v2

    .line 394
    .local v3, "t":F
    if-eqz p7, :cond_0

    invoke-virtual {p7, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 395
    :cond_0
    return v3

    .line 396
    .end local v3    # "t":F
    :cond_1
    invoke-virtual {p6, v1}, Lcom/badlogic/gdx/math/Plane;->testPoint(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Plane$PlaneSide;

    move-result-object v4

    sget-object v5, Lcom/badlogic/gdx/math/Plane$PlaneSide;->OnPlane:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    if-ne v4, v5, :cond_3

    .line 397
    if-eqz p7, :cond_2

    invoke-virtual {p7, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 398
    :cond_2
    return v3

    .line 401
    :cond_3
    const/high16 v3, -0x40800000    # -1.0f

    return v3
.end method

.method public static intersectLinePolygon(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Polygon;)Z
    .locals 19
    .param p0, "p1"    # Lcom/badlogic/gdx/math/Vector2;
    .param p1, "p2"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "polygon"    # Lcom/badlogic/gdx/math/Polygon;

    .line 798
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

    move-result-object v2

    .line 799
    .local v2, "vertices":[F
    iget v3, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .local v3, "x1":F
    iget v4, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .local v4, "y1":F
    iget v5, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .local v5, "x2":F
    iget v6, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 800
    .local v6, "y2":F
    array-length v7, v2

    .line 801
    .local v7, "n":I
    add-int/lit8 v8, v7, -0x2

    aget v8, v2, v8

    .local v8, "x3":F
    add-int/lit8 v9, v7, -0x1

    aget v9, v2, v9

    .line 802
    .local v9, "y3":F
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v7, :cond_1

    .line 803
    aget v11, v2, v10

    .local v11, "x4":F
    add-int/lit8 v12, v10, 0x1

    aget v12, v2, v12

    .line 804
    .local v12, "y4":F
    sub-float v13, v12, v9

    sub-float v14, v5, v3

    mul-float/2addr v13, v14

    sub-float v14, v11, v8

    sub-float v15, v6, v4

    mul-float/2addr v14, v15

    sub-float/2addr v13, v14

    .line 805
    .local v13, "d":F
    const/4 v14, 0x0

    cmpl-float v15, v13, v14

    if-eqz v15, :cond_0

    .line 806
    sub-float v15, v4, v9

    .line 807
    .local v15, "yd":F
    sub-float v16, v3, v8

    .line 808
    .local v16, "xd":F
    sub-float v17, v11, v8

    mul-float v17, v17, v15

    sub-float v18, v12, v9

    mul-float v18, v18, v16

    sub-float v17, v17, v18

    div-float v17, v17, v13

    .line 809
    .local v17, "ua":F
    cmpl-float v14, v17, v14

    if-ltz v14, :cond_0

    const/high16 v14, 0x3f800000    # 1.0f

    cmpg-float v14, v17, v14

    if-gtz v14, :cond_0

    .line 810
    const/4 v14, 0x1

    return v14

    .line 813
    .end local v15    # "yd":F
    .end local v16    # "xd":F
    .end local v17    # "ua":F
    :cond_0
    move v8, v11

    .line 814
    move v9, v12

    .line 802
    .end local v11    # "x4":F
    .end local v12    # "y4":F
    .end local v13    # "d":F
    add-int/lit8 v10, v10, 0x2

    goto :goto_0

    .line 816
    .end local v10    # "i":I
    :cond_1
    const/4 v10, 0x0

    return v10
.end method

.method public static intersectLines(FFFFFFFFLcom/badlogic/gdx/math/Vector2;)Z
    .locals 4
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "x2"    # F
    .param p3, "y2"    # F
    .param p4, "x3"    # F
    .param p5, "y3"    # F
    .param p6, "x4"    # F
    .param p7, "y4"    # F
    .param p8, "intersection"    # Lcom/badlogic/gdx/math/Vector2;

    .line 782
    sub-float v0, p7, p5

    sub-float v1, p2, p0

    mul-float/2addr v0, v1

    sub-float v1, p6, p4

    sub-float v2, p3, p1

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 783
    .local v0, "d":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    .line 785
    :cond_0
    if-eqz p8, :cond_1

    .line 786
    sub-float v1, p6, p4

    sub-float v2, p1, p5

    mul-float/2addr v1, v2

    sub-float v2, p7, p5

    sub-float v3, p0, p4

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    div-float/2addr v1, v0

    .line 787
    .local v1, "ua":F
    sub-float v2, p2, p0

    mul-float/2addr v2, v1

    add-float/2addr v2, p0

    sub-float v3, p3, p1

    mul-float/2addr v3, v1

    add-float/2addr v3, p1

    invoke-virtual {p8, v2, v3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 789
    .end local v1    # "ua":F
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public static intersectLines(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 17
    .param p0, "p1"    # Lcom/badlogic/gdx/math/Vector2;
    .param p1, "p2"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "p3"    # Lcom/badlogic/gdx/math/Vector2;
    .param p3, "p4"    # Lcom/badlogic/gdx/math/Vector2;
    .param p4, "intersection"    # Lcom/badlogic/gdx/math/Vector2;

    .line 765
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    iget v5, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .local v5, "x1":F
    iget v6, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .local v6, "y1":F
    iget v7, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .local v7, "x2":F
    iget v8, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    .local v8, "y2":F
    iget v9, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    .local v9, "x3":F
    iget v10, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    .local v10, "y3":F
    iget v11, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    .local v11, "x4":F
    iget v12, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 767
    .local v12, "y4":F
    sub-float v13, v12, v10

    sub-float v14, v7, v5

    mul-float/2addr v13, v14

    sub-float v14, v11, v9

    sub-float v15, v8, v6

    mul-float/2addr v14, v15

    sub-float/2addr v13, v14

    .line 768
    .local v13, "d":F
    const/4 v14, 0x0

    cmpl-float v14, v13, v14

    if-nez v14, :cond_0

    const/4 v14, 0x0

    return v14

    .line 770
    :cond_0
    if-eqz v4, :cond_1

    .line 771
    sub-float v14, v11, v9

    sub-float v15, v6, v10

    mul-float/2addr v14, v15

    sub-float v15, v12, v10

    sub-float v16, v5, v9

    mul-float v15, v15, v16

    sub-float/2addr v14, v15

    div-float/2addr v14, v13

    .line 772
    .local v14, "ua":F
    sub-float v15, v7, v5

    mul-float/2addr v15, v14

    add-float/2addr v15, v5

    sub-float v16, v8, v6

    mul-float v16, v16, v14

    add-float v0, v6, v16

    invoke-virtual {v4, v15, v0}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 774
    .end local v14    # "ua":F
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static intersectPolygonEdges(Lcom/badlogic/gdx/utils/FloatArray;Lcom/badlogic/gdx/utils/FloatArray;)Z
    .locals 25
    .param p0, "polygon1"    # Lcom/badlogic/gdx/utils/FloatArray;
    .param p1, "polygon2"    # Lcom/badlogic/gdx/utils/FloatArray;

    .line 226
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    add-int/lit8 v2, v2, -0x2

    .local v2, "last1":I
    iget v3, v1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    add-int/lit8 v3, v3, -0x2

    .line 227
    .local v3, "last2":I
    iget-object v4, v0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    .local v4, "p1":[F
    iget-object v5, v1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    .line 228
    .local v5, "p2":[F
    aget v6, v4, v2

    .local v6, "x1":F
    add-int/lit8 v7, v2, 0x1

    aget v7, v4, v7

    .line 229
    .local v7, "y1":F
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-gt v8, v2, :cond_2

    .line 230
    aget v18, v4, v8

    .local v18, "x2":F
    add-int/lit8 v9, v8, 0x1

    aget v19, v4, v9

    .line 231
    .local v19, "y2":F
    aget v9, v5, v3

    .local v9, "x3":F
    add-int/lit8 v10, v3, 0x1

    aget v10, v5, v10

    .line 232
    .local v10, "y3":F
    const/4 v11, 0x0

    move/from16 v20, v9

    move/from16 v21, v10

    move v15, v11

    .end local v9    # "x3":F
    .end local v10    # "y3":F
    .local v15, "j":I
    .local v20, "x3":F
    .local v21, "y3":F
    :goto_1
    if-gt v15, v3, :cond_1

    .line 233
    aget v22, v5, v15

    .local v22, "x4":F
    add-int/lit8 v9, v15, 0x1

    aget v23, v5, v9

    .line 234
    .local v23, "y4":F
    const/16 v17, 0x0

    move v9, v6

    move v10, v7

    move/from16 v11, v18

    move/from16 v12, v19

    move/from16 v13, v20

    move/from16 v14, v21

    move/from16 v24, v15

    .end local v15    # "j":I
    .local v24, "j":I
    move/from16 v15, v22

    move/from16 v16, v23

    invoke-static/range {v9 .. v17}, Lcom/badlogic/gdx/math/Intersector;->intersectSegments(FFFFFFFFLcom/badlogic/gdx/math/Vector2;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    return v9

    .line 235
    :cond_0
    move/from16 v20, v22

    .line 236
    move/from16 v21, v23

    .line 232
    .end local v22    # "x4":F
    .end local v23    # "y4":F
    add-int/lit8 v15, v24, 0x2

    .end local v24    # "j":I
    .restart local v15    # "j":I
    goto :goto_1

    :cond_1
    move/from16 v24, v15

    .line 238
    .end local v15    # "j":I
    move/from16 v6, v18

    .line 239
    move/from16 v7, v19

    .line 229
    .end local v18    # "x2":F
    .end local v19    # "y2":F
    .end local v20    # "x3":F
    .end local v21    # "y3":F
    add-int/lit8 v8, v8, 0x2

    goto :goto_0

    .line 241
    .end local v8    # "i":I
    :cond_2
    const/4 v8, 0x0

    return v8
.end method

.method public static intersectPolygons(Lcom/badlogic/gdx/math/Polygon;Lcom/badlogic/gdx/math/Polygon;Lcom/badlogic/gdx/math/Polygon;)Z
    .locals 16
    .param p0, "p1"    # Lcom/badlogic/gdx/math/Polygon;
    .param p1, "p2"    # Lcom/badlogic/gdx/math/Polygon;
    .param p2, "overlap"    # Lcom/badlogic/gdx/math/Polygon;

    .line 161
    move-object/from16 v0, p2

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/math/Polygon;->getVertices()[F

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/math/Polygon;->getVertices()[F

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_0

    move v12, v2

    goto/16 :goto_6

    .line 164
    :cond_0
    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->ip:Lcom/badlogic/gdx/math/Vector2;

    .local v1, "ip":Lcom/badlogic/gdx/math/Vector2;
    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->ep1:Lcom/badlogic/gdx/math/Vector2;

    .local v3, "ep1":Lcom/badlogic/gdx/math/Vector2;
    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->ep2:Lcom/badlogic/gdx/math/Vector2;

    .local v4, "ep2":Lcom/badlogic/gdx/math/Vector2;
    sget-object v5, Lcom/badlogic/gdx/math/Intersector;->s:Lcom/badlogic/gdx/math/Vector2;

    .local v5, "s":Lcom/badlogic/gdx/math/Vector2;
    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->e:Lcom/badlogic/gdx/math/Vector2;

    .line 165
    .local v6, "e":Lcom/badlogic/gdx/math/Vector2;
    sget-object v7, Lcom/badlogic/gdx/math/Intersector;->floatArray:Lcom/badlogic/gdx/utils/FloatArray;

    .local v7, "floatArray":Lcom/badlogic/gdx/utils/FloatArray;
    sget-object v8, Lcom/badlogic/gdx/math/Intersector;->floatArray2:Lcom/badlogic/gdx/utils/FloatArray;

    .line 166
    .local v8, "floatArray2":Lcom/badlogic/gdx/utils/FloatArray;
    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    .line 167
    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    .line 168
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/utils/FloatArray;->addAll([F)V

    .line 169
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

    move-result-object v9

    .line 170
    .local v9, "vertices2":[F
    const/4 v10, 0x0

    .local v10, "i":I
    array-length v11, v9

    const/4 v12, 0x2

    sub-int/2addr v11, v12

    .local v11, "last":I
    :goto_0
    const/4 v13, 0x1

    if-gt v10, v11, :cond_9

    .line 171
    aget v14, v9, v10

    add-int/lit8 v15, v10, 0x1

    aget v15, v9, v15

    invoke-virtual {v3, v14, v15}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 173
    if-ge v10, v11, :cond_1

    .line 174
    add-int/lit8 v14, v10, 0x2

    aget v14, v9, v14

    add-int/lit8 v15, v10, 0x3

    aget v15, v9, v15

    invoke-virtual {v4, v14, v15}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    goto :goto_1

    .line 176
    :cond_1
    aget v14, v9, v2

    aget v15, v9, v13

    invoke-virtual {v4, v14, v15}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 177
    :goto_1
    iget v14, v8, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-nez v14, :cond_2

    return v2

    .line 178
    :cond_2
    iget v14, v8, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    sub-int/2addr v14, v12

    invoke-virtual {v8, v14}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v14

    iget v15, v8, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    sub-int/2addr v15, v13

    invoke-virtual {v8, v15}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v15

    invoke-virtual {v5, v14, v15}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 179
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_2
    iget v15, v8, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-ge v14, v15, :cond_8

    .line 180
    invoke-virtual {v8, v14}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v15

    add-int/lit8 v2, v14, 0x1

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v2

    invoke-virtual {v6, v15, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 182
    invoke-static {v4, v3, v5}, Lcom/badlogic/gdx/math/Intersector;->pointLineSide(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)I

    move-result v2

    if-lez v2, :cond_3

    move v2, v13

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    .line 183
    .local v2, "side":Z
    :goto_3
    invoke-static {v4, v3, v6}, Lcom/badlogic/gdx/math/Intersector;->pointLineSide(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)I

    move-result v15

    if-lez v15, :cond_6

    .line 184
    if-nez v2, :cond_5

    .line 185
    invoke-static {v5, v6, v3, v4, v1}, Lcom/badlogic/gdx/math/Intersector;->intersectLines(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z

    .line 186
    iget v15, v7, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-lt v15, v12, :cond_4

    iget v15, v7, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    sub-int/2addr v15, v12

    invoke-virtual {v7, v15}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v15

    iget v12, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    cmpl-float v12, v15, v12

    if-nez v12, :cond_4

    iget v12, v7, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    sub-int/2addr v12, v13

    .line 187
    invoke-virtual {v7, v12}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v12

    iget v15, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpl-float v12, v12, v15

    if-eqz v12, :cond_5

    .line 188
    :cond_4
    iget v12, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v7, v12}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 189
    iget v12, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v7, v12}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 192
    :cond_5
    iget v12, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v7, v12}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 193
    iget v12, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v7, v12}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    goto :goto_4

    .line 194
    :cond_6
    if-eqz v2, :cond_7

    .line 195
    invoke-static {v5, v6, v3, v4, v1}, Lcom/badlogic/gdx/math/Intersector;->intersectLines(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z

    .line 196
    iget v12, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v7, v12}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 197
    iget v12, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v7, v12}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 199
    :cond_7
    :goto_4
    iget v12, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v15, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v5, v12, v15}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 179
    .end local v2    # "side":Z
    add-int/lit8 v14, v14, 0x2

    const/4 v2, 0x0

    const/4 v12, 0x2

    goto :goto_2

    .line 201
    .end local v14    # "j":I
    :cond_8
    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    .line 202
    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/utils/FloatArray;->addAll(Lcom/badlogic/gdx/utils/FloatArray;)V

    .line 203
    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    .line 170
    add-int/lit8 v10, v10, 0x2

    const/4 v2, 0x0

    const/4 v12, 0x2

    goto/16 :goto_0

    .line 205
    .end local v10    # "i":I
    .end local v11    # "last":I
    :cond_9
    iget v2, v8, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-eqz v2, :cond_c

    .line 206
    if-eqz v0, :cond_b

    .line 207
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/math/Polygon;->getVertices()[F

    move-result-object v2

    array-length v2, v2

    iget v10, v8, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    if-ne v2, v10, :cond_a

    .line 208
    iget-object v2, v8, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/math/Polygon;->getVertices()[F

    move-result-object v10

    iget v11, v8, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    const/4 v12, 0x0

    invoke-static {v2, v12, v10, v12, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    .line 210
    :cond_a
    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/FloatArray;->toArray()[F

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/math/Polygon;->setVertices([F)V

    .line 212
    :cond_b
    :goto_5
    return v13

    .line 214
    :cond_c
    const/4 v12, 0x0

    return v12

    .line 161
    .end local v1    # "ip":Lcom/badlogic/gdx/math/Vector2;
    .end local v3    # "ep1":Lcom/badlogic/gdx/math/Vector2;
    .end local v4    # "ep2":Lcom/badlogic/gdx/math/Vector2;
    .end local v5    # "s":Lcom/badlogic/gdx/math/Vector2;
    .end local v6    # "e":Lcom/badlogic/gdx/math/Vector2;
    .end local v7    # "floatArray":Lcom/badlogic/gdx/utils/FloatArray;
    .end local v8    # "floatArray2":Lcom/badlogic/gdx/utils/FloatArray;
    .end local v9    # "vertices2":[F
    :cond_d
    move v12, v2

    .line 162
    :goto_6
    return v12
.end method

.method public static intersectPolygons(Lcom/badlogic/gdx/utils/FloatArray;Lcom/badlogic/gdx/utils/FloatArray;)Z
    .locals 6
    .param p0, "polygon1"    # Lcom/badlogic/gdx/utils/FloatArray;
    .param p1, "polygon2"    # Lcom/badlogic/gdx/utils/FloatArray;

    .line 219
    iget-object v0, p0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v1, p0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    iget-object v2, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v4, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-static {v0, v3, v1, v2, v4}, Lcom/badlogic/gdx/math/Intersector;->isPointInPolygon([FIIFF)Z

    move-result v0

    if-eqz v0, :cond_0

    return v5

    .line 220
    :cond_0
    iget-object v0, p1, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    iget v1, p1, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    iget-object v2, p0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    aget v2, v2, v3

    iget-object v4, p0, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    aget v4, v4, v5

    invoke-static {v0, v3, v1, v2, v4}, Lcom/badlogic/gdx/math/Intersector;->isPointInPolygon([FIIFF)Z

    move-result v0

    if-eqz v0, :cond_1

    return v5

    .line 221
    :cond_1
    invoke-static {p0, p1}, Lcom/badlogic/gdx/math/Intersector;->intersectPolygonEdges(Lcom/badlogic/gdx/utils/FloatArray;Lcom/badlogic/gdx/utils/FloatArray;)Z

    move-result v0

    return v0
.end method

.method public static intersectRayBounds(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/collision/BoundingBox;Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 6
    .param p0, "ray"    # Lcom/badlogic/gdx/math/collision/Ray;
    .param p1, "box"    # Lcom/badlogic/gdx/math/collision/BoundingBox;
    .param p2, "intersection"    # Lcom/badlogic/gdx/math/Vector3;

    .line 494
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->contains(Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 495
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 496
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 498
    :cond_1
    const/4 v0, 0x0

    .line 499
    .local v0, "lowest":F
    const/4 v1, 0x0

    .line 502
    .local v1, "hit":Z
    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v3, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpg-float v2, v2, v3

    const/4 v3, 0x0

    if-gtz v2, :cond_3

    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 503
    iget-object v2, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v2, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    div-float/2addr v2, v4

    .line 504
    .local v2, "t":F
    cmpl-float v4, v2, v3

    if-ltz v4, :cond_3

    .line 505
    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget-object v5, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    iget-object v5, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 506
    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v5, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_3

    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v5, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_3

    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v5, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_3

    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v5, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_3

    if-eqz v1, :cond_2

    cmpg-float v4, v2, v0

    if-gez v4, :cond_3

    .line 507
    :cond_2
    const/4 v1, 0x1

    .line 508
    move v0, v2

    .line 513
    .end local v2    # "t":F
    :cond_3
    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v4, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_5

    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    .line 514
    iget-object v2, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v2, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    div-float/2addr v2, v4

    .line 515
    .restart local v2    # "t":F
    cmpl-float v4, v2, v3

    if-ltz v4, :cond_5

    .line 516
    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget-object v5, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    iget-object v5, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 517
    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v5, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_5

    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v5, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_5

    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v5, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_5

    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v5, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_5

    if-eqz v1, :cond_4

    cmpg-float v4, v2, v0

    if-gez v4, :cond_5

    .line 518
    :cond_4
    const/4 v1, 0x1

    .line 519
    move v0, v2

    .line 524
    .end local v2    # "t":F
    :cond_5
    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v4, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_7

    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_7

    .line 525
    iget-object v2, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v2, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    div-float/2addr v2, v4

    .line 526
    .restart local v2    # "t":F
    cmpl-float v4, v2, v3

    if-ltz v4, :cond_7

    .line 527
    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget-object v5, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    iget-object v5, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 528
    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v5, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_7

    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v5, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_7

    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v5, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_7

    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v5, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_7

    if-eqz v1, :cond_6

    cmpg-float v4, v2, v0

    if-gez v4, :cond_7

    .line 529
    :cond_6
    const/4 v1, 0x1

    .line 530
    move v0, v2

    .line 535
    .end local v2    # "t":F
    :cond_7
    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v4, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_9

    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_9

    .line 536
    iget-object v2, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v2, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    div-float/2addr v2, v4

    .line 537
    .restart local v2    # "t":F
    cmpl-float v4, v2, v3

    if-ltz v4, :cond_9

    .line 538
    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget-object v5, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    iget-object v5, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 539
    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v5, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_9

    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v5, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_9

    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v5, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_9

    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v5, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_9

    if-eqz v1, :cond_8

    cmpg-float v4, v2, v0

    if-gez v4, :cond_9

    .line 540
    :cond_8
    const/4 v1, 0x1

    .line 541
    move v0, v2

    .line 546
    .end local v2    # "t":F
    :cond_9
    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v4, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_b

    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_b

    .line 547
    iget-object v2, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr v2, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    div-float/2addr v2, v4

    .line 548
    .restart local v2    # "t":F
    cmpl-float v4, v2, v3

    if-ltz v4, :cond_b

    .line 549
    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget-object v5, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    iget-object v5, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 550
    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v5, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_b

    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v5, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_b

    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v5, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_b

    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v5, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_b

    if-eqz v1, :cond_a

    cmpg-float v4, v2, v0

    if-gez v4, :cond_b

    .line 551
    :cond_a
    const/4 v1, 0x1

    .line 552
    move v0, v2

    .line 557
    .end local v2    # "t":F
    :cond_b
    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v4, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_d

    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_d

    .line 558
    iget-object v2, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr v2, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    div-float/2addr v2, v4

    .line 559
    .restart local v2    # "t":F
    cmpl-float v3, v2, v3

    if-ltz v3, :cond_d

    .line 560
    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 561
    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v4, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_d

    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v4, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_d

    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v4, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_d

    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v4, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_d

    if-eqz v1, :cond_c

    cmpg-float v3, v2, v0

    if-gez v3, :cond_d

    .line 562
    :cond_c
    const/4 v1, 0x1

    .line 563
    move v0, v2

    .line 567
    .end local v2    # "t":F
    :cond_d
    if-eqz v1, :cond_13

    if-eqz p2, :cond_13

    .line 568
    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, v2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 569
    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v3, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_e

    .line 570
    iget-object v2, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iput v2, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    goto :goto_0

    .line 571
    :cond_e
    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v3, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_f

    .line 572
    iget-object v2, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iput v2, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 574
    :cond_f
    :goto_0
    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v3, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_10

    .line 575
    iget-object v2, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iput v2, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    goto :goto_1

    .line 576
    :cond_10
    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v3, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_11

    .line 577
    iget-object v2, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iput v2, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 579
    :cond_11
    :goto_1
    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v3, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_12

    .line 580
    iget-object v2, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->min:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    iput v2, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    goto :goto_2

    .line 581
    :cond_12
    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v3, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_13

    .line 582
    iget-object v2, p1, Lcom/badlogic/gdx/math/collision/BoundingBox;->max:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    iput v2, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    .line 585
    :cond_13
    :goto_2
    return v1
.end method

.method public static intersectRayBoundsFast(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 12
    .param p0, "ray"    # Lcom/badlogic/gdx/math/collision/Ray;
    .param p1, "center"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "dimensions"    # Lcom/badlogic/gdx/math/Vector3;

    .line 604
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    .line 605
    .local v0, "divX":F
    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    div-float v2, v1, v2

    .line 606
    .local v2, "divY":F
    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->z:F

    div-float/2addr v1, v3

    .line 608
    .local v1, "divZ":F
    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v4, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    .line 609
    .local v3, "minx":F
    iget v4, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v6, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v6, v5

    add-float/2addr v4, v6

    iget-object v6, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v4, v6

    mul-float/2addr v4, v0

    .line 610
    .local v4, "maxx":F
    cmpl-float v6, v3, v4

    if-lez v6, :cond_0

    .line 611
    move v6, v3

    .line 612
    .local v6, "t":F
    move v3, v4

    .line 613
    move v4, v6

    .line 616
    .end local v6    # "t":F
    :cond_0
    iget v6, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v7, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v7, v5

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v2

    .line 617
    .local v6, "miny":F
    iget v7, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v8, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v7, v8

    mul-float/2addr v7, v2

    .line 618
    .local v7, "maxy":F
    cmpl-float v8, v6, v7

    if-lez v8, :cond_1

    .line 619
    move v8, v6

    .line 620
    .local v8, "t":F
    move v6, v7

    .line 621
    move v7, v8

    .line 624
    .end local v8    # "t":F
    :cond_1
    iget v8, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v9, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v9, v5

    sub-float/2addr v8, v9

    iget-object v9, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr v8, v9

    mul-float/2addr v8, v1

    .line 625
    .local v8, "minz":F
    iget v9, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v10, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v10, v5

    add-float/2addr v9, v10

    iget-object v5, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr v9, v5

    mul-float/2addr v9, v1

    .line 626
    .local v9, "maxz":F
    cmpl-float v5, v8, v9

    if-lez v5, :cond_2

    .line 627
    move v5, v8

    .line 628
    .local v5, "t":F
    move v8, v9

    .line 629
    move v9, v5

    .line 632
    .end local v5    # "t":F
    :cond_2
    invoke-static {v3, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v5, v8}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 633
    .local v5, "min":F
    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v10, v9}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 635
    .local v10, "max":F
    const/4 v11, 0x0

    cmpl-float v11, v10, v11

    if-ltz v11, :cond_3

    cmpl-float v11, v10, v5

    if-ltz v11, :cond_3

    const/4 v11, 0x1

    goto :goto_0

    :cond_3
    const/4 v11, 0x0

    :goto_0
    return v11
.end method

.method public static intersectRayBoundsFast(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/collision/BoundingBox;)Z
    .locals 2
    .param p0, "ray"    # Lcom/badlogic/gdx/math/collision/Ray;
    .param p1, "box"    # Lcom/badlogic/gdx/math/collision/BoundingBox;

    .line 594
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getCenter(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/math/collision/BoundingBox;->getDimensions(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/badlogic/gdx/math/Intersector;->intersectRayBoundsFast(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v0

    return v0
.end method

.method public static intersectRayPlane(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Plane;Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 6
    .param p0, "ray"    # Lcom/badlogic/gdx/math/collision/Ray;
    .param p1, "plane"    # Lcom/badlogic/gdx/math/Plane;
    .param p2, "intersection"    # Lcom/badlogic/gdx/math/Vector3;

    .line 363
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Plane;->getNormal()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v0

    .line 364
    .local v0, "denom":F
    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 365
    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Plane;->getNormal()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v2

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Plane;->getD()F

    move-result v5

    add-float/2addr v2, v5

    neg-float v2, v2

    div-float/2addr v2, v0

    .line 366
    .local v2, "t":F
    cmpg-float v1, v2, v1

    if-gez v1, :cond_0

    return v4

    .line 368
    :cond_0
    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->v0:Lcom/badlogic/gdx/math/Vector3;

    iget-object v5, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 369
    :cond_1
    return v3

    .line 370
    .end local v2    # "t":F
    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/math/Plane;->testPoint(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Plane$PlaneSide;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/math/Plane$PlaneSide;->OnPlane:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    if-ne v1, v2, :cond_4

    .line 371
    if-eqz p2, :cond_3

    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 372
    :cond_3
    return v3

    .line 374
    :cond_4
    return v4
.end method

.method public static intersectRayRay(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)F
    .locals 7
    .param p0, "start1"    # Lcom/badlogic/gdx/math/Vector2;
    .param p1, "direction1"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "start2"    # Lcom/badlogic/gdx/math/Vector2;
    .param p3, "direction2"    # Lcom/badlogic/gdx/math/Vector2;

    .line 344
    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v0, v1

    .line 345
    .local v0, "difx":F
    iget v1, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v1, v2

    .line 346
    .local v1, "dify":F
    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v2, v3

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v4, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 347
    .local v2, "d1xd2":F
    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-nez v3, :cond_0

    .line 348
    const/high16 v3, 0x7f800000    # Float.POSITIVE_INFINITY

    return v3

    .line 350
    :cond_0
    iget v3, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    div-float/2addr v3, v2

    .line 351
    .local v3, "d2sx":F
    iget v4, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    div-float/2addr v4, v2

    .line 352
    .local v4, "d2sy":F
    mul-float v5, v0, v4

    mul-float v6, v1, v3

    sub-float/2addr v5, v6

    return v5
.end method

.method public static intersectRaySphere(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Vector3;FLcom/badlogic/gdx/math/Vector3;)Z
    .locals 6
    .param p0, "ray"    # Lcom/badlogic/gdx/math/collision/Ray;
    .param p1, "center"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "radius"    # F
    .param p3, "intersection"    # Lcom/badlogic/gdx/math/Vector3;

    .line 465
    iget-object v0, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v1, v2

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v2, v3

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->dot(FFF)F

    move-result v0

    .line 466
    .local v0, "len":F
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    const/4 v2, 0x0

    if-gez v1, :cond_0

    .line 467
    return v2

    .line 468
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v3, v0

    add-float/2addr v1, v3

    iget-object v3, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v5, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    invoke-virtual {p1, v1, v3, v4}, Lcom/badlogic/gdx/math/Vector3;->dst2(FFF)F

    move-result v1

    .line 470
    .local v1, "dst2":F
    mul-float v3, p2, p2

    .line 471
    .local v3, "r2":F
    cmpl-float v4, v1, v3

    if-lez v4, :cond_1

    return v2

    .line 472
    :cond_1
    if-eqz p3, :cond_2

    iget-object v2, p0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p3, v2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    sub-float v4, v3, v1

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    sub-float v4, v0, v4

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 473
    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method public static intersectRayTriangle(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 17
    .param p0, "ray"    # Lcom/badlogic/gdx/math/collision/Ray;
    .param p1, "t1"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "t2"    # Lcom/badlogic/gdx/math/Vector3;
    .param p3, "t3"    # Lcom/badlogic/gdx/math/Vector3;
    .param p4, "intersection"    # Lcom/badlogic/gdx/math/Vector3;

    .line 416
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    sget-object v5, Lcom/badlogic/gdx/math/Intersector;->v0:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    .line 417
    .local v5, "edge1":Lcom/badlogic/gdx/math/Vector3;
    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->v1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v6, v3}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v6

    .line 419
    .local v6, "edge2":Lcom/badlogic/gdx/math/Vector3;
    sget-object v7, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    iget-object v8, v0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v7

    .line 420
    .local v7, "pvec":Lcom/badlogic/gdx/math/Vector3;
    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v8

    .line 421
    .local v8, "det":F
    invoke-static {v8}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v9, :cond_2

    .line 422
    sget-object v9, Lcom/badlogic/gdx/math/Intersector;->p:Lcom/badlogic/gdx/math/Plane;

    invoke-virtual {v9, v1, v2, v3}, Lcom/badlogic/gdx/math/Plane;->set(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    .line 423
    sget-object v9, Lcom/badlogic/gdx/math/Intersector;->p:Lcom/badlogic/gdx/math/Plane;

    iget-object v12, v0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v9, v12}, Lcom/badlogic/gdx/math/Plane;->testPoint(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Plane$PlaneSide;

    move-result-object v9

    sget-object v12, Lcom/badlogic/gdx/math/Plane$PlaneSide;->OnPlane:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    if-ne v9, v12, :cond_1

    iget-object v9, v0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-static {v9, v1, v2, v3}, Lcom/badlogic/gdx/math/Intersector;->isPointInTriangle(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 424
    if-eqz v4, :cond_0

    iget-object v9, v0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v9}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 425
    :cond_0
    return v10

    .line 427
    :cond_1
    return v11

    .line 430
    :cond_2
    const/high16 v9, 0x3f800000    # 1.0f

    div-float v8, v9, v8

    .line 432
    sget-object v12, Lcom/badlogic/gdx/math/Intersector;->i:Lcom/badlogic/gdx/math/Vector3;

    iget-object v13, v0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v12, v13}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v12

    invoke-virtual {v12, v1}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v12

    .line 433
    .local v12, "tvec":Lcom/badlogic/gdx/math/Vector3;
    invoke-virtual {v12, v7}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v13

    mul-float/2addr v13, v8

    .line 434
    .local v13, "u":F
    const/4 v14, 0x0

    cmpg-float v15, v13, v14

    if-ltz v15, :cond_9

    cmpl-float v15, v13, v9

    if-lez v15, :cond_3

    goto :goto_2

    .line 436
    :cond_3
    invoke-virtual {v12, v5}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v15

    .line 437
    .local v15, "qvec":Lcom/badlogic/gdx/math/Vector3;
    iget-object v10, v0, Lcom/badlogic/gdx/math/collision/Ray;->direction:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v10, v15}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v10

    mul-float/2addr v10, v8

    .line 438
    .local v10, "v":F
    cmpg-float v16, v10, v14

    if-ltz v16, :cond_8

    add-float v16, v13, v10

    cmpl-float v9, v16, v9

    if-lez v9, :cond_4

    goto :goto_1

    .line 440
    :cond_4
    invoke-virtual {v6, v15}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v9

    mul-float/2addr v9, v8

    .line 441
    .local v9, "t":F
    cmpg-float v14, v9, v14

    if-gez v14, :cond_5

    return v11

    .line 443
    :cond_5
    if-eqz v4, :cond_7

    .line 444
    const v11, 0x358637bd    # 1.0E-6f

    cmpg-float v11, v9, v11

    if-gtz v11, :cond_6

    .line 445
    iget-object v11, v0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v11}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    goto :goto_0

    .line 447
    :cond_6
    invoke-virtual {v0, v4, v9}, Lcom/badlogic/gdx/math/collision/Ray;->getEndPoint(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;

    .line 451
    :cond_7
    :goto_0
    const/4 v11, 0x1

    return v11

    .line 438
    .end local v9    # "t":F
    :cond_8
    :goto_1
    return v11

    .line 434
    .end local v10    # "v":F
    .end local v15    # "qvec":Lcom/badlogic/gdx/math/Vector3;
    :cond_9
    :goto_2
    return v11
.end method

.method public static intersectRayTriangles(Lcom/badlogic/gdx/math/collision/Ray;Ljava/util/List;Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 7
    .param p0, "ray"    # Lcom/badlogic/gdx/math/collision/Ray;
    .param p2, "intersection"    # Lcom/badlogic/gdx/math/Vector3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/math/collision/Ray;",
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/math/Vector3;",
            ">;",
            "Lcom/badlogic/gdx/math/Vector3;",
            ")Z"
        }
    .end annotation

    .line 730
    .local p1, "triangles":Ljava/util/List;, "Ljava/util/List<Lcom/badlogic/gdx/math/Vector3;>;"
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 731
    .local v0, "min_dist":F
    const/4 v1, 0x0

    .line 733
    .local v1, "hit":Z
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    rem-int/lit8 v2, v2, 0x3

    if-nez v2, :cond_4

    .line 735
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 736
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/math/Vector3;

    add-int/lit8 v4, v2, 0x1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/math/Vector3;

    add-int/lit8 v5, v2, 0x2

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/math/Vector3;

    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-static {p0, v3, v4, v5, v6}, Lcom/badlogic/gdx/math/Intersector;->intersectRayTriangle(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v3

    .line 738
    .local v3, "result":Z
    if-eqz v3, :cond_0

    .line 739
    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    sget-object v5, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector3;->dst2(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v4

    .line 740
    .local v4, "dist":F
    cmpg-float v5, v4, v0

    if-gez v5, :cond_0

    .line 741
    move v0, v4

    .line 742
    sget-object v5, Lcom/badlogic/gdx/math/Intersector;->best:Lcom/badlogic/gdx/math/Vector3;

    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 743
    const/4 v1, 0x1

    .line 735
    .end local v3    # "result":Z
    .end local v4    # "dist":F
    :cond_0
    add-int/lit8 v2, v2, 0x3

    goto :goto_0

    .line 748
    .end local v2    # "i":I
    :cond_1
    if-nez v1, :cond_2

    .line 749
    const/4 v2, 0x0

    return v2

    .line 751
    :cond_2
    if-eqz p2, :cond_3

    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->best:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, v2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 752
    :cond_3
    const/4 v2, 0x1

    return v2

    .line 733
    :cond_4
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "triangle list size is not a multiple of 3"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static intersectRayTriangles(Lcom/badlogic/gdx/math/collision/Ray;[FLcom/badlogic/gdx/math/Vector3;)Z
    .locals 9
    .param p0, "ray"    # Lcom/badlogic/gdx/math/collision/Ray;
    .param p1, "triangles"    # [F
    .param p2, "intersection"    # Lcom/badlogic/gdx/math/Vector3;

    .line 653
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 654
    .local v0, "min_dist":F
    const/4 v1, 0x0

    .line 656
    .local v1, "hit":Z
    array-length v2, p1

    rem-int/lit8 v2, v2, 0x9

    if-nez v2, :cond_4

    .line 658
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 659
    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->tmp1:Lcom/badlogic/gdx/math/Vector3;

    aget v4, p1, v2

    add-int/lit8 v5, v2, 0x1

    aget v5, p1, v5

    add-int/lit8 v6, v2, 0x2

    aget v6, p1, v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    add-int/lit8 v5, v2, 0x3

    aget v5, p1, v5

    add-int/lit8 v6, v2, 0x4

    aget v6, p1, v6

    add-int/lit8 v7, v2, 0x5

    aget v7, p1, v7

    .line 660
    invoke-virtual {v4, v5, v6, v7}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    sget-object v5, Lcom/badlogic/gdx/math/Intersector;->tmp3:Lcom/badlogic/gdx/math/Vector3;

    add-int/lit8 v6, v2, 0x6

    aget v6, p1, v6

    add-int/lit8 v7, v2, 0x7

    aget v7, p1, v7

    add-int/lit8 v8, v2, 0x8

    aget v8, p1, v8

    .line 661
    invoke-virtual {v5, v6, v7, v8}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    .line 659
    invoke-static {p0, v3, v4, v5, v6}, Lcom/badlogic/gdx/math/Intersector;->intersectRayTriangle(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v3

    .line 663
    .local v3, "result":Z
    if-eqz v3, :cond_0

    .line 664
    iget-object v4, p0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    sget-object v5, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/math/Vector3;->dst2(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v4

    .line 665
    .local v4, "dist":F
    cmpg-float v5, v4, v0

    if-gez v5, :cond_0

    .line 666
    move v0, v4

    .line 667
    sget-object v5, Lcom/badlogic/gdx/math/Intersector;->best:Lcom/badlogic/gdx/math/Vector3;

    sget-object v6, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 668
    const/4 v1, 0x1

    .line 658
    .end local v3    # "result":Z
    .end local v4    # "dist":F
    :cond_0
    add-int/lit8 v2, v2, 0x9

    goto :goto_0

    .line 673
    .end local v2    # "i":I
    :cond_1
    if-nez v1, :cond_2

    .line 674
    const/4 v2, 0x0

    return v2

    .line 676
    :cond_2
    if-eqz p2, :cond_3

    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->best:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p2, v2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 677
    :cond_3
    const/4 v2, 0x1

    return v2

    .line 656
    :cond_4
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "triangles array size is not a multiple of 9"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static intersectRayTriangles(Lcom/badlogic/gdx/math/collision/Ray;[F[SILcom/badlogic/gdx/math/Vector3;)Z
    .locals 15
    .param p0, "ray"    # Lcom/badlogic/gdx/math/collision/Ray;
    .param p1, "vertices"    # [F
    .param p2, "indices"    # [S
    .param p3, "vertexSize"    # I
    .param p4, "intersection"    # Lcom/badlogic/gdx/math/Vector3;

    .line 691
    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    .line 692
    .local v3, "min_dist":F
    const/4 v4, 0x0

    .line 694
    .local v4, "hit":Z
    array-length v5, v1

    rem-int/lit8 v5, v5, 0x3

    if-nez v5, :cond_4

    .line 696
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v1

    if-ge v5, v6, :cond_1

    .line 697
    aget-short v6, v1, v5

    mul-int v6, v6, p3

    .line 698
    .local v6, "i1":I
    add-int/lit8 v7, v5, 0x1

    aget-short v7, v1, v7

    mul-int v7, v7, p3

    .line 699
    .local v7, "i2":I
    add-int/lit8 v8, v5, 0x2

    aget-short v8, v1, v8

    mul-int v8, v8, p3

    .line 701
    .local v8, "i3":I
    sget-object v9, Lcom/badlogic/gdx/math/Intersector;->tmp1:Lcom/badlogic/gdx/math/Vector3;

    aget v10, p1, v6

    add-int/lit8 v11, v6, 0x1

    aget v11, p1, v11

    add-int/lit8 v12, v6, 0x2

    aget v12, p1, v12

    invoke-virtual {v9, v10, v11, v12}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v9

    sget-object v10, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    aget v11, p1, v7

    add-int/lit8 v12, v7, 0x1

    aget v12, p1, v12

    add-int/lit8 v13, v7, 0x2

    aget v13, p1, v13

    .line 702
    invoke-virtual {v10, v11, v12, v13}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v10

    sget-object v11, Lcom/badlogic/gdx/math/Intersector;->tmp3:Lcom/badlogic/gdx/math/Vector3;

    aget v12, p1, v8

    add-int/lit8 v13, v8, 0x1

    aget v13, p1, v13

    add-int/lit8 v14, v8, 0x2

    aget v14, p1, v14

    .line 703
    invoke-virtual {v11, v12, v13, v14}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v11

    sget-object v12, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    .line 701
    invoke-static {p0, v9, v10, v11, v12}, Lcom/badlogic/gdx/math/Intersector;->intersectRayTriangle(Lcom/badlogic/gdx/math/collision/Ray;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v9

    .line 705
    .local v9, "result":Z
    if-eqz v9, :cond_0

    .line 706
    iget-object v10, v0, Lcom/badlogic/gdx/math/collision/Ray;->origin:Lcom/badlogic/gdx/math/Vector3;

    sget-object v11, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/math/Vector3;->dst2(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v10

    .line 707
    .local v10, "dist":F
    cmpg-float v11, v10, v3

    if-gez v11, :cond_0

    .line 708
    move v3, v10

    .line 709
    sget-object v11, Lcom/badlogic/gdx/math/Intersector;->best:Lcom/badlogic/gdx/math/Vector3;

    sget-object v12, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v11, v12}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 710
    const/4 v4, 0x1

    .line 696
    .end local v6    # "i1":I
    .end local v7    # "i2":I
    .end local v8    # "i3":I
    .end local v9    # "result":Z
    .end local v10    # "dist":F
    :cond_0
    add-int/lit8 v5, v5, 0x3

    goto :goto_0

    .line 715
    .end local v5    # "i":I
    :cond_1
    if-nez v4, :cond_2

    .line 716
    const/4 v5, 0x0

    return v5

    .line 718
    :cond_2
    if-eqz v2, :cond_3

    sget-object v5, Lcom/badlogic/gdx/math/Intersector;->best:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 719
    :cond_3
    const/4 v5, 0x1

    return v5

    .line 694
    :cond_4
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "triangle list size is not a multiple of 3"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static intersectRectangles(Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/math/Rectangle;)Z
    .locals 3
    .param p0, "rectangle1"    # Lcom/badlogic/gdx/math/Rectangle;
    .param p1, "rectangle2"    # Lcom/badlogic/gdx/math/Rectangle;
    .param p2, "intersection"    # Lcom/badlogic/gdx/math/Rectangle;

    .line 823
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Rectangle;->overlaps(Lcom/badlogic/gdx/math/Rectangle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 824
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p2, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 825
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v0, v1

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p2, Lcom/badlogic/gdx/math/Rectangle;->x:F

    sub-float/2addr v0, v1

    iput v0, p2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 826
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p2, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 827
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v0, v1

    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p2, Lcom/badlogic/gdx/math/Rectangle;->y:F

    sub-float/2addr v0, v1

    iput v0, p2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 828
    const/4 v0, 0x1

    return v0

    .line 830
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static intersectSegmentCircle(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;F)Z
    .locals 7
    .param p0, "start"    # Lcom/badlogic/gdx/math/Vector2;
    .param p1, "end"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "center"    # Lcom/badlogic/gdx/math/Vector2;
    .param p3, "squareRadius"    # F

    .line 290
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v1, v2

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v3, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 291
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp1:Lcom/badlogic/gdx/math/Vector3;

    iget v1, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v1, v2

    iget v2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v4, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 292
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->len()F

    move-result v0

    .line 293
    .local v0, "l":F
    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->tmp1:Lcom/badlogic/gdx/math/Vector3;

    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v1

    .line 294
    .local v1, "u":F
    cmpg-float v2, v1, v3

    if-gtz v2, :cond_0

    .line 295
    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget v4, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v5, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v2, v4, v5, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    goto :goto_0

    .line 296
    :cond_0
    cmpl-float v2, v1, v0

    if-ltz v2, :cond_1

    .line 297
    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v5, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v2, v4, v5, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    goto :goto_0

    .line 299
    :cond_1
    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->tmp3:Lcom/badlogic/gdx/math/Vector3;

    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 300
    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->tmp3:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v5, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v4, v5

    sget-object v5, Lcom/badlogic/gdx/math/Intersector;->tmp3:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v6, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v5, v6

    invoke-virtual {v2, v4, v5, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 303
    :goto_0
    iget v2, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v2, v3

    .line 304
    .local v2, "x":F
    iget v3, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v3, v4

    .line 306
    .local v3, "y":F
    mul-float v4, v2, v2

    mul-float v5, v3, v3

    add-float/2addr v4, v5

    cmpg-float v4, v4, p3

    if-gtz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    return v4
.end method

.method public static intersectSegmentCircleDisplace(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;FLcom/badlogic/gdx/math/Vector2;)F
    .locals 7
    .param p0, "start"    # Lcom/badlogic/gdx/math/Vector2;
    .param p1, "end"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "point"    # Lcom/badlogic/gdx/math/Vector2;
    .param p3, "radius"    # F
    .param p4, "displacement"    # Lcom/badlogic/gdx/math/Vector2;

    .line 320
    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v0, v1

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v1, v2

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v3, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 321
    .local v0, "u":F
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->dst(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v1

    .line 322
    .local v1, "d":F
    mul-float v2, v1, v1

    div-float/2addr v0, v2

    .line 323
    const/4 v2, 0x0

    cmpg-float v3, v0, v2

    const/high16 v4, 0x7f800000    # Float.POSITIVE_INFINITY

    if-ltz v3, :cond_2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    goto :goto_0

    .line 324
    :cond_0
    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v5, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v6, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v3, v5, v6, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    iget v5, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v6, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v3, v5, v6, v2}, Lcom/badlogic/gdx/math/Vector3;->sub(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 325
    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget v5, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v6, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v3, v5, v6, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    sget-object v5, Lcom/badlogic/gdx/math/Intersector;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v5, v0}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 326
    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget v5, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v6, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v3, v5, v6, v2}, Lcom/badlogic/gdx/math/Vector3;->dst(FFF)F

    move-result v1

    .line 327
    cmpg-float v2, v1, p3

    if-gez v2, :cond_1

    .line 328
    invoke-virtual {p4, p2}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector3;->x:F

    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/math/Vector2;->sub(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/math/Vector2;->nor()Lcom/badlogic/gdx/math/Vector2;

    .line 329
    return v1

    .line 331
    :cond_1
    return v4

    .line 323
    :cond_2
    :goto_0
    return v4
.end method

.method public static intersectSegmentPlane(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Plane;Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 6
    .param p0, "start"    # Lcom/badlogic/gdx/math/Vector3;
    .param p1, "end"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "plane"    # Lcom/badlogic/gdx/math/Plane;
    .param p3, "intersection"    # Lcom/badlogic/gdx/math/Vector3;

    .line 85
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->v0:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    .line 86
    .local v0, "dir":Lcom/badlogic/gdx/math/Vector3;
    invoke-virtual {p2}, Lcom/badlogic/gdx/math/Plane;->getNormal()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v1

    .line 87
    .local v1, "denom":F
    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return v4

    .line 88
    :cond_0
    invoke-virtual {p2}, Lcom/badlogic/gdx/math/Plane;->getNormal()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v3

    invoke-virtual {p2}, Lcom/badlogic/gdx/math/Plane;->getD()F

    move-result v5

    add-float/2addr v3, v5

    neg-float v3, v3

    div-float/2addr v3, v1

    .line 89
    .local v3, "t":F
    cmpg-float v2, v3, v2

    if-ltz v2, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v3, v2

    if-lez v2, :cond_1

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {p3, p0}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 92
    const/4 v2, 0x1

    return v2

    .line 89
    :cond_2
    :goto_0
    return v4
.end method

.method public static intersectSegmentPolygon(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Polygon;)Z
    .locals 21
    .param p0, "p1"    # Lcom/badlogic/gdx/math/Vector2;
    .param p1, "p2"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "polygon"    # Lcom/badlogic/gdx/math/Polygon;

    .line 867
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

    move-result-object v2

    .line 868
    .local v2, "vertices":[F
    iget v3, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .local v3, "x1":F
    iget v4, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .local v4, "y1":F
    iget v5, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .local v5, "x2":F
    iget v6, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 869
    .local v6, "y2":F
    array-length v7, v2

    .line 870
    .local v7, "n":I
    add-int/lit8 v8, v7, -0x2

    aget v8, v2, v8

    .local v8, "x3":F
    add-int/lit8 v9, v7, -0x1

    aget v9, v2, v9

    .line 871
    .local v9, "y3":F
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v7, :cond_1

    .line 872
    aget v11, v2, v10

    .local v11, "x4":F
    add-int/lit8 v12, v10, 0x1

    aget v12, v2, v12

    .line 873
    .local v12, "y4":F
    sub-float v13, v12, v9

    sub-float v14, v5, v3

    mul-float/2addr v13, v14

    sub-float v14, v11, v8

    sub-float v15, v6, v4

    mul-float/2addr v14, v15

    sub-float/2addr v13, v14

    .line 874
    .local v13, "d":F
    const/4 v14, 0x0

    cmpl-float v15, v13, v14

    if-eqz v15, :cond_0

    .line 875
    sub-float v15, v4, v9

    .line 876
    .local v15, "yd":F
    sub-float v16, v3, v8

    .line 877
    .local v16, "xd":F
    sub-float v17, v11, v8

    mul-float v17, v17, v15

    sub-float v18, v12, v9

    mul-float v18, v18, v16

    sub-float v17, v17, v18

    div-float v17, v17, v13

    .line 878
    .local v17, "ua":F
    cmpl-float v18, v17, v14

    if-ltz v18, :cond_0

    const/high16 v18, 0x3f800000    # 1.0f

    cmpg-float v19, v17, v18

    if-gtz v19, :cond_0

    .line 879
    sub-float v19, v5, v3

    mul-float v19, v19, v15

    sub-float v20, v6, v4

    mul-float v20, v20, v16

    sub-float v19, v19, v20

    div-float v19, v19, v13

    .line 880
    .local v19, "ub":F
    cmpl-float v14, v19, v14

    if-ltz v14, :cond_0

    cmpg-float v14, v19, v18

    if-gtz v14, :cond_0

    .line 881
    const/4 v14, 0x1

    return v14

    .line 885
    .end local v15    # "yd":F
    .end local v16    # "xd":F
    .end local v17    # "ua":F
    .end local v19    # "ub":F
    :cond_0
    move v8, v11

    .line 886
    move v9, v12

    .line 871
    .end local v11    # "x4":F
    .end local v12    # "y4":F
    .end local v13    # "d":F
    add-int/lit8 v10, v10, 0x2

    goto :goto_0

    .line 888
    .end local v10    # "i":I
    :cond_1
    const/4 v10, 0x0

    return v10
.end method

.method public static intersectSegmentRectangle(FFFFLcom/badlogic/gdx/math/Rectangle;)Z
    .locals 13
    .param p0, "startX"    # F
    .param p1, "startY"    # F
    .param p2, "endX"    # F
    .param p3, "endY"    # F
    .param p4, "rectangle"    # Lcom/badlogic/gdx/math/Rectangle;

    .line 841
    move-object/from16 v0, p4

    iget v1, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v2, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v1, v2

    .line 842
    .local v1, "rectangleEndX":F
    iget v2, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v3, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v2, v3

    .line 844
    .local v2, "rectangleEndY":F
    iget v8, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v9, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v10, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    const/4 v12, 0x0

    move v4, p0

    move v5, p1

    move v6, p2

    move/from16 v7, p3

    move v11, v2

    invoke-static/range {v4 .. v12}, Lcom/badlogic/gdx/math/Intersector;->intersectSegments(FFFFFFFFLcom/badlogic/gdx/math/Vector2;)Z

    move-result v3

    const/4 v12, 0x1

    if-eqz v3, :cond_0

    return v12

    .line 846
    :cond_0
    iget v7, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v8, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v10, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    const/4 v11, 0x0

    move v3, p0

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    move v9, v1

    invoke-static/range {v3 .. v11}, Lcom/badlogic/gdx/math/Intersector;->intersectSegments(FFFFFFFFLcom/badlogic/gdx/math/Vector2;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v12

    .line 848
    :cond_1
    iget v8, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    const/4 v11, 0x0

    move v3, p0

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    move v7, v1

    move v9, v1

    move v10, v2

    invoke-static/range {v3 .. v11}, Lcom/badlogic/gdx/math/Intersector;->intersectSegments(FFFFFFFFLcom/badlogic/gdx/math/Vector2;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 849
    return v12

    .line 851
    :cond_2
    iget v7, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    const/4 v11, 0x0

    move v3, p0

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    move v8, v2

    move v9, v1

    move v10, v2

    invoke-static/range {v3 .. v11}, Lcom/badlogic/gdx/math/Intersector;->intersectSegments(FFFFFFFFLcom/badlogic/gdx/math/Vector2;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 852
    return v12

    .line 854
    :cond_3
    move v3, p0

    move v4, p1

    invoke-virtual {v0, p0, p1}, Lcom/badlogic/gdx/math/Rectangle;->contains(FF)Z

    move-result v5

    return v5
.end method

.method public static intersectSegmentRectangle(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Rectangle;)Z
    .locals 4
    .param p0, "start"    # Lcom/badlogic/gdx/math/Vector2;
    .param p1, "end"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "rectangle"    # Lcom/badlogic/gdx/math/Rectangle;

    .line 859
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v0, v1, v2, v3, p2}, Lcom/badlogic/gdx/math/Intersector;->intersectSegmentRectangle(FFFFLcom/badlogic/gdx/math/Rectangle;)Z

    move-result v0

    return v0
.end method

.method public static intersectSegments(FFFFFFFFLcom/badlogic/gdx/math/Vector2;)Z
    .locals 10
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "x2"    # F
    .param p3, "y2"    # F
    .param p4, "x3"    # F
    .param p5, "y3"    # F
    .param p6, "x4"    # F
    .param p7, "y4"    # F
    .param p8, "intersection"    # Lcom/badlogic/gdx/math/Vector2;

    .line 920
    move-object/from16 v0, p8

    sub-float v1, p7, p5

    sub-float v2, p2, p0

    mul-float/2addr v1, v2

    sub-float v2, p6, p4

    sub-float v3, p3, p1

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 921
    .local v1, "d":F
    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return v4

    .line 923
    :cond_0
    sub-float v3, p1, p5

    .line 924
    .local v3, "yd":F
    sub-float v5, p0, p4

    .line 925
    .local v5, "xd":F
    sub-float v6, p6, p4

    mul-float/2addr v6, v3

    sub-float v7, p7, p5

    mul-float/2addr v7, v5

    sub-float/2addr v6, v7

    div-float/2addr v6, v1

    .line 926
    .local v6, "ua":F
    cmpg-float v7, v6, v2

    if-ltz v7, :cond_5

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v8, v6, v7

    if-lez v8, :cond_1

    goto :goto_1

    .line 928
    :cond_1
    sub-float v8, p2, p0

    mul-float/2addr v8, v3

    sub-float v9, p3, p1

    mul-float/2addr v9, v5

    sub-float/2addr v8, v9

    div-float/2addr v8, v1

    .line 929
    .local v8, "ub":F
    cmpg-float v2, v8, v2

    if-ltz v2, :cond_4

    cmpl-float v2, v8, v7

    if-lez v2, :cond_2

    goto :goto_0

    .line 931
    :cond_2
    if-eqz v0, :cond_3

    sub-float v2, p2, p0

    mul-float/2addr v2, v6

    add-float/2addr v2, p0

    sub-float v4, p3, p1

    mul-float/2addr v4, v6

    add-float/2addr v4, p1

    invoke-virtual {v0, v2, v4}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 932
    :cond_3
    const/4 v2, 0x1

    return v2

    .line 929
    :cond_4
    :goto_0
    return v4

    .line 926
    .end local v8    # "ub":F
    :cond_5
    :goto_1
    return v4
.end method

.method public static intersectSegments(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 22
    .param p0, "p1"    # Lcom/badlogic/gdx/math/Vector2;
    .param p1, "p2"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "p3"    # Lcom/badlogic/gdx/math/Vector2;
    .param p3, "p4"    # Lcom/badlogic/gdx/math/Vector2;
    .param p4, "intersection"    # Lcom/badlogic/gdx/math/Vector2;

    .line 900
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    iget v5, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .local v5, "x1":F
    iget v6, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .local v6, "y1":F
    iget v7, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .local v7, "x2":F
    iget v8, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    .local v8, "y2":F
    iget v9, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    .local v9, "x3":F
    iget v10, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    .local v10, "y3":F
    iget v11, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    .local v11, "x4":F
    iget v12, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 902
    .local v12, "y4":F
    sub-float v13, v12, v10

    sub-float v14, v7, v5

    mul-float/2addr v13, v14

    sub-float v14, v11, v9

    sub-float v15, v8, v6

    mul-float/2addr v14, v15

    sub-float/2addr v13, v14

    .line 903
    .local v13, "d":F
    const/4 v14, 0x0

    cmpl-float v15, v13, v14

    const/16 v16, 0x0

    if-nez v15, :cond_0

    return v16

    .line 905
    :cond_0
    sub-float v15, v6, v10

    .line 906
    .local v15, "yd":F
    sub-float v17, v5, v9

    .line 907
    .local v17, "xd":F
    sub-float v18, v11, v9

    mul-float v18, v18, v15

    sub-float v19, v12, v10

    mul-float v19, v19, v17

    sub-float v18, v18, v19

    div-float v18, v18, v13

    .line 908
    .local v18, "ua":F
    cmpg-float v19, v18, v14

    if-ltz v19, :cond_5

    const/high16 v19, 0x3f800000    # 1.0f

    cmpl-float v20, v18, v19

    if-lez v20, :cond_1

    goto :goto_1

    .line 910
    :cond_1
    sub-float v20, v7, v5

    mul-float v20, v20, v15

    sub-float v21, v8, v6

    mul-float v21, v21, v17

    sub-float v20, v20, v21

    div-float v20, v20, v13

    .line 911
    .local v20, "ub":F
    cmpg-float v14, v20, v14

    if-ltz v14, :cond_4

    cmpl-float v14, v20, v19

    if-lez v14, :cond_2

    goto :goto_0

    .line 913
    :cond_2
    if-eqz v4, :cond_3

    sub-float v14, v7, v5

    mul-float v14, v14, v18

    add-float/2addr v14, v5

    sub-float v16, v8, v6

    mul-float v16, v16, v18

    add-float v0, v6, v16

    invoke-virtual {v4, v14, v0}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 914
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 911
    :cond_4
    :goto_0
    return v16

    .line 908
    .end local v20    # "ub":F
    :cond_5
    :goto_1
    return v16
.end method

.method public static isPointInPolygon(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 10
    .param p1, "point"    # Lcom/badlogic/gdx/math/Vector2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/math/Vector2;",
            ">;",
            "Lcom/badlogic/gdx/math/Vector2;",
            ")Z"
        }
    .end annotation

    .line 114
    .local p0, "polygon":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/math/Vector2;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    .line 115
    .local v0, "last":Lcom/badlogic/gdx/math/Vector2;
    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .local v1, "x":F
    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 116
    .local v2, "y":F
    const/4 v3, 0x0

    .line 117
    .local v3, "oddNodes":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget v5, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v5, :cond_4

    .line 118
    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/math/Vector2;

    .line 119
    .local v5, "vertex":Lcom/badlogic/gdx/math/Vector2;
    iget v6, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpg-float v6, v6, v2

    if-gez v6, :cond_0

    iget v6, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpl-float v6, v6, v2

    if-gez v6, :cond_1

    :cond_0
    iget v6, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpg-float v6, v6, v2

    if-gez v6, :cond_3

    iget v6, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    cmpl-float v6, v6, v2

    if-ltz v6, :cond_3

    .line 120
    :cond_1
    iget v6, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v7, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v7, v2, v7

    iget v8, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v9, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v8, v9

    div-float/2addr v7, v8

    iget v8, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v9, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    cmpg-float v6, v6, v1

    if-gez v6, :cond_3

    if-nez v3, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    move v3, v6

    .line 122
    :cond_3
    move-object v0, v5

    .line 117
    .end local v5    # "vertex":Lcom/badlogic/gdx/math/Vector2;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 124
    .end local v4    # "i":I
    :cond_4
    return v3
.end method

.method public static isPointInPolygon([FIIFF)Z
    .locals 12
    .param p0, "polygon"    # [F
    .param p1, "offset"    # I
    .param p2, "count"    # I
    .param p3, "x"    # F
    .param p4, "y"    # F

    .line 131
    const/4 v0, 0x0

    .line 132
    .local v0, "oddNodes":Z
    aget v1, p0, p1

    .local v1, "sx":F
    add-int/lit8 v2, p1, 0x1

    aget v2, p0, v2

    .local v2, "sy":F
    move v3, v2

    .line 133
    .local v3, "y1":F
    add-int/lit8 v4, p1, 0x3

    .line 134
    .local v4, "yi":I
    add-int v5, p1, p2

    .local v5, "n":I
    :goto_0
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ge v4, v5, :cond_4

    .line 135
    aget v8, p0, v4

    .line 136
    .local v8, "y2":F
    cmpg-float v9, v8, p4

    if-gez v9, :cond_0

    cmpl-float v9, v3, p4

    if-gez v9, :cond_1

    :cond_0
    cmpg-float v9, v3, p4

    if-gez v9, :cond_3

    cmpl-float v9, v8, p4

    if-ltz v9, :cond_3

    .line 137
    :cond_1
    add-int/lit8 v9, v4, -0x1

    aget v9, p0, v9

    .line 138
    .local v9, "x2":F
    sub-float v10, p4, v8

    sub-float v11, v3, v8

    div-float/2addr v10, v11

    add-int/lit8 v11, v4, -0x3

    aget v11, p0, v11

    sub-float/2addr v11, v9

    mul-float/2addr v10, v11

    add-float/2addr v10, v9

    cmpg-float v10, v10, p3

    if-gez v10, :cond_3

    if-nez v0, :cond_2

    move v6, v7

    :cond_2
    move v0, v6

    .line 140
    .end local v9    # "x2":F
    :cond_3
    move v3, v8

    .line 134
    .end local v8    # "y2":F
    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    .line 142
    .end local v5    # "n":I
    :cond_4
    cmpg-float v5, v2, p4

    if-gez v5, :cond_5

    cmpl-float v5, v3, p4

    if-gez v5, :cond_6

    :cond_5
    cmpg-float v5, v3, p4

    if-gez v5, :cond_8

    cmpl-float v5, v2, p4

    if-ltz v5, :cond_8

    .line 143
    :cond_6
    sub-float v5, p4, v2

    sub-float v8, v3, v2

    div-float/2addr v5, v8

    add-int/lit8 v8, v4, -0x3

    aget v8, p0, v8

    sub-float/2addr v8, v1

    mul-float/2addr v5, v8

    add-float/2addr v5, v1

    cmpg-float v5, v5, p3

    if-gez v5, :cond_8

    if-nez v0, :cond_7

    move v6, v7

    :cond_7
    move v0, v6

    .line 145
    :cond_8
    return v0
.end method

.method public static isPointInTriangle(FFFFFFFF)Z
    .locals 9
    .param p0, "px"    # F
    .param p1, "py"    # F
    .param p2, "ax"    # F
    .param p3, "ay"    # F
    .param p4, "bx"    # F
    .param p5, "by"    # F
    .param p6, "cx"    # F
    .param p7, "cy"    # F

    .line 76
    sub-float v0, p0, p2

    .line 77
    .local v0, "px1":F
    sub-float v1, p1, p3

    .line 78
    .local v1, "py1":F
    sub-float v2, p4, p2

    mul-float/2addr v2, v1

    sub-float v3, p5, p3

    mul-float/2addr v3, v0

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v5

    .line 79
    .local v2, "side12":Z
    :goto_0
    sub-float v6, p6, p2

    mul-float/2addr v6, v1

    sub-float v7, p7, p3

    mul-float/2addr v7, v0

    sub-float/2addr v6, v7

    cmpl-float v6, v6, v3

    if-lez v6, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    move v6, v5

    :goto_1
    if-ne v6, v2, :cond_2

    return v5

    .line 80
    :cond_2
    sub-float v6, p6, p4

    sub-float v7, p1, p5

    mul-float/2addr v6, v7

    sub-float v7, p7, p5

    sub-float v8, p0, p4

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    cmpl-float v3, v6, v3

    if-lez v3, :cond_3

    move v3, v4

    goto :goto_2

    :cond_3
    move v3, v5

    :goto_2
    if-eq v3, v2, :cond_4

    return v5

    .line 81
    :cond_4
    return v4
.end method

.method public static isPointInTriangle(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 10
    .param p0, "p"    # Lcom/badlogic/gdx/math/Vector2;
    .param p1, "a"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "b"    # Lcom/badlogic/gdx/math/Vector2;
    .param p3, "c"    # Lcom/badlogic/gdx/math/Vector2;

    .line 66
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v0, v1

    .line 67
    .local v0, "px1":F
    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v1, v2

    .line 68
    .local v1, "py1":F
    iget v2, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v1

    iget v3, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v5

    .line 69
    .local v2, "side12":Z
    :goto_0
    iget v6, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v7, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    iget v7, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v8, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v7, v8

    mul-float/2addr v7, v0

    sub-float/2addr v6, v7

    cmpl-float v6, v6, v3

    if-lez v6, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    move v6, v5

    :goto_1
    if-ne v6, v2, :cond_2

    return v5

    .line 70
    :cond_2
    iget v6, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v7, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v8, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    iget v7, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v8, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v7, v8

    iget v8, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v9, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    cmpl-float v3, v6, v3

    if-lez v3, :cond_3

    move v3, v4

    goto :goto_2

    :cond_3
    move v3, v5

    :goto_2
    if-eq v3, v2, :cond_4

    return v5

    .line 71
    :cond_4
    return v4
.end method

.method public static isPointInTriangle(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 9
    .param p0, "point"    # Lcom/badlogic/gdx/math/Vector3;
    .param p1, "t1"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "t2"    # Lcom/badlogic/gdx/math/Vector3;
    .param p3, "t3"    # Lcom/badlogic/gdx/math/Vector3;

    .line 49
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->v0:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 50
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->v1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 51
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 53
    sget-object v0, Lcom/badlogic/gdx/math/Intersector;->v0:Lcom/badlogic/gdx/math/Vector3;

    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->v1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v0

    .line 54
    .local v0, "ab":F
    sget-object v1, Lcom/badlogic/gdx/math/Intersector;->v0:Lcom/badlogic/gdx/math/Vector3;

    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v1

    .line 55
    .local v1, "ac":F
    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->v1:Lcom/badlogic/gdx/math/Vector3;

    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v2

    .line 56
    .local v2, "bc":F
    sget-object v3, Lcom/badlogic/gdx/math/Intersector;->v2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v3, v3}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v3

    .line 58
    .local v3, "cc":F
    mul-float v4, v2, v1

    mul-float v5, v3, v0

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    const/4 v6, 0x0

    if-gez v4, :cond_0

    return v6

    .line 59
    :cond_0
    sget-object v4, Lcom/badlogic/gdx/math/Intersector;->v1:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v4, v4}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v4

    .line 60
    .local v4, "bb":F
    mul-float v7, v0, v2

    mul-float v8, v1, v4

    sub-float/2addr v7, v8

    cmpg-float v5, v7, v5

    if-gez v5, :cond_1

    return v6

    .line 61
    :cond_1
    const/4 v5, 0x1

    return v5
.end method

.method public static nearestSegmentPoint(FFFFFFLcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 7
    .param p0, "startX"    # F
    .param p1, "startY"    # F
    .param p2, "endX"    # F
    .param p3, "endY"    # F
    .param p4, "pointX"    # F
    .param p5, "pointY"    # F
    .param p6, "nearest"    # Lcom/badlogic/gdx/math/Vector2;

    .line 273
    sub-float v0, p2, p0

    .line 274
    .local v0, "xDiff":F
    sub-float v1, p3, p1

    .line 275
    .local v1, "yDiff":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    .line 276
    .local v2, "length2":F
    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-nez v4, :cond_0

    invoke-virtual {p6, p0, p1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    return-object v3

    .line 277
    :cond_0
    sub-float v4, p4, p0

    sub-float v5, p2, p0

    mul-float/2addr v4, v5

    sub-float v5, p5, p1

    sub-float v6, p3, p1

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    div-float/2addr v4, v2

    .line 278
    .local v4, "t":F
    cmpg-float v3, v4, v3

    if-gez v3, :cond_1

    invoke-virtual {p6, p0, p1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    return-object v3

    .line 279
    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v4, v3

    if-lez v3, :cond_2

    invoke-virtual {p6, p2, p3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    return-object v3

    .line 280
    :cond_2
    sub-float v3, p2, p0

    mul-float/2addr v3, v4

    add-float/2addr v3, p0

    sub-float v5, p3, p1

    mul-float/2addr v5, v4

    add-float/2addr v5, p1

    invoke-virtual {p6, v3, v5}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    return-object v3
.end method

.method public static nearestSegmentPoint(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 6
    .param p0, "start"    # Lcom/badlogic/gdx/math/Vector2;
    .param p1, "end"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "point"    # Lcom/badlogic/gdx/math/Vector2;
    .param p3, "nearest"    # Lcom/badlogic/gdx/math/Vector2;

    .line 262
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->dst2(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v0

    .line 263
    .local v0, "length2":F
    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    invoke-virtual {p3, p0}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    return-object v1

    .line 264
    :cond_0
    iget v2, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v2, v3

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    iget v3, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v4, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v3, v4

    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v5, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    div-float/2addr v2, v0

    .line 265
    .local v2, "t":F
    cmpg-float v1, v2, v1

    if-gez v1, :cond_1

    invoke-virtual {p3, p0}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    return-object v1

    .line 266
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v2, v1

    if-lez v1, :cond_2

    invoke-virtual {p3, p1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    return-object v1

    .line 267
    :cond_2
    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v5, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    invoke-virtual {p3, v1, v3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    return-object v1
.end method

.method public static overlapConvexPolygons(Lcom/badlogic/gdx/math/Polygon;Lcom/badlogic/gdx/math/Polygon;)Z
    .locals 1
    .param p0, "p1"    # Lcom/badlogic/gdx/math/Polygon;
    .param p1, "p2"    # Lcom/badlogic/gdx/math/Polygon;

    .line 980
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/badlogic/gdx/math/Intersector;->overlapConvexPolygons(Lcom/badlogic/gdx/math/Polygon;Lcom/badlogic/gdx/math/Polygon;Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;)Z

    move-result v0

    return v0
.end method

.method public static overlapConvexPolygons(Lcom/badlogic/gdx/math/Polygon;Lcom/badlogic/gdx/math/Polygon;Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;)Z
    .locals 2
    .param p0, "p1"    # Lcom/badlogic/gdx/math/Polygon;
    .param p1, "p2"    # Lcom/badlogic/gdx/math/Polygon;
    .param p2, "mtv"    # Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;

    .line 990
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

    move-result-object v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/math/Polygon;->getTransformedVertices()[F

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/badlogic/gdx/math/Intersector;->overlapConvexPolygons([F[FLcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;)Z

    move-result v0

    return v0
.end method

.method public static overlapConvexPolygons([FII[FIILcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;)Z
    .locals 29
    .param p0, "verts1"    # [F
    .param p1, "offset1"    # I
    .param p2, "count1"    # I
    .param p3, "verts2"    # [F
    .param p4, "offset2"    # I
    .param p5, "count2"    # I
    .param p6, "mtv"    # Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;

    .line 1007
    move-object/from16 v0, p6

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 1008
    .local v1, "overlap":F
    const/4 v2, 0x0

    .line 1009
    .local v2, "smallestAxisX":F
    const/4 v3, 0x0

    .line 1012
    .local v3, "smallestAxisY":F
    add-int v4, p1, p2

    .line 1013
    .local v4, "end1":I
    add-int v5, p4, p5

    .line 1016
    .local v5, "end2":I
    move/from16 v6, p1

    .local v6, "i":I
    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ge v6, v4, :cond_10

    .line 1017
    aget v15, p0, v6

    .line 1018
    .local v15, "x1":F
    add-int/lit8 v9, v6, 0x1

    aget v16, p0, v9

    .line 1019
    .local v16, "y1":F
    add-int/lit8 v9, v6, 0x2

    rem-int v9, v9, p2

    aget v17, p0, v9

    .line 1020
    .local v17, "x2":F
    add-int/lit8 v9, v6, 0x3

    rem-int v9, v9, p2

    aget v18, p0, v9

    .line 1022
    .local v18, "y2":F
    sub-float v9, v16, v18

    .line 1023
    .local v9, "axisX":F
    sub-float v10, v15, v17

    neg-float v10, v10

    .line 1025
    .local v10, "axisY":F
    mul-float v11, v9, v9

    mul-float v12, v10, v10

    add-float/2addr v11, v12

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-float v14, v11

    .line 1026
    .local v14, "length":F
    div-float v13, v9, v14

    .line 1027
    .end local v9    # "axisX":F
    .local v13, "axisX":F
    div-float v12, v10, v14

    .line 1032
    .end local v10    # "axisY":F
    .local v12, "axisY":F
    aget v9, p0, v7

    mul-float/2addr v9, v13

    aget v10, p0, v8

    mul-float/2addr v10, v12

    add-float/2addr v9, v10

    .line 1033
    .local v9, "min1":F
    move v10, v9

    .line 1034
    .local v10, "max1":F
    move/from16 v11, p1

    move/from16 v27, v11

    move v11, v9

    move/from16 v9, v27

    .local v9, "j":I
    .local v11, "min1":F
    :goto_1
    if-ge v9, v4, :cond_2

    .line 1035
    aget v19, p0, v9

    mul-float v19, v19, v13

    add-int/lit8 v20, v9, 0x1

    aget v20, p0, v20

    mul-float v20, v20, v12

    add-float v19, v19, v20

    .line 1036
    .local v19, "p":F
    cmpg-float v20, v19, v11

    if-gez v20, :cond_0

    .line 1037
    move/from16 v11, v19

    goto :goto_2

    .line 1038
    :cond_0
    cmpl-float v20, v19, v10

    if-lez v20, :cond_1

    .line 1039
    move/from16 v10, v19

    .line 1034
    .end local v19    # "p":F
    :cond_1
    :goto_2
    add-int/lit8 v9, v9, 0x2

    goto :goto_1

    .line 1044
    .end local v9    # "j":I
    :cond_2
    const/4 v9, 0x0

    .line 1045
    .local v9, "numInNormalDir":I
    aget v19, p3, v7

    mul-float v19, v19, v13

    aget v8, p3, v8

    mul-float/2addr v8, v12

    add-float v19, v19, v8

    .line 1046
    .local v19, "min2":F
    move/from16 v8, v19

    .line 1047
    .local v8, "max2":F
    move/from16 v20, p4

    move/from16 v7, v20

    move/from16 v27, v19

    move/from16 v19, v9

    move/from16 v9, v27

    .local v7, "j":I
    .local v9, "min2":F
    .local v19, "numInNormalDir":I
    :goto_3
    if-ge v7, v5, :cond_5

    .line 1049
    aget v21, p3, v7

    add-int/lit8 v22, v7, 0x1

    aget v22, p3, v22

    move/from16 v23, v2

    move v2, v9

    .end local v9    # "min2":F
    .local v2, "min2":F
    .local v23, "smallestAxisX":F
    move v9, v15

    move/from16 v24, v3

    move v3, v10

    .end local v10    # "max1":F
    .local v3, "max1":F
    .local v24, "smallestAxisY":F
    move/from16 v10, v16

    move/from16 v25, v15

    move v15, v11

    .end local v11    # "min1":F
    .local v15, "min1":F
    .local v25, "x1":F
    move/from16 v11, v17

    move v0, v12

    .end local v12    # "axisY":F
    .local v0, "axisY":F
    move/from16 v12, v18

    move/from16 v26, v4

    move v4, v13

    .end local v13    # "axisX":F
    .local v4, "axisX":F
    .local v26, "end1":I
    move/from16 v13, v21

    move/from16 v21, v14

    .end local v14    # "length":F
    .local v21, "length":F
    move/from16 v14, v22

    invoke-static/range {v9 .. v14}, Lcom/badlogic/gdx/math/Intersector;->pointLineSide(FFFFFF)I

    move-result v9

    sub-int v19, v19, v9

    .line 1050
    aget v9, p3, v7

    mul-float v13, v4, v9

    add-int/lit8 v9, v7, 0x1

    aget v9, p3, v9

    mul-float v12, v0, v9

    add-float/2addr v13, v12

    .line 1051
    .local v13, "p":F
    cmpg-float v9, v13, v2

    if-gez v9, :cond_3

    .line 1052
    move v2, v13

    move v9, v2

    goto :goto_4

    .line 1053
    :cond_3
    cmpl-float v9, v13, v8

    if-lez v9, :cond_4

    .line 1054
    move v8, v13

    move v9, v2

    goto :goto_4

    .line 1053
    :cond_4
    move v9, v2

    .line 1047
    .end local v2    # "min2":F
    .end local v13    # "p":F
    .restart local v9    # "min2":F
    :goto_4
    add-int/lit8 v7, v7, 0x2

    move v12, v0

    move v10, v3

    move v13, v4

    move v11, v15

    move/from16 v14, v21

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v15, v25

    move/from16 v4, v26

    move-object/from16 v0, p6

    goto :goto_3

    .end local v0    # "axisY":F
    .end local v21    # "length":F
    .end local v23    # "smallestAxisX":F
    .end local v24    # "smallestAxisY":F
    .end local v25    # "x1":F
    .end local v26    # "end1":I
    .local v2, "smallestAxisX":F
    .local v3, "smallestAxisY":F
    .local v4, "end1":I
    .restart local v10    # "max1":F
    .restart local v11    # "min1":F
    .restart local v12    # "axisY":F
    .local v13, "axisX":F
    .restart local v14    # "length":F
    .local v15, "x1":F
    :cond_5
    move/from16 v23, v2

    move/from16 v24, v3

    move/from16 v26, v4

    move v2, v9

    move v3, v10

    move v0, v12

    move v4, v13

    move/from16 v21, v14

    move/from16 v25, v15

    move v15, v11

    .line 1058
    .end local v7    # "j":I
    .end local v9    # "min2":F
    .end local v10    # "max1":F
    .end local v11    # "min1":F
    .end local v12    # "axisY":F
    .end local v13    # "axisX":F
    .end local v14    # "length":F
    .restart local v0    # "axisY":F
    .local v2, "min2":F
    .local v3, "max1":F
    .local v4, "axisX":F
    .local v15, "min1":F
    .restart local v21    # "length":F
    .restart local v23    # "smallestAxisX":F
    .restart local v24    # "smallestAxisY":F
    .restart local v25    # "x1":F
    .restart local v26    # "end1":I
    cmpg-float v7, v15, v2

    if-gtz v7, :cond_6

    cmpl-float v7, v3, v2

    if-gez v7, :cond_7

    :cond_6
    cmpg-float v7, v2, v15

    if-gtz v7, :cond_f

    cmpl-float v7, v8, v15

    if-gez v7, :cond_7

    goto :goto_9

    .line 1061
    :cond_7
    invoke-static {v3, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v15, v2}, Ljava/lang/Math;->max(FF)F

    move-result v9

    sub-float/2addr v7, v9

    .line 1062
    .local v7, "o":F
    cmpg-float v9, v15, v2

    if-gez v9, :cond_8

    cmpl-float v9, v3, v8

    if-gtz v9, :cond_9

    :cond_8
    cmpg-float v9, v2, v15

    if-gez v9, :cond_b

    cmpl-float v9, v8, v3

    if-lez v9, :cond_b

    .line 1063
    :cond_9
    sub-float v11, v15, v2

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 1064
    .local v9, "mins":F
    sub-float v10, v3, v8

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    .line 1065
    .local v10, "maxs":F
    cmpg-float v11, v9, v10

    if-gez v11, :cond_a

    .line 1066
    add-float/2addr v7, v9

    goto :goto_5

    .line 1068
    :cond_a
    add-float/2addr v7, v10

    .line 1071
    .end local v9    # "mins":F
    .end local v10    # "maxs":F
    :cond_b
    :goto_5
    cmpg-float v9, v7, v1

    if-gez v9, :cond_e

    .line 1072
    move v1, v7

    .line 1074
    if-ltz v19, :cond_c

    move v13, v4

    goto :goto_6

    :cond_c
    neg-float v13, v4

    :goto_6
    move v9, v13

    .line 1075
    .end local v23    # "smallestAxisX":F
    .local v9, "smallestAxisX":F
    if-ltz v19, :cond_d

    move v12, v0

    goto :goto_7

    :cond_d
    neg-float v12, v0

    :goto_7
    move v10, v12

    move v2, v9

    move v3, v10

    .end local v24    # "smallestAxisY":F
    .local v10, "smallestAxisY":F
    goto :goto_8

    .line 1071
    .end local v9    # "smallestAxisX":F
    .end local v10    # "smallestAxisY":F
    .restart local v23    # "smallestAxisX":F
    .restart local v24    # "smallestAxisY":F
    :cond_e
    move/from16 v2, v23

    move/from16 v3, v24

    .line 1016
    .end local v0    # "axisY":F
    .end local v4    # "axisX":F
    .end local v7    # "o":F
    .end local v8    # "max2":F
    .end local v15    # "min1":F
    .end local v16    # "y1":F
    .end local v17    # "x2":F
    .end local v18    # "y2":F
    .end local v21    # "length":F
    .end local v23    # "smallestAxisX":F
    .end local v24    # "smallestAxisY":F
    .end local v25    # "x1":F
    .local v2, "smallestAxisX":F
    .local v3, "smallestAxisY":F
    :goto_8
    add-int/lit8 v6, v6, 0x2

    move-object/from16 v0, p6

    move/from16 v4, v26

    goto/16 :goto_0

    .line 1059
    .restart local v0    # "axisY":F
    .local v2, "min2":F
    .local v3, "max1":F
    .restart local v4    # "axisX":F
    .restart local v8    # "max2":F
    .restart local v15    # "min1":F
    .restart local v16    # "y1":F
    .restart local v17    # "x2":F
    .restart local v18    # "y2":F
    .restart local v21    # "length":F
    .restart local v23    # "smallestAxisX":F
    .restart local v24    # "smallestAxisY":F
    .restart local v25    # "x1":F
    :cond_f
    :goto_9
    const/4 v7, 0x0

    return v7

    .line 1016
    .end local v0    # "axisY":F
    .end local v8    # "max2":F
    .end local v15    # "min1":F
    .end local v16    # "y1":F
    .end local v17    # "x2":F
    .end local v18    # "y2":F
    .end local v19    # "numInNormalDir":I
    .end local v21    # "length":F
    .end local v23    # "smallestAxisX":F
    .end local v24    # "smallestAxisY":F
    .end local v25    # "x1":F
    .end local v26    # "end1":I
    .local v2, "smallestAxisX":F
    .local v3, "smallestAxisY":F
    .local v4, "end1":I
    :cond_10
    move/from16 v23, v2

    move/from16 v24, v3

    move/from16 v26, v4

    .line 1082
    .end local v2    # "smallestAxisX":F
    .end local v3    # "smallestAxisY":F
    .end local v4    # "end1":I
    .end local v6    # "i":I
    .restart local v23    # "smallestAxisX":F
    .restart local v24    # "smallestAxisY":F
    .restart local v26    # "end1":I
    move/from16 v0, p4

    .end local v23    # "smallestAxisX":F
    .end local v24    # "smallestAxisY":F
    .local v0, "i":I
    .restart local v2    # "smallestAxisX":F
    .restart local v3    # "smallestAxisY":F
    :goto_a
    if-ge v0, v5, :cond_21

    .line 1083
    aget v4, p3, v0

    .line 1084
    .local v4, "x1":F
    add-int/lit8 v6, v0, 0x1

    aget v6, p3, v6

    .line 1085
    .local v6, "y1":F
    add-int/lit8 v7, v0, 0x2

    rem-int v7, v7, p5

    aget v7, p3, v7

    .line 1086
    .local v7, "x2":F
    add-int/lit8 v9, v0, 0x3

    rem-int v9, v9, p5

    aget v15, p3, v9

    .line 1088
    .local v15, "y2":F
    sub-float v9, v6, v15

    .line 1089
    .local v9, "axisX":F
    sub-float v10, v4, v7

    neg-float v10, v10

    .line 1091
    .local v10, "axisY":F
    mul-float v11, v9, v9

    mul-float v12, v10, v10

    add-float/2addr v11, v12

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-float v14, v11

    .line 1092
    .restart local v14    # "length":F
    div-float v13, v9, v14

    .line 1093
    .end local v9    # "axisX":F
    .restart local v13    # "axisX":F
    div-float v12, v10, v14

    .line 1096
    .end local v10    # "axisY":F
    .restart local v12    # "axisY":F
    const/4 v9, 0x0

    .line 1099
    .local v9, "numInNormalDir":I
    const/4 v10, 0x0

    aget v11, p0, v10

    mul-float/2addr v11, v13

    aget v10, p0, v8

    mul-float/2addr v10, v12

    add-float/2addr v11, v10

    .line 1100
    .restart local v11    # "min1":F
    move v10, v11

    .line 1101
    .local v10, "max1":F
    move/from16 v16, p1

    move/from16 v27, v16

    move/from16 v16, v9

    move/from16 v9, v27

    move/from16 v28, v11

    move/from16 v10, v28

    .local v9, "j":I
    .local v10, "min1":F
    .local v11, "max1":F
    .local v16, "numInNormalDir":I
    :goto_b
    move/from16 v8, v26

    .end local v26    # "end1":I
    .local v8, "end1":I
    if-ge v9, v8, :cond_13

    .line 1102
    aget v18, p0, v9

    mul-float v18, v18, v13

    add-int/lit8 v19, v9, 0x1

    aget v19, p0, v19

    mul-float v19, v19, v12

    add-float v18, v18, v19

    .line 1104
    .local v18, "p":F
    aget v19, p0, v9

    add-int/lit8 v21, v9, 0x1

    aget v21, p0, v21

    move/from16 v22, v9

    .end local v9    # "j":I
    .local v22, "j":I
    move v9, v4

    move/from16 v23, v4

    move v4, v10

    .end local v10    # "min1":F
    .local v4, "min1":F
    .local v23, "x1":F
    move v10, v6

    move/from16 v24, v6

    move v6, v11

    .end local v11    # "max1":F
    .local v6, "max1":F
    .local v24, "y1":F
    move v11, v7

    move/from16 v25, v7

    move v7, v12

    .end local v12    # "axisY":F
    .local v7, "axisY":F
    .local v25, "x2":F
    move v12, v15

    move/from16 v26, v8

    move v8, v13

    .end local v13    # "axisX":F
    .local v8, "axisX":F
    .restart local v26    # "end1":I
    move/from16 v13, v19

    move/from16 v19, v14

    .end local v14    # "length":F
    .local v19, "length":F
    move/from16 v14, v21

    invoke-static/range {v9 .. v14}, Lcom/badlogic/gdx/math/Intersector;->pointLineSide(FFFFFF)I

    move-result v9

    sub-int v16, v16, v9

    .line 1105
    cmpg-float v9, v18, v4

    if-gez v9, :cond_11

    .line 1106
    move/from16 v4, v18

    move v10, v4

    move v11, v6

    goto :goto_c

    .line 1107
    :cond_11
    cmpl-float v9, v18, v6

    if-lez v9, :cond_12

    .line 1108
    move/from16 v6, v18

    move v10, v4

    move v11, v6

    goto :goto_c

    .line 1107
    :cond_12
    move v10, v4

    move v11, v6

    .line 1101
    .end local v4    # "min1":F
    .end local v6    # "max1":F
    .end local v18    # "p":F
    .restart local v10    # "min1":F
    .restart local v11    # "max1":F
    :goto_c
    add-int/lit8 v9, v22, 0x2

    move v12, v7

    move v13, v8

    move/from16 v14, v19

    move/from16 v4, v23

    move/from16 v6, v24

    move/from16 v7, v25

    const/4 v8, 0x1

    .end local v22    # "j":I
    .restart local v9    # "j":I
    goto :goto_b

    .end local v19    # "length":F
    .end local v23    # "x1":F
    .end local v24    # "y1":F
    .end local v25    # "x2":F
    .end local v26    # "end1":I
    .local v4, "x1":F
    .local v6, "y1":F
    .local v7, "x2":F
    .local v8, "end1":I
    .restart local v12    # "axisY":F
    .restart local v13    # "axisX":F
    .restart local v14    # "length":F
    :cond_13
    move/from16 v23, v4

    move/from16 v24, v6

    move/from16 v25, v7

    move/from16 v26, v8

    move/from16 v22, v9

    move v4, v10

    move v6, v11

    move v7, v12

    move v8, v13

    move/from16 v19, v14

    .line 1113
    .end local v9    # "j":I
    .end local v10    # "min1":F
    .end local v11    # "max1":F
    .end local v12    # "axisY":F
    .end local v13    # "axisX":F
    .end local v14    # "length":F
    .local v4, "min1":F
    .local v6, "max1":F
    .local v7, "axisY":F
    .local v8, "axisX":F
    .restart local v19    # "length":F
    .restart local v23    # "x1":F
    .restart local v24    # "y1":F
    .restart local v25    # "x2":F
    .restart local v26    # "end1":I
    const/4 v9, 0x0

    aget v10, p3, v9

    mul-float v13, v8, v10

    const/4 v9, 0x1

    aget v10, p3, v9

    mul-float v12, v7, v10

    add-float/2addr v13, v12

    .line 1114
    .local v13, "min2":F
    move v9, v13

    .line 1115
    .local v9, "max2":F
    move/from16 v10, p4

    .local v10, "j":I
    :goto_d
    if-ge v10, v5, :cond_16

    .line 1116
    aget v11, p3, v10

    mul-float/2addr v11, v8

    add-int/lit8 v12, v10, 0x1

    aget v12, p3, v12

    mul-float/2addr v12, v7

    add-float/2addr v11, v12

    .line 1117
    .local v11, "p":F
    cmpg-float v12, v11, v13

    if-gez v12, :cond_14

    .line 1118
    move v12, v11

    move v13, v12

    .end local v13    # "min2":F
    .local v12, "min2":F
    goto :goto_e

    .line 1119
    .end local v12    # "min2":F
    .restart local v13    # "min2":F
    :cond_14
    cmpl-float v12, v11, v9

    if-lez v12, :cond_15

    .line 1120
    move v9, v11

    .line 1115
    .end local v11    # "p":F
    :cond_15
    :goto_e
    add-int/lit8 v10, v10, 0x2

    goto :goto_d

    .line 1124
    .end local v10    # "j":I
    :cond_16
    cmpg-float v10, v4, v13

    if-gtz v10, :cond_17

    cmpl-float v10, v6, v13

    if-gez v10, :cond_18

    :cond_17
    cmpg-float v10, v13, v4

    if-gtz v10, :cond_20

    cmpl-float v10, v9, v4

    if-gez v10, :cond_18

    goto :goto_12

    .line 1127
    :cond_18
    invoke-static {v6, v9}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v4, v13}, Ljava/lang/Math;->max(FF)F

    move-result v11

    sub-float/2addr v10, v11

    .line 1129
    .local v10, "o":F
    cmpg-float v11, v4, v13

    if-gez v11, :cond_19

    cmpl-float v11, v6, v9

    if-gtz v11, :cond_1a

    :cond_19
    cmpg-float v11, v13, v4

    if-gez v11, :cond_1c

    cmpl-float v11, v9, v6

    if-lez v11, :cond_1c

    .line 1130
    :cond_1a
    sub-float v11, v4, v13

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 1131
    .local v11, "mins":F
    sub-float v12, v6, v9

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    .line 1132
    .local v12, "maxs":F
    cmpg-float v14, v11, v12

    if-gez v14, :cond_1b

    .line 1133
    add-float/2addr v10, v11

    goto :goto_f

    .line 1135
    :cond_1b
    add-float/2addr v10, v12

    .line 1139
    .end local v11    # "mins":F
    .end local v12    # "maxs":F
    :cond_1c
    :goto_f
    cmpg-float v11, v10, v1

    if-gez v11, :cond_1f

    .line 1140
    move v1, v10

    .line 1142
    if-gez v16, :cond_1d

    move v11, v8

    goto :goto_10

    :cond_1d
    neg-float v11, v8

    :goto_10
    move v2, v11

    .line 1143
    if-gez v16, :cond_1e

    move v12, v7

    goto :goto_11

    :cond_1e
    neg-float v12, v7

    :goto_11
    move v3, v12

    .line 1082
    .end local v4    # "min1":F
    .end local v6    # "max1":F
    .end local v7    # "axisY":F
    .end local v8    # "axisX":F
    .end local v9    # "max2":F
    .end local v10    # "o":F
    .end local v13    # "min2":F
    .end local v15    # "y2":F
    .end local v19    # "length":F
    .end local v23    # "x1":F
    .end local v24    # "y1":F
    .end local v25    # "x2":F
    :cond_1f
    add-int/lit8 v0, v0, 0x2

    const/4 v8, 0x1

    goto/16 :goto_a

    .line 1125
    .restart local v4    # "min1":F
    .restart local v6    # "max1":F
    .restart local v7    # "axisY":F
    .restart local v8    # "axisX":F
    .restart local v9    # "max2":F
    .restart local v13    # "min2":F
    .restart local v15    # "y2":F
    .restart local v19    # "length":F
    .restart local v23    # "x1":F
    .restart local v24    # "y1":F
    .restart local v25    # "x2":F
    :cond_20
    :goto_12
    const/4 v10, 0x0

    return v10

    .line 1148
    .end local v0    # "i":I
    .end local v4    # "min1":F
    .end local v6    # "max1":F
    .end local v7    # "axisY":F
    .end local v8    # "axisX":F
    .end local v9    # "max2":F
    .end local v13    # "min2":F
    .end local v15    # "y2":F
    .end local v16    # "numInNormalDir":I
    .end local v19    # "length":F
    .end local v23    # "x1":F
    .end local v24    # "y1":F
    .end local v25    # "x2":F
    :cond_21
    move-object/from16 v0, p6

    if-eqz v0, :cond_22

    .line 1149
    iget-object v4, v0, Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;->normal:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v4, v2, v3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 1150
    iput v1, v0, Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;->depth:F

    .line 1152
    :cond_22
    const/4 v4, 0x1

    return v4
.end method

.method public static overlapConvexPolygons([F[FLcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;)Z
    .locals 7
    .param p0, "verts1"    # [F
    .param p1, "verts2"    # [F
    .param p2, "mtv"    # Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;

    .line 995
    array-length v2, p0

    array-length v5, p1

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/math/Intersector;->overlapConvexPolygons([FII[FIILcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;)Z

    move-result v0

    return v0
.end method

.method public static overlaps(Lcom/badlogic/gdx/math/Circle;Lcom/badlogic/gdx/math/Circle;)Z
    .locals 1
    .param p0, "c1"    # Lcom/badlogic/gdx/math/Circle;
    .param p1, "c2"    # Lcom/badlogic/gdx/math/Circle;

    .line 944
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Circle;->overlaps(Lcom/badlogic/gdx/math/Circle;)Z

    move-result v0

    return v0
.end method

.method public static overlaps(Lcom/badlogic/gdx/math/Circle;Lcom/badlogic/gdx/math/Rectangle;)Z
    .locals 5
    .param p0, "c"    # Lcom/badlogic/gdx/math/Circle;
    .param p1, "r"    # Lcom/badlogic/gdx/math/Rectangle;

    .line 952
    iget v0, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    .line 953
    .local v0, "closestX":F
    iget v1, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    .line 955
    .local v1, "closestY":F
    iget v2, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 956
    iget v0, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    goto :goto_0

    .line 957
    :cond_0
    iget v2, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v4, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 958
    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float v0, v2, v3

    .line 961
    :cond_1
    :goto_0
    iget v2, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    iget v3, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 962
    iget v1, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    goto :goto_1

    .line 963
    :cond_2
    iget v2, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    iget v3, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v4, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 964
    iget v2, p1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v3, p1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float v1, v2, v3

    .line 967
    :cond_3
    :goto_1
    iget v2, p0, Lcom/badlogic/gdx/math/Circle;->x:F

    sub-float/2addr v0, v2

    .line 968
    mul-float/2addr v0, v0

    .line 969
    iget v2, p0, Lcom/badlogic/gdx/math/Circle;->y:F

    sub-float/2addr v1, v2

    .line 970
    mul-float/2addr v1, v1

    .line 972
    add-float v2, v0, v1

    iget v3, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    iget v4, p0, Lcom/badlogic/gdx/math/Circle;->radius:F

    mul-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    return v2
.end method

.method public static overlaps(Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/math/Rectangle;)Z
    .locals 1
    .param p0, "r1"    # Lcom/badlogic/gdx/math/Rectangle;
    .param p1, "r2"    # Lcom/badlogic/gdx/math/Rectangle;

    .line 948
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Rectangle;->overlaps(Lcom/badlogic/gdx/math/Rectangle;)Z

    move-result v0

    return v0
.end method

.method public static pointLineSide(FFFFFF)I
    .locals 3
    .param p0, "linePoint1X"    # F
    .param p1, "linePoint1Y"    # F
    .param p2, "linePoint2X"    # F
    .param p3, "linePoint2Y"    # F
    .param p4, "pointX"    # F
    .param p5, "pointY"    # F

    .line 105
    sub-float v0, p2, p0

    sub-float v1, p5, p1

    mul-float/2addr v0, v1

    sub-float v1, p3, p1

    sub-float v2, p4, p0

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 106
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    float-to-int v0, v0

    .line 105
    return v0
.end method

.method public static pointLineSide(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)I
    .locals 4
    .param p0, "linePoint1"    # Lcom/badlogic/gdx/math/Vector2;
    .param p1, "linePoint2"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "point"    # Lcom/badlogic/gdx/math/Vector2;

    .line 99
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v0, v1

    iget v1, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v1, v2

    iget v2, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private static splitEdge([FIIILcom/badlogic/gdx/math/Plane;[FI)V
    .locals 8
    .param p0, "vertices"    # [F
    .param p1, "s"    # I
    .param p2, "e"    # I
    .param p3, "stride"    # I
    .param p4, "plane"    # Lcom/badlogic/gdx/math/Plane;
    .param p5, "split"    # [F
    .param p6, "offset"    # I

    .line 1276
    aget v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    aget v1, p0, v1

    add-int/lit8 v2, p1, 0x2

    aget v2, p0, v2

    aget v3, p0, p2

    add-int/lit8 v4, p2, 0x1

    aget v4, p0, v4

    add-int/lit8 v5, p2, 0x2

    aget v5, p0, v5

    sget-object v7, Lcom/badlogic/gdx/math/Intersector;->intersection:Lcom/badlogic/gdx/math/Vector3;

    move-object v6, p4

    invoke-static/range {v0 .. v7}, Lcom/badlogic/gdx/math/Intersector;->intersectLinePlane(FFFFFFLcom/badlogic/gdx/math/Plane;Lcom/badlogic/gdx/math/Vector3;)F

    move-result v0

    .line 1278
    .local v0, "t":F
    add-int/lit8 v1, p6, 0x0

    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->intersection:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    aput v2, p5, v1

    .line 1279
    add-int/lit8 v1, p6, 0x1

    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->intersection:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    aput v2, p5, v1

    .line 1280
    add-int/lit8 v1, p6, 0x2

    sget-object v2, Lcom/badlogic/gdx/math/Intersector;->intersection:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    aput v2, p5, v1

    .line 1281
    const/4 v1, 0x3

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 1282
    add-int v2, p1, v1

    aget v2, p0, v2

    .line 1283
    .local v2, "a":F
    add-int v3, p2, v1

    aget v3, p0, v3

    .line 1284
    .local v3, "b":F
    add-int v4, p6, v1

    sub-float v5, v3, v2

    mul-float/2addr v5, v0

    add-float/2addr v5, v2

    aput v5, p5, v4

    .line 1281
    .end local v2    # "a":F
    .end local v3    # "b":F
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1286
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public static splitTriangle([FLcom/badlogic/gdx/math/Plane;Lcom/badlogic/gdx/math/Intersector$SplitTriangle;)V
    .locals 20
    .param p0, "triangle"    # [F
    .param p1, "plane"    # Lcom/badlogic/gdx/math/Plane;
    .param p2, "split"    # Lcom/badlogic/gdx/math/Intersector$SplitTriangle;

    .line 1175
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    array-length v0, v7

    const/4 v1, 0x3

    div-int/lit8 v10, v0, 0x3

    .line 1176
    .local v10, "stride":I
    const/4 v11, 0x0

    aget v0, v7, v11

    const/4 v12, 0x1

    aget v2, v7, v12

    const/4 v13, 0x2

    aget v3, v7, v13

    invoke-virtual {v8, v0, v2, v3}, Lcom/badlogic/gdx/math/Plane;->testPoint(FFF)Lcom/badlogic/gdx/math/Plane$PlaneSide;

    move-result-object v0

    sget-object v2, Lcom/badlogic/gdx/math/Plane$PlaneSide;->Back:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    if-ne v0, v2, :cond_0

    move v0, v12

    goto :goto_0

    :cond_0
    move v0, v11

    :goto_0
    move v14, v0

    .line 1177
    .local v14, "r1":Z
    add-int/lit8 v0, v10, 0x0

    aget v0, v7, v0

    add-int/lit8 v2, v10, 0x1

    aget v2, v7, v2

    add-int/lit8 v3, v10, 0x2

    aget v3, v7, v3

    invoke-virtual {v8, v0, v2, v3}, Lcom/badlogic/gdx/math/Plane;->testPoint(FFF)Lcom/badlogic/gdx/math/Plane$PlaneSide;

    move-result-object v0

    sget-object v2, Lcom/badlogic/gdx/math/Plane$PlaneSide;->Back:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    if-ne v0, v2, :cond_1

    move v0, v12

    goto :goto_1

    :cond_1
    move v0, v11

    :goto_1
    move v15, v0

    .line 1178
    .local v15, "r2":Z
    mul-int/lit8 v0, v10, 0x2

    add-int/2addr v0, v11

    aget v0, v7, v0

    mul-int/lit8 v2, v10, 0x2

    add-int/2addr v2, v12

    aget v2, v7, v2

    mul-int/lit8 v3, v10, 0x2

    add-int/2addr v3, v13

    aget v3, v7, v3

    invoke-virtual {v8, v0, v2, v3}, Lcom/badlogic/gdx/math/Plane;->testPoint(FFF)Lcom/badlogic/gdx/math/Plane$PlaneSide;

    move-result-object v0

    sget-object v2, Lcom/badlogic/gdx/math/Plane$PlaneSide;->Back:Lcom/badlogic/gdx/math/Plane$PlaneSide;

    if-ne v0, v2, :cond_2

    move v0, v12

    goto :goto_2

    :cond_2
    move v0, v11

    :goto_2
    move v6, v0

    .line 1181
    .local v6, "r3":Z
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->reset()V

    .line 1184
    if-ne v14, v15, :cond_4

    if-ne v15, v6, :cond_4

    .line 1185
    iput v12, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->total:I

    .line 1186
    if-eqz v14, :cond_3

    .line 1187
    iput v12, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->numBack:I

    .line 1188
    iget-object v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->back:[F

    array-length v1, v7

    invoke-static {v7, v11, v0, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    .line 1190
    :cond_3
    iput v12, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->numFront:I

    .line 1191
    iget-object v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->front:[F

    array-length v1, v7

    invoke-static {v7, v11, v0, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1193
    :goto_3
    return-void

    .line 1197
    :cond_4
    iput v1, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->total:I

    .line 1198
    if-eqz v14, :cond_5

    move v0, v11

    goto :goto_4

    :cond_5
    move v0, v12

    :goto_4
    if-eqz v15, :cond_6

    move v1, v11

    goto :goto_5

    :cond_6
    move v1, v12

    :goto_5
    add-int/2addr v0, v1

    if-eqz v6, :cond_7

    move v1, v11

    goto :goto_6

    :cond_7
    move v1, v12

    :goto_6
    add-int/2addr v0, v1

    iput v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->numFront:I

    .line 1199
    iget v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->total:I

    iget v1, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->numFront:I

    sub-int/2addr v0, v1

    iput v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->numBack:I

    .line 1204
    if-nez v14, :cond_8

    move v0, v12

    goto :goto_7

    :cond_8
    move v0, v11

    :goto_7
    invoke-virtual {v9, v0}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->setSide(Z)V

    .line 1207
    const/4 v5, 0x0

    .line 1208
    .local v5, "first":I
    move v2, v10

    .line 1209
    .local v2, "second":I
    if-eq v14, v15, :cond_9

    .line 1211
    iget-object v4, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->edgeSplit:[F

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move v3, v10

    move-object/from16 v17, v4

    move-object/from16 v4, p1

    move v13, v5

    .end local v5    # "first":I
    .local v13, "first":I
    move-object/from16 v5, v17

    move/from16 v18, v6

    .end local v6    # "r3":Z
    .local v18, "r3":Z
    move/from16 v6, v16

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/math/Intersector;->splitEdge([FIIILcom/badlogic/gdx/math/Plane;[FI)V

    .line 1214
    invoke-virtual {v9, v7, v13, v10}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    .line 1215
    iget-object v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->edgeSplit:[F

    invoke-virtual {v9, v0, v11, v10}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    .line 1218
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->getSide()Z

    move-result v0

    xor-int/2addr v0, v12

    invoke-virtual {v9, v0}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->setSide(Z)V

    .line 1219
    iget-object v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->edgeSplit:[F

    invoke-virtual {v9, v0, v11, v10}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    goto :goto_8

    .line 1222
    .end local v13    # "first":I
    .end local v18    # "r3":Z
    .restart local v5    # "first":I
    .restart local v6    # "r3":Z
    :cond_9
    move v13, v5

    move/from16 v18, v6

    .end local v5    # "first":I
    .end local v6    # "r3":Z
    .restart local v13    # "first":I
    .restart local v18    # "r3":Z
    invoke-virtual {v9, v7, v13, v10}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    .line 1226
    :goto_8
    move v13, v10

    .line 1227
    add-int v16, v10, v10

    .line 1228
    .end local v2    # "second":I
    .local v16, "second":I
    move/from16 v6, v18

    .end local v18    # "r3":Z
    .restart local v6    # "r3":Z
    if-eq v15, v6, :cond_a

    .line 1230
    iget-object v5, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->edgeSplit:[F

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move v1, v13

    move/from16 v2, v16

    move v3, v10

    move-object/from16 v4, p1

    move/from16 v19, v6

    .end local v6    # "r3":Z
    .local v19, "r3":Z
    move/from16 v6, v17

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/math/Intersector;->splitEdge([FIIILcom/badlogic/gdx/math/Plane;[FI)V

    .line 1233
    invoke-virtual {v9, v7, v13, v10}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    .line 1234
    iget-object v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->edgeSplit:[F

    invoke-virtual {v9, v0, v11, v10}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    .line 1237
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->getSide()Z

    move-result v0

    xor-int/2addr v0, v12

    invoke-virtual {v9, v0}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->setSide(Z)V

    .line 1238
    iget-object v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->edgeSplit:[F

    invoke-virtual {v9, v0, v11, v10}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    goto :goto_9

    .line 1241
    .end local v19    # "r3":Z
    .restart local v6    # "r3":Z
    :cond_a
    move/from16 v19, v6

    .end local v6    # "r3":Z
    .restart local v19    # "r3":Z
    invoke-virtual {v9, v7, v13, v10}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    .line 1245
    :goto_9
    add-int v13, v10, v10

    .line 1246
    const/16 v16, 0x0

    .line 1247
    move/from16 v6, v19

    .end local v19    # "r3":Z
    .restart local v6    # "r3":Z
    if-eq v6, v14, :cond_b

    .line 1249
    iget-object v5, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->edgeSplit:[F

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move v1, v13

    move/from16 v2, v16

    move v3, v10

    move-object/from16 v4, p1

    move/from16 v18, v6

    .end local v6    # "r3":Z
    .restart local v18    # "r3":Z
    move/from16 v6, v17

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/math/Intersector;->splitEdge([FIIILcom/badlogic/gdx/math/Plane;[FI)V

    .line 1252
    invoke-virtual {v9, v7, v13, v10}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    .line 1253
    iget-object v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->edgeSplit:[F

    invoke-virtual {v9, v0, v11, v10}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    .line 1256
    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->getSide()Z

    move-result v0

    xor-int/2addr v0, v12

    invoke-virtual {v9, v0}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->setSide(Z)V

    .line 1257
    iget-object v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->edgeSplit:[F

    invoke-virtual {v9, v0, v11, v10}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    goto :goto_a

    .line 1260
    .end local v18    # "r3":Z
    .restart local v6    # "r3":Z
    :cond_b
    move/from16 v18, v6

    .end local v6    # "r3":Z
    .restart local v18    # "r3":Z
    invoke-virtual {v9, v7, v13, v10}, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->add([FII)V

    .line 1264
    :goto_a
    iget v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->numFront:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    .line 1265
    iget-object v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->front:[F

    mul-int/lit8 v1, v10, 0x2

    iget-object v2, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->front:[F

    mul-int/lit8 v3, v10, 0x3

    mul-int/lit8 v4, v10, 0x2

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1266
    iget-object v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->front:[F

    iget-object v1, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->front:[F

    mul-int/lit8 v2, v10, 0x5

    invoke-static {v0, v11, v1, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_b

    .line 1268
    :cond_c
    iget-object v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->back:[F

    mul-int/lit8 v1, v10, 0x2

    iget-object v2, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->back:[F

    mul-int/lit8 v3, v10, 0x3

    mul-int/lit8 v4, v10, 0x2

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1269
    iget-object v0, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->back:[F

    iget-object v1, v9, Lcom/badlogic/gdx/math/Intersector$SplitTriangle;->back:[F

    mul-int/lit8 v2, v10, 0x5

    invoke-static {v0, v11, v1, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1271
    :goto_b
    return-void
.end method
