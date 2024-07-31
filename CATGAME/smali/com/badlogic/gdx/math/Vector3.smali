.class public Lcom/badlogic/gdx/math/Vector3;
.super Ljava/lang/Object;
.source "Vector3.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/badlogic/gdx/math/Vector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Lcom/badlogic/gdx/math/Vector<",
        "Lcom/badlogic/gdx/math/Vector3;",
        ">;"
    }
.end annotation


# static fields
.field public static final X:Lcom/badlogic/gdx/math/Vector3;

.field public static final Y:Lcom/badlogic/gdx/math/Vector3;

.field public static final Z:Lcom/badlogic/gdx/math/Vector3;

.field public static final Zero:Lcom/badlogic/gdx/math/Vector3;

.field private static final serialVersionUID:J = 0x354a9d4dc2f0cbeaL

.field private static final tmpMat:Lcom/badlogic/gdx/math/Matrix4;


# instance fields
.field public x:F

.field public y:F

.field public z:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 36
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    sput-object v0, Lcom/badlogic/gdx/math/Vector3;->X:Lcom/badlogic/gdx/math/Vector3;

    .line 37
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0, v2, v1, v2}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    sput-object v0, Lcom/badlogic/gdx/math/Vector3;->Y:Lcom/badlogic/gdx/math/Vector3;

    .line 38
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0, v2, v2, v1}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    sput-object v0, Lcom/badlogic/gdx/math/Vector3;->Z:Lcom/badlogic/gdx/math/Vector3;

    .line 39
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0, v2, v2, v2}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    sput-object v0, Lcom/badlogic/gdx/math/Vector3;->Zero:Lcom/badlogic/gdx/math/Vector3;

    .line 41
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Vector3;->tmpMat:Lcom/badlogic/gdx/math/Matrix4;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Vector2;F)V
    .locals 2
    .param p1, "vector"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "z"    # F

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v0, v1, p2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 74
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Vector3;)V
    .locals 0
    .param p1, "vector"    # Lcom/badlogic/gdx/math/Vector3;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 59
    return-void
.end method

.method public constructor <init>([F)V
    .locals 3
    .param p1, "values"    # [F

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v2, 0x2

    aget v2, p1, v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 66
    return-void
.end method

.method public static dot(FFFFFF)F
    .locals 2
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "z1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "z2"    # F

    .line 308
    mul-float v0, p0, p3

    mul-float v1, p1, p4

    add-float/2addr v0, v1

    mul-float v1, p2, p5

    add-float/2addr v0, v1

    return v0
.end method

.method public static dst(FFFFFF)F
    .locals 5
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "z1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "z2"    # F

    .line 249
    sub-float v0, p3, p0

    .line 250
    .local v0, "a":F
    sub-float v1, p4, p1

    .line 251
    .local v1, "b":F
    sub-float v2, p5, p2

    .line 252
    .local v2, "c":F
    mul-float v3, v0, v0

    mul-float v4, v1, v1

    add-float/2addr v3, v4

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    return v3
.end method

.method public static dst2(FFFFFF)F
    .locals 5
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "z1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "z2"    # F

    .line 273
    sub-float v0, p3, p0

    .line 274
    .local v0, "a":F
    sub-float v1, p4, p1

    .line 275
    .local v1, "b":F
    sub-float v2, p5, p2

    .line 276
    .local v2, "c":F
    mul-float v3, v0, v0

    mul-float v4, v1, v1

    add-float/2addr v3, v4

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    return v3
.end method

.method public static len(FFF)F
    .locals 2
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "z"    # F

    .line 223
    mul-float v0, p0, p0

    mul-float v1, p1, p1

    add-float/2addr v0, v1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static len2(FFF)F
    .locals 2
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "z"    # F

    .line 233
    mul-float v0, p0, p0

    mul-float v1, p1, p1

    add-float/2addr v0, v1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public add(F)Lcom/badlogic/gdx/math/Vector3;
    .locals 3
    .param p1, "values"    # F

    .line 160
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v1, p1

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v2, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public add(FFF)Lcom/badlogic/gdx/math/Vector3;
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .line 152
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v1, p2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v2, p3

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 3
    .param p1, "vector"    # Lcom/badlogic/gdx/math/Vector3;

    .line 143
    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->add(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic add(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
    .locals 0

    .line 26
    check-cast p1, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public clamp(FF)Lcom/badlogic/gdx/math/Vector3;
    .locals 5
    .param p1, "min"    # F
    .param p2, "max"    # F

    .line 645
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector3;->len2()F

    move-result v0

    .line 646
    .local v0, "len2":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    return-object p0

    .line 647
    :cond_0
    mul-float v1, p2, p2

    .line 648
    .local v1, "max2":F
    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    div-float v2, v1, v0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    return-object v2

    .line 649
    :cond_1
    mul-float v2, p1, p1

    .line 650
    .local v2, "min2":F
    cmpg-float v3, v0, v2

    if-gez v3, :cond_2

    div-float v3, v2, v0

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v3

    return-object v3

    .line 651
    :cond_2
    return-object p0
.end method

.method public bridge synthetic clamp(FF)Lcom/badlogic/gdx/math/Vector;
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector3;->clamp(FF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public cpy()Lcom/badlogic/gdx/math/Vector3;
    .locals 1

    .line 138
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/math/Vector3;-><init>(Lcom/badlogic/gdx/math/Vector3;)V

    return-object v0
.end method

.method public bridge synthetic cpy()Lcom/badlogic/gdx/math/Vector;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector3;->cpy()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public crs(FFF)Lcom/badlogic/gdx/math/Vector3;
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .line 338
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float v1, v0, p3

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float v3, v2, p2

    sub-float/2addr v1, v3

    mul-float/2addr v2, p1

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float v4, v3, p3

    sub-float/2addr v2, v4

    mul-float/2addr v3, p2

    mul-float/2addr v0, p1

    sub-float/2addr v3, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 7
    .param p1, "vector"    # Lcom/badlogic/gdx/math/Vector3;

    .line 329
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float v2, v0, v1

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v4, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float v5, v3, v4

    sub-float/2addr v2, v5

    iget v5, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v3, v5

    iget v6, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v1, v6

    sub-float/2addr v3, v1

    mul-float/2addr v6, v4

    mul-float/2addr v0, v5

    sub-float/2addr v6, v0

    invoke-virtual {p0, v2, v3, v6}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public dot(FFF)F
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .line 322
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    return v0
.end method

.method public dot(Lcom/badlogic/gdx/math/Vector3;)F
    .locals 3
    .param p1, "vector"    # Lcom/badlogic/gdx/math/Vector3;

    .line 313
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public bridge synthetic dot(Lcom/badlogic/gdx/math/Vector;)F
    .locals 0

    .line 26
    check-cast p1, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result p1

    return p1
.end method

.method public dst(FFF)F
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .line 265
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float v0, p1, v0

    .line 266
    .local v0, "a":F
    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float v1, p2, v1

    .line 267
    .local v1, "b":F
    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float v2, p3, v2

    .line 268
    .local v2, "c":F
    mul-float v3, v0, v0

    mul-float v4, v1, v1

    add-float/2addr v3, v4

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    return v3
.end method

.method public dst(Lcom/badlogic/gdx/math/Vector3;)F
    .locals 5
    .param p1, "vector"    # Lcom/badlogic/gdx/math/Vector3;

    .line 257
    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v0, v1

    .line 258
    .local v0, "a":F
    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v1, v2

    .line 259
    .local v1, "b":F
    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr v2, v3

    .line 260
    .local v2, "c":F
    mul-float v3, v0, v0

    mul-float v4, v1, v1

    add-float/2addr v3, v4

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    return v3
.end method

.method public bridge synthetic dst(Lcom/badlogic/gdx/math/Vector;)F
    .locals 0

    .line 26
    check-cast p1, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->dst(Lcom/badlogic/gdx/math/Vector3;)F

    move-result p1

    return p1
.end method

.method public dst2(FFF)F
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .line 293
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float v0, p1, v0

    .line 294
    .local v0, "a":F
    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float v1, p2, v1

    .line 295
    .local v1, "b":F
    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float v2, p3, v2

    .line 296
    .local v2, "c":F
    mul-float v3, v0, v0

    mul-float v4, v1, v1

    add-float/2addr v3, v4

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    return v3
.end method

.method public dst2(Lcom/badlogic/gdx/math/Vector3;)F
    .locals 5
    .param p1, "point"    # Lcom/badlogic/gdx/math/Vector3;

    .line 281
    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v0, v1

    .line 282
    .local v0, "a":F
    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v1, v2

    .line 283
    .local v1, "b":F
    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr v2, v3

    .line 284
    .local v2, "c":F
    mul-float v3, v0, v0

    mul-float v4, v1, v1

    add-float/2addr v3, v4

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    return v3
.end method

.method public bridge synthetic dst2(Lcom/badlogic/gdx/math/Vector;)F
    .locals 0

    .line 26
    check-cast p1, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->dst2(Lcom/badlogic/gdx/math/Vector3;)F

    move-result p1

    return p1
.end method

.method public epsilonEquals(FFF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .line 713
    const v0, 0x358637bd    # 1.0E-6f

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/math/Vector3;->epsilonEquals(FFFF)Z

    move-result v0

    return v0
.end method

.method public epsilonEquals(FFFF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "epsilon"    # F

    .line 688
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, p4

    const/4 v1, 0x0

    if-lez v0, :cond_0

    return v1

    .line 689
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, p4

    if-lez v0, :cond_1

    return v1

    .line 690
    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float v0, p3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, p4

    if-lez v0, :cond_2

    return v1

    .line 691
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public epsilonEquals(Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 1
    .param p1, "other"    # Lcom/badlogic/gdx/math/Vector3;

    .line 701
    const v0, 0x358637bd    # 1.0E-6f

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/math/Vector3;->epsilonEquals(Lcom/badlogic/gdx/math/Vector3;F)Z

    move-result v0

    return v0
.end method

.method public epsilonEquals(Lcom/badlogic/gdx/math/Vector3;F)Z
    .locals 3
    .param p1, "other"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "epsilon"    # F

    .line 678
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 679
    :cond_0
    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, p2

    if-lez v1, :cond_1

    return v0

    .line 680
    :cond_1
    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, p2

    if-lez v1, :cond_2

    return v0

    .line 681
    :cond_2
    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, p2

    if-lez v1, :cond_3

    return v0

    .line 682
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic epsilonEquals(Lcom/badlogic/gdx/math/Vector;F)Z
    .locals 0

    .line 26
    check-cast p1, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector3;->epsilonEquals(Lcom/badlogic/gdx/math/Vector3;F)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 666
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 667
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 668
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 669
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/badlogic/gdx/math/Vector3;

    .line 670
    .local v2, "other":Lcom/badlogic/gdx/math/Vector3;
    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v3

    iget v4, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    invoke-static {v4}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v4

    if-eq v3, v4, :cond_3

    return v1

    .line 671
    :cond_3
    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v3

    iget v4, v2, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-static {v4}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v4

    if-eq v3, v4, :cond_4

    return v1

    .line 672
    :cond_4
    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v3

    iget v4, v2, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-static {v4}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v4

    if-eq v3, v4, :cond_5

    return v1

    .line 673
    :cond_5
    return v0
.end method

.method public fromString(Ljava/lang/String;)Lcom/badlogic/gdx/math/Vector3;
    .locals 7
    .param p1, "v"    # Ljava/lang/String;

    .line 603
    const/16 v0, 0x2c

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 604
    .local v2, "s0":I
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 605
    .local v0, "s1":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    if-eq v0, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x28

    if-ne v3, v4, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x29

    if-ne v3, v4, :cond_0

    .line 607
    :try_start_0
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 608
    .local v3, "x":F
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 609
    .local v4, "y":F
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 610
    .local v1, "z":F
    invoke-virtual {p0, v3, v4, v1}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 611
    .end local v1    # "z":F
    .end local v3    # "x":F
    .end local v4    # "y":F
    :catch_0
    move-exception v1

    .line 615
    :cond_0
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Malformed Vector3: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public hasOppositeDirection(Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 2
    .param p1, "vector"    # Lcom/badlogic/gdx/math/Vector3;

    .line 550
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v0

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

.method public bridge synthetic hasOppositeDirection(Lcom/badlogic/gdx/math/Vector;)Z
    .locals 0

    .line 26
    check-cast p1, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->hasOppositeDirection(Lcom/badlogic/gdx/math/Vector3;)Z

    move-result p1

    return p1
.end method

.method public hasSameDirection(Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 2
    .param p1, "vector"    # Lcom/badlogic/gdx/math/Vector3;

    .line 545
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic hasSameDirection(Lcom/badlogic/gdx/math/Vector;)Z
    .locals 0

    .line 26
    check-cast p1, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->hasSameDirection(Lcom/badlogic/gdx/math/Vector3;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 4

    .line 656
    const/16 v0, 0x1f

    .line 657
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 658
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v3

    add-int/2addr v2, v3

    .line 659
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v3

    add-int/2addr v1, v3

    .line 660
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v3

    add-int/2addr v2, v3

    .line 661
    .end local v1    # "result":I
    .restart local v2    # "result":I
    return v2
.end method

.method public idt(Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 2
    .param p1, "vector"    # Lcom/badlogic/gdx/math/Vector3;

    .line 244
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public interpolate(Lcom/badlogic/gdx/math/Vector3;FLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/math/Vector3;
    .locals 2
    .param p1, "target"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "alpha"    # F
    .param p3, "interpolator"    # Lcom/badlogic/gdx/math/Interpolation;

    .line 563
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p3, v0, v1, p2}, Lcom/badlogic/gdx/math/Interpolation;->apply(FFF)F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/math/Vector3;->lerp(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic interpolate(Lcom/badlogic/gdx/math/Vector;FLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/math/Vector;
    .locals 0

    .line 26
    check-cast p1, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/math/Vector3;->interpolate(Lcom/badlogic/gdx/math/Vector3;FLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public isCollinear(Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 1
    .param p1, "other"    # Lcom/badlogic/gdx/math/Vector3;

    .line 520
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->isOnLine(Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->hasSameDirection(Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCollinear(Lcom/badlogic/gdx/math/Vector3;F)Z
    .locals 1
    .param p1, "other"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "epsilon"    # F

    .line 515
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector3;->isOnLine(Lcom/badlogic/gdx/math/Vector3;F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->hasSameDirection(Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic isCollinear(Lcom/badlogic/gdx/math/Vector;)Z
    .locals 0

    .line 26
    check-cast p1, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->isCollinear(Lcom/badlogic/gdx/math/Vector3;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isCollinear(Lcom/badlogic/gdx/math/Vector;F)Z
    .locals 0

    .line 26
    check-cast p1, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector3;->isCollinear(Lcom/badlogic/gdx/math/Vector3;F)Z

    move-result p1

    return p1
.end method

.method public isCollinearOpposite(Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 1
    .param p1, "other"    # Lcom/badlogic/gdx/math/Vector3;

    .line 530
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->isOnLine(Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->hasOppositeDirection(Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCollinearOpposite(Lcom/badlogic/gdx/math/Vector3;F)Z
    .locals 1
    .param p1, "other"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "epsilon"    # F

    .line 525
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector3;->isOnLine(Lcom/badlogic/gdx/math/Vector3;F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->hasOppositeDirection(Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic isCollinearOpposite(Lcom/badlogic/gdx/math/Vector;)Z
    .locals 0

    .line 26
    check-cast p1, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->isCollinearOpposite(Lcom/badlogic/gdx/math/Vector3;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isCollinearOpposite(Lcom/badlogic/gdx/math/Vector;F)Z
    .locals 0

    .line 26
    check-cast p1, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector3;->isCollinearOpposite(Lcom/badlogic/gdx/math/Vector3;F)Z

    move-result p1

    return p1
.end method

.method public isOnLine(Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 7
    .param p1, "other"    # Lcom/badlogic/gdx/math/Vector3;

    .line 510
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float v2, v0, v1

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v4, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float v5, v3, v4

    sub-float/2addr v2, v5

    iget v5, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v3, v5

    iget v6, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v1, v6

    sub-float/2addr v3, v1

    mul-float/2addr v6, v4

    mul-float/2addr v0, v5

    sub-float/2addr v6, v0

    invoke-static {v2, v3, v6}, Lcom/badlogic/gdx/math/Vector3;->len2(FFF)F

    move-result v0

    const v1, 0x358637bd    # 1.0E-6f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOnLine(Lcom/badlogic/gdx/math/Vector3;F)Z
    .locals 7
    .param p1, "other"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "epsilon"    # F

    .line 505
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float v2, v0, v1

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v4, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float v5, v3, v4

    sub-float/2addr v2, v5

    iget v5, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v3, v5

    iget v6, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v1, v6

    sub-float/2addr v3, v1

    mul-float/2addr v6, v4

    mul-float/2addr v0, v5

    sub-float/2addr v6, v0

    invoke-static {v2, v3, v6}, Lcom/badlogic/gdx/math/Vector3;->len2(FFF)F

    move-result v0

    cmpg-float v0, v0, p2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic isOnLine(Lcom/badlogic/gdx/math/Vector;)Z
    .locals 0

    .line 26
    check-cast p1, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->isOnLine(Lcom/badlogic/gdx/math/Vector3;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isOnLine(Lcom/badlogic/gdx/math/Vector;F)Z
    .locals 0

    .line 26
    check-cast p1, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector3;->isOnLine(Lcom/badlogic/gdx/math/Vector3;F)Z

    move-result p1

    return p1
.end method

.method public isPerpendicular(Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 1
    .param p1, "vector"    # Lcom/badlogic/gdx/math/Vector3;

    .line 535
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v0

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result v0

    return v0
.end method

.method public isPerpendicular(Lcom/badlogic/gdx/math/Vector3;F)Z
    .locals 1
    .param p1, "vector"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "epsilon"    # F

    .line 540
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v0

    invoke-static {v0, p2}, Lcom/badlogic/gdx/math/MathUtils;->isZero(FF)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isPerpendicular(Lcom/badlogic/gdx/math/Vector;)Z
    .locals 0

    .line 26
    check-cast p1, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->isPerpendicular(Lcom/badlogic/gdx/math/Vector3;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isPerpendicular(Lcom/badlogic/gdx/math/Vector;F)Z
    .locals 0

    .line 26
    check-cast p1, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector3;->isPerpendicular(Lcom/badlogic/gdx/math/Vector3;F)Z

    move-result p1

    return p1
.end method

.method public isUnit()Z
    .locals 1

    .line 485
    const v0, 0x3089705f    # 1.0E-9f

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Vector3;->isUnit(F)Z

    move-result v0

    return v0
.end method

.method public isUnit(F)Z
    .locals 2
    .param p1, "margin"    # F

    .line 490
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector3;->len2()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isZero()Z
    .locals 2

    .line 495
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isZero(F)Z
    .locals 1
    .param p1, "margin"    # F

    .line 500
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector3;->len2()F

    move-result v0

    cmpg-float v0, v0, p1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public len()F
    .locals 2

    .line 228
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v0, v0

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public len2()F
    .locals 2

    .line 238
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v0, v0

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method public lerp(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;
    .locals 2
    .param p1, "target"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "alpha"    # F

    .line 555
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 556
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 557
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    .line 558
    return-object p0
.end method

.method public bridge synthetic lerp(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;
    .locals 0

    .line 26
    check-cast p1, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector3;->lerp(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public limit(F)Lcom/badlogic/gdx/math/Vector3;
    .locals 1
    .param p1, "limit"    # F

    .line 620
    mul-float v0, p1, p1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Vector3;->limit2(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic limit(F)Lcom/badlogic/gdx/math/Vector;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->limit(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public limit2(F)Lcom/badlogic/gdx/math/Vector3;
    .locals 3
    .param p1, "limit2"    # F

    .line 625
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector3;->len2()F

    move-result v0

    .line 626
    .local v0, "len2":F
    cmpl-float v1, v0, p1

    if-lez v1, :cond_0

    .line 627
    div-float v1, p1, v0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    .line 629
    :cond_0
    return-object p0
.end method

.method public bridge synthetic limit2(F)Lcom/badlogic/gdx/math/Vector;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->limit2(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 7
    .param p1, "matrix"    # Lcom/badlogic/gdx/math/Matrix3;

    .line 374
    iget-object v0, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    .line 375
    .local v0, "l_mat":[F
    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v2, 0x0

    aget v2, v0, v2

    mul-float/2addr v2, v1

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v4, 0x3

    aget v4, v0, v4

    mul-float/2addr v4, v3

    add-float/2addr v2, v4

    iget v4, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/4 v5, 0x6

    aget v5, v0, v5

    mul-float/2addr v5, v4

    add-float/2addr v2, v5

    const/4 v5, 0x1

    aget v5, v0, v5

    mul-float/2addr v5, v1

    const/4 v6, 0x4

    aget v6, v0, v6

    mul-float/2addr v6, v3

    add-float/2addr v5, v6

    const/4 v6, 0x7

    aget v6, v0, v6

    mul-float/2addr v6, v4

    add-float/2addr v5, v6

    const/4 v6, 0x2

    aget v6, v0, v6

    mul-float/2addr v1, v6

    const/4 v6, 0x5

    aget v6, v0, v6

    mul-float/2addr v3, v6

    add-float/2addr v1, v3

    const/16 v3, 0x8

    aget v3, v0, v3

    mul-float/2addr v4, v3

    add-float/2addr v1, v4

    invoke-virtual {p0, v2, v5, v1}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    return-object v1
.end method

.method public mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;
    .locals 7
    .param p1, "matrix"    # Lcom/badlogic/gdx/math/Matrix4;

    .line 354
    iget-object v0, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    .line 355
    .local v0, "l_mat":[F
    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v2, 0x0

    aget v2, v0, v2

    mul-float/2addr v2, v1

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v4, 0x4

    aget v4, v0, v4

    mul-float/2addr v4, v3

    add-float/2addr v2, v4

    iget v4, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/16 v5, 0x8

    aget v5, v0, v5

    mul-float/2addr v5, v4

    add-float/2addr v2, v5

    const/16 v5, 0xc

    aget v5, v0, v5

    add-float/2addr v2, v5

    const/4 v5, 0x1

    aget v5, v0, v5

    mul-float/2addr v5, v1

    const/4 v6, 0x5

    aget v6, v0, v6

    mul-float/2addr v6, v3

    add-float/2addr v5, v6

    const/16 v6, 0x9

    aget v6, v0, v6

    mul-float/2addr v6, v4

    add-float/2addr v5, v6

    const/16 v6, 0xd

    aget v6, v0, v6

    add-float/2addr v5, v6

    const/4 v6, 0x2

    aget v6, v0, v6

    mul-float/2addr v1, v6

    const/4 v6, 0x6

    aget v6, v0, v6

    mul-float/2addr v3, v6

    add-float/2addr v1, v3

    const/16 v3, 0xa

    aget v3, v0, v3

    mul-float/2addr v4, v3

    add-float/2addr v1, v4

    const/16 v3, 0xe

    aget v3, v0, v3

    add-float/2addr v1, v3

    invoke-virtual {p0, v2, v5, v1}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    return-object v1
.end method

.method public mul(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Vector3;
    .locals 1
    .param p1, "quat"    # Lcom/badlogic/gdx/math/Quaternion;

    .line 391
    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/math/Quaternion;->transform(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public mul4x3([F)Lcom/badlogic/gdx/math/Vector3;
    .locals 6
    .param p1, "matrix"    # [F

    .line 346
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v1, 0x0

    aget v1, p1, v1

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v3, 0x3

    aget v3, p1, v3

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/4 v4, 0x6

    aget v4, p1, v4

    mul-float/2addr v4, v3

    add-float/2addr v1, v4

    const/16 v4, 0x9

    aget v4, p1, v4

    add-float/2addr v1, v4

    const/4 v4, 0x1

    aget v4, p1, v4

    mul-float/2addr v4, v0

    const/4 v5, 0x4

    aget v5, p1, v5

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    const/4 v5, 0x7

    aget v5, p1, v5

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    const/16 v5, 0xa

    aget v5, p1, v5

    add-float/2addr v4, v5

    const/4 v5, 0x2

    aget v5, p1, v5

    mul-float/2addr v0, v5

    const/4 v5, 0x5

    aget v5, p1, v5

    mul-float/2addr v2, v5

    add-float/2addr v0, v2

    const/16 v2, 0x8

    aget v2, p1, v2

    mul-float/2addr v3, v2

    add-float/2addr v0, v3

    const/16 v2, 0xb

    aget v2, p1, v2

    add-float/2addr v0, v2

    invoke-virtual {p0, v1, v4, v0}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public mulAdd(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;
    .locals 2
    .param p1, "vec"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "scalar"    # F

    .line 207
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 208
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 209
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    .line 210
    return-object p0
.end method

.method public mulAdd(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 3
    .param p1, "vec"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "mulVec"    # Lcom/badlogic/gdx/math/Vector3;

    .line 215
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 216
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 217
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    .line 218
    return-object p0
.end method

.method public bridge synthetic mulAdd(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;
    .locals 0

    .line 26
    check-cast p1, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector3;->mulAdd(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mulAdd(Lcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
    .locals 0

    .line 26
    check-cast p1, Lcom/badlogic/gdx/math/Vector3;

    check-cast p2, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector3;->mulAdd(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public nor()Lcom/badlogic/gdx/math/Vector3;
    .locals 4

    .line 301
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector3;->len2()F

    move-result v0

    .line 302
    .local v0, "len2":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    goto :goto_0

    .line 303
    :cond_0
    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    return-object v1

    .line 302
    :cond_1
    :goto_0
    return-object p0
.end method

.method public bridge synthetic nor()Lcom/badlogic/gdx/math/Vector;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public prj(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;
    .locals 8
    .param p1, "matrix"    # Lcom/badlogic/gdx/math/Matrix4;

    .line 400
    iget-object v0, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    .line 401
    .local v0, "l_mat":[F
    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v2, 0x3

    aget v2, v0, v2

    mul-float/2addr v2, v1

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v4, 0x7

    aget v4, v0, v4

    mul-float/2addr v4, v3

    add-float/2addr v2, v4

    iget v4, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/16 v5, 0xb

    aget v5, v0, v5

    mul-float/2addr v5, v4

    add-float/2addr v2, v5

    const/16 v5, 0xf

    aget v5, v0, v5

    add-float/2addr v2, v5

    const/high16 v5, 0x3f800000    # 1.0f

    div-float/2addr v5, v2

    .line 402
    .local v5, "l_w":F
    const/4 v2, 0x0

    aget v2, v0, v2

    mul-float/2addr v2, v1

    const/4 v6, 0x4

    aget v6, v0, v6

    mul-float/2addr v6, v3

    add-float/2addr v2, v6

    const/16 v6, 0x8

    aget v6, v0, v6

    mul-float/2addr v6, v4

    add-float/2addr v2, v6

    const/16 v6, 0xc

    aget v6, v0, v6

    add-float/2addr v2, v6

    mul-float/2addr v2, v5

    const/4 v6, 0x1

    aget v6, v0, v6

    mul-float/2addr v6, v1

    const/4 v7, 0x5

    aget v7, v0, v7

    mul-float/2addr v7, v3

    add-float/2addr v6, v7

    const/16 v7, 0x9

    aget v7, v0, v7

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    const/16 v7, 0xd

    aget v7, v0, v7

    add-float/2addr v6, v7

    mul-float/2addr v6, v5

    const/4 v7, 0x2

    aget v7, v0, v7

    mul-float/2addr v1, v7

    const/4 v7, 0x6

    aget v7, v0, v7

    mul-float/2addr v3, v7

    add-float/2addr v1, v3

    const/16 v3, 0xa

    aget v3, v0, v3

    mul-float/2addr v4, v3

    add-float/2addr v1, v4

    const/16 v3, 0xe

    aget v3, v0, v3

    add-float/2addr v1, v3

    mul-float/2addr v1, v5

    invoke-virtual {p0, v2, v6, v1}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    return-object v1
.end method

.method public rot(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;
    .locals 7
    .param p1, "matrix"    # Lcom/badlogic/gdx/math/Matrix4;

    .line 412
    iget-object v0, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    .line 413
    .local v0, "l_mat":[F
    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v2, 0x0

    aget v2, v0, v2

    mul-float/2addr v2, v1

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v4, 0x4

    aget v4, v0, v4

    mul-float/2addr v4, v3

    add-float/2addr v2, v4

    iget v4, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/16 v5, 0x8

    aget v5, v0, v5

    mul-float/2addr v5, v4

    add-float/2addr v2, v5

    const/4 v5, 0x1

    aget v5, v0, v5

    mul-float/2addr v5, v1

    const/4 v6, 0x5

    aget v6, v0, v6

    mul-float/2addr v6, v3

    add-float/2addr v5, v6

    const/16 v6, 0x9

    aget v6, v0, v6

    mul-float/2addr v6, v4

    add-float/2addr v5, v6

    const/4 v6, 0x2

    aget v6, v0, v6

    mul-float/2addr v1, v6

    const/4 v6, 0x6

    aget v6, v0, v6

    mul-float/2addr v3, v6

    add-float/2addr v1, v3

    const/16 v3, 0xa

    aget v3, v0, v3

    mul-float/2addr v4, v3

    add-float/2addr v1, v4

    invoke-virtual {p0, v2, v5, v1}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    return-object v1
.end method

.method public rotate(FFFF)Lcom/badlogic/gdx/math/Vector3;
    .locals 1
    .param p1, "degrees"    # F
    .param p2, "axisX"    # F
    .param p3, "axisY"    # F
    .param p4, "axisZ"    # F

    .line 449
    sget-object v0, Lcom/badlogic/gdx/math/Vector3;->tmpMat:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p2, p3, p4, p1}, Lcom/badlogic/gdx/math/Matrix4;->setToRotation(FFFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public rotate(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;
    .locals 1
    .param p1, "axis"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "degrees"    # F

    .line 469
    sget-object v0, Lcom/badlogic/gdx/math/Vector3;->tmpMat:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Matrix4;->setToRotation(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Matrix4;

    .line 470
    sget-object v0, Lcom/badlogic/gdx/math/Vector3;->tmpMat:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public rotateRad(FFFF)Lcom/badlogic/gdx/math/Vector3;
    .locals 1
    .param p1, "radians"    # F
    .param p2, "axisX"    # F
    .param p3, "axisY"    # F
    .param p4, "axisZ"    # F

    .line 460
    sget-object v0, Lcom/badlogic/gdx/math/Vector3;->tmpMat:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p2, p3, p4, p1}, Lcom/badlogic/gdx/math/Matrix4;->setToRotationRad(FFFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public rotateRad(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;
    .locals 1
    .param p1, "axis"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "radians"    # F

    .line 479
    sget-object v0, Lcom/badlogic/gdx/math/Vector3;->tmpMat:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Matrix4;->setToRotationRad(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Matrix4;

    .line 480
    sget-object v0, Lcom/badlogic/gdx/math/Vector3;->tmpMat:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public scl(F)Lcom/badlogic/gdx/math/Vector3;
    .locals 3
    .param p1, "scalar"    # F

    .line 188
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v2, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public scl(FFF)Lcom/badlogic/gdx/math/Vector3;
    .locals 3
    .param p1, "vx"    # F
    .param p2, "vy"    # F
    .param p3, "vz"    # F

    .line 202
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v1, p2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v2, p3

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public scl(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 4
    .param p1, "other"    # Lcom/badlogic/gdx/math/Vector3;

    .line 193
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic scl(F)Lcom/badlogic/gdx/math/Vector;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic scl(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
    .locals 0

    .line 26
    check-cast p1, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->scl(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public set(FFF)Lcom/badlogic/gdx/math/Vector3;
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .line 83
    iput p1, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 84
    iput p2, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 85
    iput p3, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    .line 86
    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/math/Vector2;F)Lcom/badlogic/gdx/math/Vector3;
    .locals 2
    .param p1, "vector"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "z"    # F

    .line 108
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v0, v1, p2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 3
    .param p1, "vector"    # Lcom/badlogic/gdx/math/Vector3;

    .line 91
    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public set([F)Lcom/badlogic/gdx/math/Vector3;
    .locals 3
    .param p1, "values"    # [F

    .line 99
    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v2, 0x2

    aget v2, p1, v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
    .locals 0

    .line 26
    check-cast p1, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public setFromSpherical(FF)Lcom/badlogic/gdx/math/Vector3;
    .locals 6
    .param p1, "azimuthalAngle"    # F
    .param p2, "polarAngle"    # F

    .line 116
    invoke-static {p2}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v0

    .line 117
    .local v0, "cosPolar":F
    invoke-static {p2}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v1

    .line 119
    .local v1, "sinPolar":F
    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v2

    .line 120
    .local v2, "cosAzim":F
    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v3

    .line 122
    .local v3, "sinAzim":F
    mul-float v4, v2, v1

    mul-float v5, v3, v1

    invoke-virtual {p0, v4, v5, v0}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    return-object v4
.end method

.method public setLength(F)Lcom/badlogic/gdx/math/Vector3;
    .locals 1
    .param p1, "len"    # F

    .line 634
    mul-float v0, p1, p1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Vector3;->setLength2(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setLength(F)Lcom/badlogic/gdx/math/Vector;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->setLength(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public setLength2(F)Lcom/badlogic/gdx/math/Vector3;
    .locals 3
    .param p1, "len2"    # F

    .line 639
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector3;->len2()F

    move-result v0

    .line 640
    .local v0, "oldLen2":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    cmpl-float v1, v0, p1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    div-float v1, p1, v0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    goto :goto_1

    :cond_1
    :goto_0
    move-object v1, p0

    :goto_1
    return-object v1
.end method

.method public bridge synthetic setLength2(F)Lcom/badlogic/gdx/math/Vector;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->setLength2(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public setToRandomDirection()Lcom/badlogic/gdx/math/Vector3;
    .locals 5

    .line 127
    invoke-static {}, Lcom/badlogic/gdx/math/MathUtils;->random()F

    move-result v0

    .line 128
    .local v0, "u":F
    invoke-static {}, Lcom/badlogic/gdx/math/MathUtils;->random()F

    move-result v1

    .line 130
    .local v1, "v":F
    const v2, 0x40c90fdb

    mul-float/2addr v2, v0

    .line 131
    .local v2, "theta":F
    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v1

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->acos(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 133
    .local v3, "phi":F
    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->setFromSpherical(FF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v4

    return-object v4
.end method

.method public bridge synthetic setToRandomDirection()Lcom/badlogic/gdx/math/Vector;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector3;->setToRandomDirection()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public setZero()Lcom/badlogic/gdx/math/Vector3;
    .locals 1

    .line 718
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 719
    iput v0, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 720
    iput v0, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    .line 721
    return-object p0
.end method

.method public bridge synthetic setZero()Lcom/badlogic/gdx/math/Vector;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector3;->setZero()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public slerp(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;
    .locals 13
    .param p1, "target"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "alpha"    # F

    .line 573
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v0

    .line 575
    .local v0, "dot":F
    float-to-double v1, v0

    const-wide v3, 0x3feffbe76c8b4396L    # 0.9995

    cmpl-double v1, v1, v3

    if-gtz v1, :cond_2

    float-to-double v1, v0

    const-wide v3, -0x401004189374bc6aL    # -0.9995

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    goto :goto_1

    .line 578
    :cond_0
    float-to-double v1, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->acos(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 580
    .local v1, "theta0":F
    mul-float v2, v1, p2

    .line 582
    .local v2, "theta":F
    float-to-double v3, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 583
    .local v3, "st":F
    iget v4, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v5, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v5, v0

    sub-float/2addr v4, v5

    .line 584
    .local v4, "tx":F
    iget v5, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v6, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v6, v0

    sub-float/2addr v5, v6

    .line 585
    .local v5, "ty":F
    iget v6, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v7, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v7, v0

    sub-float/2addr v6, v7

    .line 586
    .local v6, "tz":F
    mul-float v7, v4, v4

    mul-float v8, v5, v5

    add-float/2addr v7, v8

    mul-float v8, v6, v6

    add-float/2addr v7, v8

    .line 587
    .local v7, "l2":F
    const v8, 0x38d1b717    # 1.0E-4f

    cmpg-float v8, v7, v8

    const/high16 v9, 0x3f800000    # 1.0f

    if-gez v8, :cond_1

    goto :goto_0

    :cond_1
    float-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v8, v10

    div-float/2addr v9, v8

    :goto_0
    mul-float/2addr v9, v3

    .line 589
    .local v9, "dl":F
    float-to-double v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v8, v10

    invoke-virtual {p0, v8}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v8

    mul-float v10, v4, v9

    mul-float v11, v5, v9

    mul-float v12, v6, v9

    invoke-virtual {v8, v10, v11, v12}, Lcom/badlogic/gdx/math/Vector3;->add(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v8

    invoke-virtual {v8}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v8

    return-object v8

    .line 575
    .end local v1    # "theta0":F
    .end local v2    # "theta":F
    .end local v3    # "st":F
    .end local v4    # "tx":F
    .end local v5    # "ty":F
    .end local v6    # "tz":F
    .end local v7    # "l2":F
    .end local v9    # "dl":F
    :cond_2
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector3;->lerp(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    return-object v1
.end method

.method public sub(F)Lcom/badlogic/gdx/math/Vector3;
    .locals 3
    .param p1, "value"    # F

    .line 183
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v1, p1

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr v2, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public sub(FFF)Lcom/badlogic/gdx/math/Vector3;
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .line 175
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v1, p2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr v2, p3

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 3
    .param p1, "a_vec"    # Lcom/badlogic/gdx/math/Vector3;

    .line 165
    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->sub(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic sub(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
    .locals 0

    .line 26
    check-cast p1, Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public traMul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 7
    .param p1, "matrix"    # Lcom/badlogic/gdx/math/Matrix3;

    .line 383
    iget-object v0, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    .line 384
    .local v0, "l_mat":[F
    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v2, 0x0

    aget v2, v0, v2

    mul-float/2addr v2, v1

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v4, 0x1

    aget v4, v0, v4

    mul-float/2addr v4, v3

    add-float/2addr v2, v4

    iget v4, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/4 v5, 0x2

    aget v5, v0, v5

    mul-float/2addr v5, v4

    add-float/2addr v2, v5

    const/4 v5, 0x3

    aget v5, v0, v5

    mul-float/2addr v5, v1

    const/4 v6, 0x4

    aget v6, v0, v6

    mul-float/2addr v6, v3

    add-float/2addr v5, v6

    const/4 v6, 0x5

    aget v6, v0, v6

    mul-float/2addr v6, v4

    add-float/2addr v5, v6

    const/4 v6, 0x6

    aget v6, v0, v6

    mul-float/2addr v1, v6

    const/4 v6, 0x7

    aget v6, v0, v6

    mul-float/2addr v3, v6

    add-float/2addr v1, v3

    const/16 v3, 0x8

    aget v3, v0, v3

    mul-float/2addr v4, v3

    add-float/2addr v1, v4

    invoke-virtual {p0, v2, v5, v1}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    return-object v1
.end method

.method public traMul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;
    .locals 7
    .param p1, "matrix"    # Lcom/badlogic/gdx/math/Matrix4;

    .line 364
    iget-object v0, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    .line 365
    .local v0, "l_mat":[F
    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v2, 0x0

    aget v2, v0, v2

    mul-float/2addr v2, v1

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v4, 0x1

    aget v4, v0, v4

    mul-float/2addr v4, v3

    add-float/2addr v2, v4

    iget v4, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/4 v5, 0x2

    aget v5, v0, v5

    mul-float/2addr v5, v4

    add-float/2addr v2, v5

    const/4 v5, 0x3

    aget v5, v0, v5

    add-float/2addr v2, v5

    const/4 v5, 0x4

    aget v5, v0, v5

    mul-float/2addr v5, v1

    const/4 v6, 0x5

    aget v6, v0, v6

    mul-float/2addr v6, v3

    add-float/2addr v5, v6

    const/4 v6, 0x6

    aget v6, v0, v6

    mul-float/2addr v6, v4

    add-float/2addr v5, v6

    const/4 v6, 0x7

    aget v6, v0, v6

    add-float/2addr v5, v6

    const/16 v6, 0x8

    aget v6, v0, v6

    mul-float/2addr v1, v6

    const/16 v6, 0x9

    aget v6, v0, v6

    mul-float/2addr v3, v6

    add-float/2addr v1, v3

    const/16 v3, 0xa

    aget v3, v0, v3

    mul-float/2addr v4, v3

    add-float/2addr v1, v4

    const/16 v3, 0xb

    aget v3, v0, v3

    add-float/2addr v1, v3

    invoke-virtual {p0, v2, v5, v1}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    return-object v1
.end method

.method public unrotate(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;
    .locals 7
    .param p1, "matrix"    # Lcom/badlogic/gdx/math/Matrix4;

    .line 422
    iget-object v0, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    .line 423
    .local v0, "l_mat":[F
    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v2, 0x0

    aget v2, v0, v2

    mul-float/2addr v2, v1

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v4, 0x1

    aget v4, v0, v4

    mul-float/2addr v4, v3

    add-float/2addr v2, v4

    iget v4, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/4 v5, 0x2

    aget v5, v0, v5

    mul-float/2addr v5, v4

    add-float/2addr v2, v5

    const/4 v5, 0x4

    aget v5, v0, v5

    mul-float/2addr v5, v1

    const/4 v6, 0x5

    aget v6, v0, v6

    mul-float/2addr v6, v3

    add-float/2addr v5, v6

    const/4 v6, 0x6

    aget v6, v0, v6

    mul-float/2addr v6, v4

    add-float/2addr v5, v6

    const/16 v6, 0x8

    aget v6, v0, v6

    mul-float/2addr v1, v6

    const/16 v6, 0x9

    aget v6, v0, v6

    mul-float/2addr v3, v6

    add-float/2addr v1, v3

    const/16 v3, 0xa

    aget v3, v0, v3

    mul-float/2addr v4, v3

    add-float/2addr v1, v4

    invoke-virtual {p0, v2, v5, v1}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    return-object v1
.end method

.method public untransform(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;
    .locals 7
    .param p1, "matrix"    # Lcom/badlogic/gdx/math/Matrix4;

    .line 433
    iget-object v0, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    .line 434
    .local v0, "l_mat":[F
    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/16 v2, 0xc

    aget v3, v0, v2

    sub-float/2addr v1, v3

    iput v1, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 435
    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    aget v4, v0, v2

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 436
    iget v4, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    aget v2, v0, v2

    sub-float/2addr v4, v2

    iput v4, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    .line 437
    const/4 v2, 0x0

    aget v2, v0, v2

    mul-float/2addr v2, v1

    const/4 v5, 0x1

    aget v5, v0, v5

    mul-float/2addr v5, v3

    add-float/2addr v2, v5

    const/4 v5, 0x2

    aget v5, v0, v5

    mul-float/2addr v5, v4

    add-float/2addr v2, v5

    const/4 v5, 0x4

    aget v5, v0, v5

    mul-float/2addr v5, v1

    const/4 v6, 0x5

    aget v6, v0, v6

    mul-float/2addr v6, v3

    add-float/2addr v5, v6

    const/4 v6, 0x6

    aget v6, v0, v6

    mul-float/2addr v6, v4

    add-float/2addr v5, v6

    const/16 v6, 0x8

    aget v6, v0, v6

    mul-float/2addr v1, v6

    const/16 v6, 0x9

    aget v6, v0, v6

    mul-float/2addr v3, v6

    add-float/2addr v1, v3

    const/16 v3, 0xa

    aget v3, v0, v3

    mul-float/2addr v4, v3

    add-float/2addr v1, v4

    invoke-virtual {p0, v2, v5, v1}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    return-object v1
.end method
