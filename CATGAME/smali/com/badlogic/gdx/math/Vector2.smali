.class public Lcom/badlogic/gdx/math/Vector2;
.super Ljava/lang/Object;
.source "Vector2.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/badlogic/gdx/math/Vector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Lcom/badlogic/gdx/math/Vector<",
        "Lcom/badlogic/gdx/math/Vector2;",
        ">;"
    }
.end annotation


# static fields
.field public static final X:Lcom/badlogic/gdx/math/Vector2;

.field public static final Y:Lcom/badlogic/gdx/math/Vector2;

.field public static final Zero:Lcom/badlogic/gdx/math/Vector2;

.field private static final serialVersionUID:J = 0xcaed5be6c419bb3L


# instance fields
.field public x:F

.field public y:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 29
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    sput-object v0, Lcom/badlogic/gdx/math/Vector2;->X:Lcom/badlogic/gdx/math/Vector2;

    .line 30
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0, v2, v1}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    sput-object v0, Lcom/badlogic/gdx/math/Vector2;->Y:Lcom/badlogic/gdx/math/Vector2;

    .line 31
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0, v2, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    sput-object v0, Lcom/badlogic/gdx/math/Vector2;->Zero:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 47
    iput p2, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 0
    .param p1, "v"    # Lcom/badlogic/gdx/math/Vector2;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 54
    return-void
.end method

.method public static dot(FFFF)F
    .locals 2
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "x2"    # F
    .param p3, "y2"    # F

    .line 141
    mul-float v0, p0, p2

    mul-float v1, p1, p3

    add-float/2addr v0, v1

    return v0
.end method

.method public static dst(FFFF)F
    .locals 4
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "x2"    # F
    .param p3, "y2"    # F

    .line 190
    sub-float v0, p2, p0

    .line 191
    .local v0, "x_d":F
    sub-float v1, p3, p1

    .line 192
    .local v1, "y_d":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method public static dst2(FFFF)F
    .locals 4
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "x2"    # F
    .param p3, "y2"    # F

    .line 212
    sub-float v0, p2, p0

    .line 213
    .local v0, "x_d":F
    sub-float v1, p3, p1

    .line 214
    .local v1, "y_d":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    return v2
.end method

.method public static len(FF)F
    .locals 2
    .param p0, "x"    # F
    .param p1, "y"    # F

    .line 62
    mul-float v0, p0, p0

    mul-float v1, p1, p1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static len2(FF)F
    .locals 2
    .param p0, "x"    # F
    .param p1, "y"    # F

    .line 71
    mul-float v0, p0, p0

    mul-float v1, p1, p1

    add-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public add(FF)Lcom/badlogic/gdx/math/Vector2;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 135
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 136
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 137
    return-object p0
.end method

.method public add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 2
    .param p1, "v"    # Lcom/badlogic/gdx/math/Vector2;

    .line 125
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 126
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 127
    return-object p0
.end method

.method public bridge synthetic add(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
    .locals 0

    .line 26
    check-cast p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public angle()F
    .locals 4

    .line 322
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-double v0, v0

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const v1, 0x42652ee0

    mul-float/2addr v0, v1

    .line 323
    .local v0, "angle":F
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    const/high16 v1, 0x43b40000    # 360.0f

    add-float/2addr v0, v1

    .line 324
    :cond_0
    return v0
.end method

.method public angle(Lcom/badlogic/gdx/math/Vector2;)F
    .locals 4
    .param p1, "reference"    # Lcom/badlogic/gdx/math/Vector2;

    .line 330
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->crs(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->dot(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const v1, 0x42652ee0

    mul-float/2addr v0, v1

    return v0
.end method

.method public angleRad()F
    .locals 4

    .line 336
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-double v0, v0

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public angleRad(Lcom/badlogic/gdx/math/Vector2;)F
    .locals 4
    .param p1, "reference"    # Lcom/badlogic/gdx/math/Vector2;

    .line 342
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->crs(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->dot(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public clamp(FF)Lcom/badlogic/gdx/math/Vector2;
    .locals 5
    .param p1, "min"    # F
    .param p2, "max"    # F

    .line 249
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector2;->len2()F

    move-result v0

    .line 250
    .local v0, "len2":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    return-object p0

    .line 251
    :cond_0
    mul-float v1, p2, p2

    .line 252
    .local v1, "max2":F
    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    div-float v2, v1, v0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    return-object v2

    .line 253
    :cond_1
    mul-float v2, p1, p1

    .line 254
    .local v2, "min2":F
    cmpg-float v3, v0, v2

    if-gez v3, :cond_2

    div-float v3, v2, v0

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    return-object v3

    .line 255
    :cond_2
    return-object p0
.end method

.method public bridge synthetic clamp(FF)Lcom/badlogic/gdx/math/Vector;
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->clamp(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public cpy()Lcom/badlogic/gdx/math/Vector2;
    .locals 1

    .line 58
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/math/Vector2;-><init>(Lcom/badlogic/gdx/math/Vector2;)V

    return-object v0
.end method

.method public bridge synthetic cpy()Lcom/badlogic/gdx/math/Vector;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector2;->cpy()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public crs(FF)F
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 316
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v0, p2

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v1, p1

    sub-float/2addr v0, v1

    return v0
.end method

.method public crs(Lcom/badlogic/gdx/math/Vector2;)F
    .locals 3
    .param p1, "v"    # Lcom/badlogic/gdx/math/Vector2;

    .line 308
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method public dot(FF)F
    .locals 2
    .param p1, "ox"    # F
    .param p2, "oy"    # F

    .line 150
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    return v0
.end method

.method public dot(Lcom/badlogic/gdx/math/Vector2;)F
    .locals 3
    .param p1, "v"    # Lcom/badlogic/gdx/math/Vector2;

    .line 146
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public bridge synthetic dot(Lcom/badlogic/gdx/math/Vector;)F
    .locals 0

    .line 26
    check-cast p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->dot(Lcom/badlogic/gdx/math/Vector2;)F

    move-result p1

    return p1
.end method

.method public dst(FF)F
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 206
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float v0, p1, v0

    .line 207
    .local v0, "x_d":F
    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v1, p2, v1

    .line 208
    .local v1, "y_d":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method public dst(Lcom/badlogic/gdx/math/Vector2;)F
    .locals 4
    .param p1, "v"    # Lcom/badlogic/gdx/math/Vector2;

    .line 197
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v0, v1

    .line 198
    .local v0, "x_d":F
    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v1, v2

    .line 199
    .local v1, "y_d":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method public bridge synthetic dst(Lcom/badlogic/gdx/math/Vector;)F
    .locals 0

    .line 26
    check-cast p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->dst(Lcom/badlogic/gdx/math/Vector2;)F

    move-result p1

    return p1
.end method

.method public dst2(FF)F
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 228
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float v0, p1, v0

    .line 229
    .local v0, "x_d":F
    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v1, p2, v1

    .line 230
    .local v1, "y_d":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    return v2
.end method

.method public dst2(Lcom/badlogic/gdx/math/Vector2;)F
    .locals 4
    .param p1, "v"    # Lcom/badlogic/gdx/math/Vector2;

    .line 219
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v0, v1

    .line 220
    .local v0, "x_d":F
    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v1, v2

    .line 221
    .local v1, "y_d":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    return v2
.end method

.method public bridge synthetic dst2(Lcom/badlogic/gdx/math/Vector;)F
    .locals 0

    .line 26
    check-cast p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->dst2(Lcom/badlogic/gdx/math/Vector2;)F

    move-result p1

    return p1
.end method

.method public epsilonEquals(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 475
    const v0, 0x358637bd    # 1.0E-6f

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/math/Vector2;->epsilonEquals(FFF)Z

    move-result v0

    return v0
.end method

.method public epsilonEquals(FFF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "epsilon"    # F

    .line 458
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, p3

    const/4 v1, 0x0

    if-lez v0, :cond_0

    return v1

    .line 459
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, p3

    if-lez v0, :cond_1

    return v1

    .line 460
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public epsilonEquals(Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 1
    .param p1, "other"    # Lcom/badlogic/gdx/math/Vector2;

    .line 467
    const v0, 0x358637bd    # 1.0E-6f

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/math/Vector2;->epsilonEquals(Lcom/badlogic/gdx/math/Vector2;F)Z

    move-result v0

    return v0
.end method

.method public epsilonEquals(Lcom/badlogic/gdx/math/Vector2;F)Z
    .locals 3
    .param p1, "other"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "epsilon"    # F

    .line 449
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 450
    :cond_0
    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, p2

    if-lez v1, :cond_1

    return v0

    .line 451
    :cond_1
    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, p2

    if-lez v1, :cond_2

    return v0

    .line 452
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic epsilonEquals(Lcom/badlogic/gdx/math/Vector;F)Z
    .locals 0

    .line 26
    check-cast p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->epsilonEquals(Lcom/badlogic/gdx/math/Vector2;F)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 438
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 439
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 440
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 441
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/badlogic/gdx/math/Vector2;

    .line 442
    .local v2, "other":Lcom/badlogic/gdx/math/Vector2;
    iget v3, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v3

    iget v4, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-static {v4}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v4

    if-eq v3, v4, :cond_3

    return v1

    .line 443
    :cond_3
    iget v3, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v3

    iget v4, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v4}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v4

    if-eq v3, v4, :cond_4

    return v1

    .line 444
    :cond_4
    return v0
.end method

.method public fromString(Ljava/lang/String;)Lcom/badlogic/gdx/math/Vector2;
    .locals 5
    .param p1, "v"    # Ljava/lang/String;

    .line 280
    const/16 v0, 0x2c

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 281
    .local v0, "s":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x28

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x29

    if-ne v2, v3, :cond_0

    .line 283
    :try_start_0
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 284
    .local v2, "x":F
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 285
    .local v1, "y":F
    invoke-virtual {p0, v2, v1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 286
    .end local v1    # "y":F
    .end local v2    # "x":F
    :catch_0
    move-exception v1

    .line 290
    :cond_0
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Malformed Vector2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public hasOppositeDirection(Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 2
    .param p1, "vector"    # Lcom/badlogic/gdx/math/Vector2;

    .line 545
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->dot(Lcom/badlogic/gdx/math/Vector2;)F

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
    check-cast p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->hasOppositeDirection(Lcom/badlogic/gdx/math/Vector2;)Z

    move-result p1

    return p1
.end method

.method public hasSameDirection(Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 2
    .param p1, "vector"    # Lcom/badlogic/gdx/math/Vector2;

    .line 540
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->dot(Lcom/badlogic/gdx/math/Vector2;)F

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
    check-cast p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->hasSameDirection(Lcom/badlogic/gdx/math/Vector2;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 4

    .line 429
    const/16 v0, 0x1f

    .line 430
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 431
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v3

    add-int/2addr v2, v3

    .line 432
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v3

    add-int/2addr v1, v3

    .line 433
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public interpolate(Lcom/badlogic/gdx/math/Vector2;FLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/math/Vector2;
    .locals 1
    .param p1, "target"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "alpha"    # F
    .param p3, "interpolation"    # Lcom/badlogic/gdx/math/Interpolation;

    .line 418
    invoke-virtual {p3, p2}, Lcom/badlogic/gdx/math/Interpolation;->apply(F)F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/math/Vector2;->lerp(Lcom/badlogic/gdx/math/Vector2;F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic interpolate(Lcom/badlogic/gdx/math/Vector;FLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/math/Vector;
    .locals 0

    .line 26
    check-cast p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/math/Vector2;->interpolate(Lcom/badlogic/gdx/math/Vector2;FLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public isCollinear(Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 2
    .param p1, "other"    # Lcom/badlogic/gdx/math/Vector2;

    .line 515
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->isOnLine(Lcom/badlogic/gdx/math/Vector2;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->dot(Lcom/badlogic/gdx/math/Vector2;)F

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

.method public isCollinear(Lcom/badlogic/gdx/math/Vector2;F)Z
    .locals 2
    .param p1, "other"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "epsilon"    # F

    .line 510
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->isOnLine(Lcom/badlogic/gdx/math/Vector2;F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->dot(Lcom/badlogic/gdx/math/Vector2;)F

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

.method public bridge synthetic isCollinear(Lcom/badlogic/gdx/math/Vector;)Z
    .locals 0

    .line 26
    check-cast p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->isCollinear(Lcom/badlogic/gdx/math/Vector2;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isCollinear(Lcom/badlogic/gdx/math/Vector;F)Z
    .locals 0

    .line 26
    check-cast p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->isCollinear(Lcom/badlogic/gdx/math/Vector2;F)Z

    move-result p1

    return p1
.end method

.method public isCollinearOpposite(Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 2
    .param p1, "other"    # Lcom/badlogic/gdx/math/Vector2;

    .line 525
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->isOnLine(Lcom/badlogic/gdx/math/Vector2;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->dot(Lcom/badlogic/gdx/math/Vector2;)F

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

.method public isCollinearOpposite(Lcom/badlogic/gdx/math/Vector2;F)Z
    .locals 2
    .param p1, "other"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "epsilon"    # F

    .line 520
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->isOnLine(Lcom/badlogic/gdx/math/Vector2;F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->dot(Lcom/badlogic/gdx/math/Vector2;)F

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

.method public bridge synthetic isCollinearOpposite(Lcom/badlogic/gdx/math/Vector;)Z
    .locals 0

    .line 26
    check-cast p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->isCollinearOpposite(Lcom/badlogic/gdx/math/Vector2;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isCollinearOpposite(Lcom/badlogic/gdx/math/Vector;F)Z
    .locals 0

    .line 26
    check-cast p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->isCollinearOpposite(Lcom/badlogic/gdx/math/Vector2;F)Z

    move-result p1

    return p1
.end method

.method public isOnLine(Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 3
    .param p1, "other"    # Lcom/badlogic/gdx/math/Vector2;

    .line 500
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result v0

    return v0
.end method

.method public isOnLine(Lcom/badlogic/gdx/math/Vector2;F)Z
    .locals 3
    .param p1, "other"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "epsilon"    # F

    .line 505
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0, p2}, Lcom/badlogic/gdx/math/MathUtils;->isZero(FF)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isOnLine(Lcom/badlogic/gdx/math/Vector;)Z
    .locals 0

    .line 26
    check-cast p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->isOnLine(Lcom/badlogic/gdx/math/Vector2;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isOnLine(Lcom/badlogic/gdx/math/Vector;F)Z
    .locals 0

    .line 26
    check-cast p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->isOnLine(Lcom/badlogic/gdx/math/Vector2;F)Z

    move-result p1

    return p1
.end method

.method public isPerpendicular(Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 1
    .param p1, "vector"    # Lcom/badlogic/gdx/math/Vector2;

    .line 530
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->dot(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v0

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result v0

    return v0
.end method

.method public isPerpendicular(Lcom/badlogic/gdx/math/Vector2;F)Z
    .locals 1
    .param p1, "vector"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "epsilon"    # F

    .line 535
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->dot(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v0

    invoke-static {v0, p2}, Lcom/badlogic/gdx/math/MathUtils;->isZero(FF)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isPerpendicular(Lcom/badlogic/gdx/math/Vector;)Z
    .locals 0

    .line 26
    check-cast p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->isPerpendicular(Lcom/badlogic/gdx/math/Vector2;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isPerpendicular(Lcom/badlogic/gdx/math/Vector;F)Z
    .locals 0

    .line 26
    check-cast p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->isPerpendicular(Lcom/badlogic/gdx/math/Vector2;F)Z

    move-result p1

    return p1
.end method

.method public isUnit()Z
    .locals 1

    .line 480
    const v0, 0x3089705f    # 1.0E-9f

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Vector2;->isUnit(F)Z

    move-result v0

    return v0
.end method

.method public isUnit(F)Z
    .locals 2
    .param p1, "margin"    # F

    .line 485
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector2;->len2()F

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

    .line 490
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

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

    .line 495
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector2;->len2()F

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

    .line 67
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v0, v0

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

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

    .line 76
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v0, v0

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method public lerp(Lcom/badlogic/gdx/math/Vector2;F)Lcom/badlogic/gdx/math/Vector2;
    .locals 3
    .param p1, "target"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "alpha"    # F

    .line 410
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    .line 411
    .local v0, "invAlpha":F
    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v1, v0

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 412
    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v1, v0

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 413
    return-object p0
.end method

.method public bridge synthetic lerp(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;
    .locals 0

    .line 26
    check-cast p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->lerp(Lcom/badlogic/gdx/math/Vector2;F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public limit(F)Lcom/badlogic/gdx/math/Vector2;
    .locals 1
    .param p1, "limit"    # F

    .line 235
    mul-float v0, p1, p1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Vector2;->limit2(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic limit(F)Lcom/badlogic/gdx/math/Vector;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->limit(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public limit2(F)Lcom/badlogic/gdx/math/Vector2;
    .locals 3
    .param p1, "limit2"    # F

    .line 240
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector2;->len2()F

    move-result v0

    .line 241
    .local v0, "len2":F
    cmpl-float v1, v0, p1

    if-lez v1, :cond_0

    .line 242
    div-float v1, p1, v0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    return-object v1

    .line 244
    :cond_0
    return-object p0
.end method

.method public bridge synthetic limit2(F)Lcom/badlogic/gdx/math/Vector;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->limit2(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Vector2;
    .locals 5
    .param p1, "mat"    # Lcom/badlogic/gdx/math/Matrix3;

    .line 297
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v2, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v3, 0x3

    aget v2, v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v2, 0x6

    aget v1, v1, v2

    add-float/2addr v0, v1

    .line 298
    .local v0, "x":F
    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v3, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v4, 0x4

    aget v3, v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    add-float/2addr v1, v2

    .line 299
    .local v1, "y":F
    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 300
    iput v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 301
    return-object p0
.end method

.method public mulAdd(Lcom/badlogic/gdx/math/Vector2;F)Lcom/badlogic/gdx/math/Vector2;
    .locals 2
    .param p1, "vec"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "scalar"    # F

    .line 177
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 178
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 179
    return-object p0
.end method

.method public mulAdd(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 3
    .param p1, "vec"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "mulVec"    # Lcom/badlogic/gdx/math/Vector2;

    .line 184
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 185
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 186
    return-object p0
.end method

.method public bridge synthetic mulAdd(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;
    .locals 0

    .line 26
    check-cast p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->mulAdd(Lcom/badlogic/gdx/math/Vector2;F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mulAdd(Lcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
    .locals 0

    .line 26
    check-cast p1, Lcom/badlogic/gdx/math/Vector2;

    check-cast p2, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->mulAdd(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public nor()Lcom/badlogic/gdx/math/Vector2;
    .locals 2

    .line 115
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector2;->len()F

    move-result v0

    .line 116
    .local v0, "len":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 117
    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 118
    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 120
    :cond_0
    return-object p0
.end method

.method public bridge synthetic nor()Lcom/badlogic/gdx/math/Vector;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector2;->nor()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public rotate(F)Lcom/badlogic/gdx/math/Vector2;
    .locals 1
    .param p1, "degrees"    # F

    .line 363
    const v0, 0x3c8efa35

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Vector2;->rotateRad(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public rotate90(I)Lcom/badlogic/gdx/math/Vector2;
    .locals 2
    .param p1, "dir"    # I

    .line 397
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 398
    .local v0, "x":F
    if-ltz p1, :cond_0

    .line 399
    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    neg-float v1, v1

    iput v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 400
    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto :goto_0

    .line 402
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 403
    neg-float v1, v0

    iput v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 405
    :goto_0
    return-object p0
.end method

.method public rotateAround(Lcom/badlogic/gdx/math/Vector2;F)Lcom/badlogic/gdx/math/Vector2;
    .locals 1
    .param p1, "reference"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "degrees"    # F

    .line 370
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->sub(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector2;->rotate(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector2;->add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public rotateAroundRad(Lcom/badlogic/gdx/math/Vector2;F)Lcom/badlogic/gdx/math/Vector2;
    .locals 1
    .param p1, "reference"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "radians"    # F

    .line 392
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->sub(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector2;->rotateRad(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector2;->add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public rotateRad(F)Lcom/badlogic/gdx/math/Vector2;
    .locals 6
    .param p1, "radians"    # F

    .line 376
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 377
    .local v0, "cos":F
    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 379
    .local v1, "sin":F
    iget v2, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float v3, v2, v0

    iget v4, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float v5, v4, v1

    sub-float/2addr v3, v5

    .line 380
    .local v3, "newX":F
    mul-float/2addr v2, v1

    mul-float/2addr v4, v0

    add-float/2addr v2, v4

    .line 382
    .local v2, "newY":F
    iput v3, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 383
    iput v2, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 385
    return-object p0
.end method

.method public scl(F)Lcom/badlogic/gdx/math/Vector2;
    .locals 1
    .param p1, "scalar"    # F

    .line 155
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 156
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 157
    return-object p0
.end method

.method public scl(FF)Lcom/badlogic/gdx/math/Vector2;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 163
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 164
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v0, p2

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 165
    return-object p0
.end method

.method public scl(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 2
    .param p1, "v"    # Lcom/badlogic/gdx/math/Vector2;

    .line 170
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 171
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 172
    return-object p0
.end method

.method public bridge synthetic scl(F)Lcom/badlogic/gdx/math/Vector;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic scl(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
    .locals 0

    .line 26
    check-cast p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->scl(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public set(FF)Lcom/badlogic/gdx/math/Vector2;
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 91
    iput p1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 92
    iput p2, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 93
    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 1
    .param p1, "v"    # Lcom/badlogic/gdx/math/Vector2;

    .line 81
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 82
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 83
    return-object p0
.end method

.method public bridge synthetic set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
    .locals 0

    .line 26
    check-cast p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public setAngle(F)Lcom/badlogic/gdx/math/Vector2;
    .locals 1
    .param p1, "degrees"    # F

    .line 348
    const v0, 0x3c8efa35

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Vector2;->setAngleRad(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public setAngleRad(F)Lcom/badlogic/gdx/math/Vector2;
    .locals 2
    .param p1, "radians"    # F

    .line 354
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector2;->len()F

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 355
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->rotateRad(F)Lcom/badlogic/gdx/math/Vector2;

    .line 357
    return-object p0
.end method

.method public setLength(F)Lcom/badlogic/gdx/math/Vector2;
    .locals 1
    .param p1, "len"    # F

    .line 260
    mul-float v0, p1, p1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Vector2;->setLength2(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setLength(F)Lcom/badlogic/gdx/math/Vector;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->setLength(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public setLength2(F)Lcom/badlogic/gdx/math/Vector2;
    .locals 3
    .param p1, "len2"    # F

    .line 265
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector2;->len2()F

    move-result v0

    .line 266
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

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

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
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->setLength2(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public setToRandomDirection()Lcom/badlogic/gdx/math/Vector2;
    .locals 3

    .line 423
    const/4 v0, 0x0

    const v1, 0x40c90fdb

    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/MathUtils;->random(FF)F

    move-result v0

    .line 424
    .local v0, "theta":F
    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v1

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic setToRandomDirection()Lcom/badlogic/gdx/math/Vector;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector2;->setToRandomDirection()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public setZero()Lcom/badlogic/gdx/math/Vector2;
    .locals 1

    .line 550
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 551
    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 552
    return-object p0
.end method

.method public bridge synthetic setZero()Lcom/badlogic/gdx/math/Vector;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector2;->setZero()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public sub(FF)Lcom/badlogic/gdx/math/Vector2;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 108
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 109
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v0, p2

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 110
    return-object p0
.end method

.method public sub(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 2
    .param p1, "v"    # Lcom/badlogic/gdx/math/Vector2;

    .line 98
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 99
    iget v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 100
    return-object p0
.end method

.method public bridge synthetic sub(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
    .locals 0

    .line 26
    check-cast p1, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector2;->sub(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
