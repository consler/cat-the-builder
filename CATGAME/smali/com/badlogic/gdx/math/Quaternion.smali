.class public Lcom/badlogic/gdx/math/Quaternion;
.super Ljava/lang/Object;
.source "Quaternion.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x6a54731e78ad5e10L

.field private static tmp1:Lcom/badlogic/gdx/math/Quaternion;

.field private static tmp2:Lcom/badlogic/gdx/math/Quaternion;


# instance fields
.field public w:F

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Lcom/badlogic/gdx/math/Quaternion;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/math/Quaternion;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/math/Quaternion;->tmp1:Lcom/badlogic/gdx/math/Quaternion;

    .line 31
    new-instance v0, Lcom/badlogic/gdx/math/Quaternion;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/math/Quaternion;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/math/Quaternion;->tmp2:Lcom/badlogic/gdx/math/Quaternion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Quaternion;->idt()Lcom/badlogic/gdx/math/Quaternion;

    .line 49
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "w"    # F

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/math/Quaternion;->set(FFFF)Lcom/badlogic/gdx/math/Quaternion;

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Quaternion;)V
    .locals 0
    .param p1, "quaternion"    # Lcom/badlogic/gdx/math/Quaternion;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Vector3;F)V
    .locals 0
    .param p1, "axis"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "angle"    # F

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Quaternion;

    .line 64
    return-void
.end method

.method public static final dot(FFFFFFFF)F
    .locals 2
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "z1"    # F
    .param p3, "w1"    # F
    .param p4, "x2"    # F
    .param p5, "y2"    # F
    .param p6, "z2"    # F
    .param p7, "w2"    # F

    .line 718
    mul-float v0, p0, p4

    mul-float v1, p1, p5

    add-float/2addr v0, v1

    mul-float v1, p2, p6

    add-float/2addr v0, v1

    mul-float v1, p3, p7

    add-float/2addr v0, v1

    return v0
.end method

.method public static final len(FFFF)F
    .locals 2
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "z"    # F
    .param p3, "w"    # F

    .line 103
    mul-float v0, p0, p0

    mul-float v1, p1, p1

    add-float/2addr v0, v1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    mul-float v1, p3, p3

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static final len2(FFFF)F
    .locals 2
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "z"    # F
    .param p3, "w"    # F

    .line 200
    mul-float v0, p0, p0

    mul-float v1, p1, p1

    add-float/2addr v0, v1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    mul-float v1, p3, p3

    add-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public add(FFFF)Lcom/badlogic/gdx/math/Quaternion;
    .locals 1
    .param p1, "qx"    # F
    .param p2, "qy"    # F
    .param p3, "qz"    # F
    .param p4, "qw"    # F

    .line 328
    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    .line 329
    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    .line 330
    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    add-float/2addr v0, p3

    iput v0, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    .line 331
    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    add-float/2addr v0, p4

    iput v0, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    .line 332
    return-object p0
.end method

.method public add(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;
    .locals 2
    .param p1, "quaternion"    # Lcom/badlogic/gdx/math/Quaternion;

    .line 319
    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Quaternion;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    .line 320
    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Quaternion;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    .line 321
    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v1, p1, Lcom/badlogic/gdx/math/Quaternion;->z:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    .line 322
    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    iget v1, p1, Lcom/badlogic/gdx/math/Quaternion;->w:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    .line 323
    return-object p0
.end method

.method public conjugate()Lcom/badlogic/gdx/math/Quaternion;
    .locals 1

    .line 226
    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    neg-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    .line 227
    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    neg-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    .line 228
    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    neg-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    .line 229
    return-object p0
.end method

.method public cpy()Lcom/badlogic/gdx/math/Quaternion;
    .locals 1

    .line 98
    new-instance v0, Lcom/badlogic/gdx/math/Quaternion;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/math/Quaternion;-><init>(Lcom/badlogic/gdx/math/Quaternion;)V

    return-object v0
.end method

.method public dot(FFFF)F
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "w"    # F

    .line 735
    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v1, p4

    add-float/2addr v0, v1

    return v0
.end method

.method public dot(Lcom/badlogic/gdx/math/Quaternion;)F
    .locals 3
    .param p1, "other"    # Lcom/badlogic/gdx/math/Quaternion;

    .line 725
    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v2, p1, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    iget v2, p1, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 690
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 691
    return v0

    .line 693
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 694
    return v1

    .line 696
    :cond_1
    instance-of v2, p1, Lcom/badlogic/gdx/math/Quaternion;

    if-nez v2, :cond_2

    .line 697
    return v1

    .line 699
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/badlogic/gdx/math/Quaternion;

    .line 700
    .local v2, "other":Lcom/badlogic/gdx/math/Quaternion;
    iget v3, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v3

    iget v4, v2, Lcom/badlogic/gdx/math/Quaternion;->w:F

    invoke-static {v4}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v4

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    .line 701
    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v3

    iget v4, v2, Lcom/badlogic/gdx/math/Quaternion;->x:F

    invoke-static {v4}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v4

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    .line 702
    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v3

    iget v4, v2, Lcom/badlogic/gdx/math/Quaternion;->y:F

    invoke-static {v4}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v4

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    .line 703
    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v3

    iget v4, v2, Lcom/badlogic/gdx/math/Quaternion;->z:F

    invoke-static {v4}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v4

    if-ne v3, v4, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    .line 700
    :goto_0
    return v0
.end method

.method public exp(F)Lcom/badlogic/gdx/math/Quaternion;
    .locals 10
    .param p1, "alpha"    # F

    .line 651
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Quaternion;->len()F

    move-result v0

    .line 652
    .local v0, "norm":F
    float-to-double v1, v0

    float-to-double v3, p1

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    .line 655
    .local v1, "normExp":F
    iget v2, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    div-float/2addr v2, v0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 658
    .local v2, "theta":F
    const/4 v3, 0x0

    .line 659
    .local v3, "coeff":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    const-wide v6, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    .line 661
    mul-float v4, v1, p1

    div-float/2addr v4, v0

    .end local v3    # "coeff":F
    .local v4, "coeff":F
    goto :goto_0

    .line 663
    .end local v4    # "coeff":F
    .restart local v3    # "coeff":F
    :cond_0
    float-to-double v4, v1

    mul-float v6, p1, v2

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    float-to-double v6, v0

    float-to-double v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    div-double/2addr v4, v6

    double-to-float v4, v4

    .line 666
    .end local v3    # "coeff":F
    .restart local v4    # "coeff":F
    :goto_0
    float-to-double v5, v1

    mul-float v3, p1, v2

    float-to-double v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    double-to-float v3, v5

    iput v3, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    .line 667
    iget v3, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    .line 668
    iget v3, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    .line 669
    iget v3, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    .line 672
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Quaternion;->nor()Lcom/badlogic/gdx/math/Quaternion;

    .line 674
    return-object p0
.end method

.method public getAngle()F
    .locals 2

    .line 803
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Quaternion;->getAngleRad()F

    move-result v0

    const v1, 0x42652ee0

    mul-float/2addr v0, v1

    return v0
.end method

.method public getAngleAround(FFF)F
    .locals 2
    .param p1, "axisX"    # F
    .param p2, "axisY"    # F
    .param p3, "axisZ"    # F

    .line 863
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/math/Quaternion;->getAngleAroundRad(FFF)F

    move-result v0

    const v1, 0x42652ee0

    mul-float/2addr v0, v1

    return v0
.end method

.method public getAngleAround(Lcom/badlogic/gdx/math/Vector3;)F
    .locals 3
    .param p1, "axis"    # Lcom/badlogic/gdx/math/Vector3;

    .line 870
    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/math/Quaternion;->getAngleAround(FFF)F

    move-result v0

    return v0
.end method

.method public getAngleAroundRad(FFF)F
    .locals 8
    .param p1, "axisX"    # F
    .param p2, "axisY"    # F
    .param p3, "axisZ"    # F

    .line 844
    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v2, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/badlogic/gdx/math/Vector3;->dot(FFFFFF)F

    move-result v0

    .line 845
    .local v0, "d":F
    mul-float v1, p1, v0

    mul-float v2, p2, v0

    mul-float v3, p3, v0

    iget v4, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    invoke-static {v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Quaternion;->len2(FFFF)F

    move-result v1

    .line 846
    .local v1, "l2":F
    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    cmpg-float v2, v0, v3

    if-gez v2, :cond_1

    iget v2, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    neg-float v2, v2

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    :goto_0
    float-to-double v2, v2

    float-to-double v6, v1

    .line 847
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    div-double/2addr v2, v6

    double-to-float v2, v2

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 846
    invoke-static {v2, v3, v6}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-float v3, v2

    :goto_1
    return v3
.end method

.method public getAngleAroundRad(Lcom/badlogic/gdx/math/Vector3;)F
    .locals 3
    .param p1, "axis"    # Lcom/badlogic/gdx/math/Vector3;

    .line 854
    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/math/Quaternion;->getAngleAroundRad(FFF)F

    move-result v0

    return v0
.end method

.method public getAngleRad()F
    .locals 4

    .line 796
    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Quaternion;->len()F

    move-result v1

    div-float/2addr v0, v1

    :cond_0
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public getAxisAngle(Lcom/badlogic/gdx/math/Vector3;)F
    .locals 2
    .param p1, "axis"    # Lcom/badlogic/gdx/math/Vector3;

    .line 760
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Quaternion;->getAxisAngleRad(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v0

    const v1, 0x42652ee0

    mul-float/2addr v0, v1

    return v0
.end method

.method public getAxisAngleRad(Lcom/badlogic/gdx/math/Vector3;)F
    .locals 6
    .param p1, "axis"    # Lcom/badlogic/gdx/math/Vector3;

    .line 774
    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Quaternion;->nor()Lcom/badlogic/gdx/math/Quaternion;

    .line 775
    :cond_0
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->acos(D)D

    move-result-wide v4

    mul-double/2addr v4, v2

    double-to-float v0, v4

    .line 776
    .local v0, "angle":F
    iget v2, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v2, v2

    sub-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    .line 777
    .local v1, "s":D
    const-wide v3, 0x3eb0c6f7a0000000L    # 9.999999974752427E-7

    cmpg-double v3, v1, v3

    if-gez v3, :cond_1

    .line 779
    iget v3, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iput v3, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 780
    iget v3, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iput v3, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 781
    iget v3, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iput v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    goto :goto_0

    .line 783
    :cond_1
    iget v3, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    float-to-double v3, v3

    div-double/2addr v3, v1

    double-to-float v3, v3

    iput v3, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 784
    iget v3, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    float-to-double v3, v3

    div-double/2addr v3, v1

    double-to-float v3, v3

    iput v3, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 785
    iget v3, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    float-to-double v3, v3

    div-double/2addr v3, v1

    double-to-float v3, v3

    iput v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    .line 788
    :goto_0
    return v0
.end method

.method public getGimbalPole()I
    .locals 3

    .line 156
    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v2, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 157
    .local v0, "t":F
    const v1, 0x3eff7cee    # 0.499f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const v1, -0x41008312    # -0.499f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    const/4 v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getPitch()F
    .locals 2

    .line 184
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Quaternion;->getPitchRad()F

    move-result v0

    const v1, 0x42652ee0

    mul-float/2addr v0, v1

    return v0
.end method

.method public getPitchRad()F
    .locals 5

    .line 177
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Quaternion;->getGimbalPole()I

    move-result v0

    .line 178
    .local v0, "pole":I
    if-nez v0, :cond_0

    const/high16 v1, 0x40000000    # 2.0f

    iget v2, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    iget v3, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v4, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    mul-float/2addr v2, v1

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v1, v3}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->asin(D)D

    move-result-wide v1

    double-to-float v1, v1

    goto :goto_0

    :cond_0
    int-to-float v1, v0

    const v2, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    :goto_0
    return v1
.end method

.method public getRoll()F
    .locals 2

    .line 171
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Quaternion;->getRollRad()F

    move-result v0

    const v1, 0x42652ee0

    mul-float/2addr v0, v1

    return v0
.end method

.method public getRollRad()F
    .locals 6

    .line 163
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Quaternion;->getGimbalPole()I

    move-result v0

    .line 164
    .local v0, "pole":I
    const/high16 v1, 0x40000000    # 2.0f

    if-nez v0, :cond_0

    iget v2, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    iget v3, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v2, v3

    iget v4, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v5, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    mul-float/2addr v2, v1

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v5, v5

    mul-float/2addr v3, v3

    add-float/2addr v5, v3

    mul-float/2addr v5, v1

    sub-float/2addr v4, v5

    invoke-static {v2, v4}, Lcom/badlogic/gdx/math/MathUtils;->atan2(FF)F

    move-result v1

    goto :goto_0

    :cond_0
    int-to-float v2, v0

    mul-float/2addr v2, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v3, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    .line 165
    invoke-static {v1, v3}, Lcom/badlogic/gdx/math/MathUtils;->atan2(FF)F

    move-result v1

    mul-float/2addr v1, v2

    .line 164
    :goto_0
    return v1
.end method

.method public getSwingTwist(FFFLcom/badlogic/gdx/math/Quaternion;Lcom/badlogic/gdx/math/Quaternion;)V
    .locals 6
    .param p1, "axisX"    # F
    .param p2, "axisY"    # F
    .param p3, "axisZ"    # F
    .param p4, "swing"    # Lcom/badlogic/gdx/math/Quaternion;
    .param p5, "twist"    # Lcom/badlogic/gdx/math/Quaternion;

    .line 819
    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v2, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/badlogic/gdx/math/Vector3;->dot(FFFFFF)F

    move-result v0

    .line 820
    .local v0, "d":F
    mul-float v1, p1, v0

    mul-float v2, p2, v0

    mul-float v3, p3, v0

    iget v4, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    invoke-virtual {p5, v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Quaternion;->set(FFFF)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Quaternion;->nor()Lcom/badlogic/gdx/math/Quaternion;

    .line 821
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p5, v1}, Lcom/badlogic/gdx/math/Quaternion;->mul(F)Lcom/badlogic/gdx/math/Quaternion;

    .line 822
    :cond_0
    invoke-virtual {p4, p5}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/math/Quaternion;->conjugate()Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/math/Quaternion;->mulLeft(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    .line 823
    return-void
.end method

.method public getSwingTwist(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Quaternion;Lcom/badlogic/gdx/math/Quaternion;)V
    .locals 6
    .param p1, "axis"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "swing"    # Lcom/badlogic/gdx/math/Quaternion;
    .param p3, "twist"    # Lcom/badlogic/gdx/math/Quaternion;

    .line 835
    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/math/Quaternion;->getSwingTwist(FFFLcom/badlogic/gdx/math/Quaternion;Lcom/badlogic/gdx/math/Quaternion;)V

    .line 836
    return-void
.end method

.method public getYaw()F
    .locals 2

    .line 196
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Quaternion;->getYawRad()F

    move-result v0

    const v1, 0x42652ee0

    mul-float/2addr v0, v1

    return v0
.end method

.method public getYawRad()F
    .locals 5

    .line 190
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Quaternion;->getGimbalPole()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v3, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v1, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v0, v0

    mul-float/2addr v2, v2

    add-float/2addr v0, v2

    mul-float/2addr v0, v3

    sub-float/2addr v4, v0

    invoke-static {v1, v4}, Lcom/badlogic/gdx/math/MathUtils;->atan2(FF)F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 679
    const/16 v0, 0x1f

    .line 680
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 681
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v3

    add-int/2addr v2, v3

    .line 682
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v3

    add-int/2addr v1, v3

    .line 683
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v3

    add-int/2addr v2, v3

    .line 684
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToRawIntBits(F)I

    move-result v3

    add-int/2addr v1, v3

    .line 685
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public idt()Lcom/badlogic/gdx/math/Quaternion;
    .locals 2

    .line 372
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v0, v0, v1}, Lcom/badlogic/gdx/math/Quaternion;->set(FFFF)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public isIdentity()Z
    .locals 2

    .line 377
    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/MathUtils;->isEqual(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIdentity(F)Z
    .locals 2
    .param p1, "tolerance"    # F

    .line 382
    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    invoke-static {v0, p1}, Lcom/badlogic/gdx/math/MathUtils;->isZero(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    invoke-static {v0, p1}, Lcom/badlogic/gdx/math/MathUtils;->isZero(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    invoke-static {v0, p1}, Lcom/badlogic/gdx/math/MathUtils;->isZero(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 383
    invoke-static {v0, v1, p1}, Lcom/badlogic/gdx/math/MathUtils;->isEqual(FFF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 382
    :goto_0
    return v0
.end method

.method public len()F
    .locals 2

    .line 108
    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v0, v0

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

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

    .line 205
    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v0, v0

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method public mul(F)Lcom/badlogic/gdx/math/Quaternion;
    .locals 1
    .param p1, "scalar"    # F

    .line 742
    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    .line 743
    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    .line 744
    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    .line 745
    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    .line 746
    return-object p0
.end method

.method public mul(FFFF)Lcom/badlogic/gdx/math/Quaternion;
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "w"    # F

    .line 271
    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float v1, v0, p1

    iget v2, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float v3, v2, p4

    add-float/2addr v1, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float v4, v3, p3

    add-float/2addr v1, v4

    iget v4, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float v5, v4, p2

    sub-float/2addr v1, v5

    .line 272
    .local v1, "newX":F
    mul-float v5, v0, p2

    mul-float v6, v3, p4

    add-float/2addr v5, v6

    mul-float v6, v4, p1

    add-float/2addr v5, v6

    mul-float v6, v2, p3

    sub-float/2addr v5, v6

    .line 273
    .local v5, "newY":F
    mul-float v6, v0, p3

    mul-float v7, v4, p4

    add-float/2addr v6, v7

    mul-float v7, v2, p2

    add-float/2addr v6, v7

    mul-float v7, v3, p1

    sub-float/2addr v6, v7

    .line 274
    .local v6, "newZ":F
    mul-float/2addr v0, p4

    mul-float/2addr v2, p1

    sub-float/2addr v0, v2

    mul-float/2addr v3, p2

    sub-float/2addr v0, v3

    mul-float/2addr v4, p3

    sub-float/2addr v0, v4

    .line 275
    .local v0, "newW":F
    iput v1, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    .line 276
    iput v5, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    .line 277
    iput v6, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    .line 278
    iput v0, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    .line 279
    return-object p0
.end method

.method public mul(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;
    .locals 12
    .param p1, "other"    # Lcom/badlogic/gdx/math/Quaternion;

    .line 252
    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    iget v1, p1, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float v2, v0, v1

    iget v3, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v4, p1, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float v5, v3, v4

    add-float/2addr v2, v5

    iget v5, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v6, p1, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float v7, v5, v6

    add-float/2addr v2, v7

    iget v7, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v8, p1, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float v9, v7, v8

    sub-float/2addr v2, v9

    .line 253
    .local v2, "newX":F
    mul-float v9, v0, v8

    mul-float v10, v5, v4

    add-float/2addr v9, v10

    mul-float v10, v7, v1

    add-float/2addr v9, v10

    mul-float v10, v3, v6

    sub-float/2addr v9, v10

    .line 254
    .local v9, "newY":F
    mul-float v10, v0, v6

    mul-float v11, v7, v4

    add-float/2addr v10, v11

    mul-float v11, v3, v8

    add-float/2addr v10, v11

    mul-float v11, v5, v1

    sub-float/2addr v10, v11

    .line 255
    .local v10, "newZ":F
    mul-float/2addr v0, v4

    mul-float/2addr v3, v1

    sub-float/2addr v0, v3

    mul-float/2addr v5, v8

    sub-float/2addr v0, v5

    mul-float/2addr v7, v6

    sub-float/2addr v0, v7

    .line 256
    .local v0, "newW":F
    iput v2, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    .line 257
    iput v9, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    .line 258
    iput v10, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    .line 259
    iput v0, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    .line 260
    return-object p0
.end method

.method public mulLeft(FFFF)Lcom/badlogic/gdx/math/Quaternion;
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "w"    # F

    .line 306
    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float v1, p4, v0

    iget v2, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float v3, p1, v2

    add-float/2addr v1, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float v4, p2, v3

    add-float/2addr v1, v4

    iget v4, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float v5, p3, v4

    sub-float/2addr v1, v5

    .line 307
    .local v1, "newX":F
    mul-float v5, p4, v4

    mul-float v6, p2, v2

    add-float/2addr v5, v6

    mul-float v6, p3, v0

    add-float/2addr v5, v6

    mul-float v6, p1, v3

    sub-float/2addr v5, v6

    .line 308
    .local v5, "newY":F
    mul-float v6, p4, v3

    mul-float v7, p3, v2

    add-float/2addr v6, v7

    mul-float v7, p1, v4

    add-float/2addr v6, v7

    mul-float v7, p2, v0

    sub-float/2addr v6, v7

    .line 309
    .local v6, "newZ":F
    mul-float/2addr v2, p4

    mul-float/2addr v0, p1

    sub-float/2addr v2, v0

    mul-float/2addr v4, p2

    sub-float/2addr v2, v4

    mul-float/2addr v3, p3

    sub-float/2addr v2, v3

    .line 310
    .local v2, "newW":F
    iput v1, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    .line 311
    iput v5, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    .line 312
    iput v6, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    .line 313
    iput v2, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    .line 314
    return-object p0
.end method

.method public mulLeft(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;
    .locals 12
    .param p1, "other"    # Lcom/badlogic/gdx/math/Quaternion;

    .line 287
    iget v0, p1, Lcom/badlogic/gdx/math/Quaternion;->w:F

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float v2, v0, v1

    iget v3, p1, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v4, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float v5, v3, v4

    add-float/2addr v2, v5

    iget v5, p1, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v6, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float v7, v5, v6

    add-float/2addr v2, v7

    iget v7, p1, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v8, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float v9, v7, v8

    sub-float/2addr v2, v9

    .line 288
    .local v2, "newX":F
    mul-float v9, v0, v8

    mul-float v10, v5, v4

    add-float/2addr v9, v10

    mul-float v10, v7, v1

    add-float/2addr v9, v10

    mul-float v10, v3, v6

    sub-float/2addr v9, v10

    .line 289
    .local v9, "newY":F
    mul-float v10, v0, v6

    mul-float v11, v7, v4

    add-float/2addr v10, v11

    mul-float v11, v3, v8

    add-float/2addr v10, v11

    mul-float v11, v5, v1

    sub-float/2addr v10, v11

    .line 290
    .local v10, "newZ":F
    mul-float/2addr v0, v4

    mul-float/2addr v3, v1

    sub-float/2addr v0, v3

    mul-float/2addr v5, v8

    sub-float/2addr v0, v5

    mul-float/2addr v7, v6

    sub-float/2addr v0, v7

    .line 291
    .local v0, "newW":F
    iput v2, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    .line 292
    iput v9, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    .line 293
    iput v10, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    .line 294
    iput v0, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    .line 295
    return-object p0
.end method

.method public nor()Lcom/badlogic/gdx/math/Quaternion;
    .locals 3

    .line 211
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Quaternion;->len2()F

    move-result v0

    .line 212
    .local v0, "len":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/MathUtils;->isEqual(FF)Z

    move-result v1

    if-nez v1, :cond_0

    .line 213
    float-to-double v1, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v0, v1

    .line 214
    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    .line 215
    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    .line 216
    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    .line 217
    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    .line 219
    :cond_0
    return-object p0
.end method

.method public set(FFFF)Lcom/badlogic/gdx/math/Quaternion;
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "w"    # F

    .line 73
    iput p1, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    .line 74
    iput p2, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    .line 75
    iput p3, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    .line 76
    iput p4, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    .line 77
    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;
    .locals 4
    .param p1, "quaternion"    # Lcom/badlogic/gdx/math/Quaternion;

    .line 84
    iget v0, p1, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v3, p1, Lcom/badlogic/gdx/math/Quaternion;->w:F

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/math/Quaternion;->set(FFFF)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public set(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Quaternion;
    .locals 3
    .param p1, "axis"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "angle"    # F

    .line 93
    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/badlogic/gdx/math/Quaternion;->setFromAxis(FFFF)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public setEulerAngles(FFF)Lcom/badlogic/gdx/math/Quaternion;
    .locals 3
    .param p1, "yaw"    # F
    .param p2, "pitch"    # F
    .param p3, "roll"    # F

    .line 122
    const v0, 0x3c8efa35

    mul-float v1, p1, v0

    mul-float v2, p2, v0

    mul-float/2addr v0, p3

    invoke-virtual {p0, v1, v2, v0}, Lcom/badlogic/gdx/math/Quaternion;->setEulerAnglesRad(FFF)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public setEulerAnglesRad(FFF)Lcom/badlogic/gdx/math/Quaternion;
    .locals 16
    .param p1, "yaw"    # F
    .param p2, "pitch"    # F
    .param p3, "roll"    # F

    .line 132
    move-object/from16 v0, p0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v2, p3, v1

    .line 133
    .local v2, "hr":F
    float-to-double v3, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 134
    .local v3, "shr":F
    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 135
    .local v4, "chr":F
    mul-float v5, p2, v1

    .line 136
    .local v5, "hp":F
    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    .line 137
    .local v6, "shp":F
    float-to-double v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v7, v7

    .line 138
    .local v7, "chp":F
    mul-float v1, v1, p1

    .line 139
    .local v1, "hy":F
    float-to-double v8, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v8, v8

    .line 140
    .local v8, "shy":F
    float-to-double v9, v1

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    double-to-float v9, v9

    .line 141
    .local v9, "chy":F
    mul-float v10, v9, v6

    .line 142
    .local v10, "chy_shp":F
    mul-float v11, v8, v7

    .line 143
    .local v11, "shy_chp":F
    mul-float v12, v9, v7

    .line 144
    .local v12, "chy_chp":F
    mul-float v13, v8, v6

    .line 146
    .local v13, "shy_shp":F
    mul-float v14, v10, v4

    mul-float v15, v11, v3

    add-float/2addr v14, v15

    iput v14, v0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    .line 147
    mul-float v14, v11, v4

    mul-float v15, v10, v3

    sub-float/2addr v14, v15

    iput v14, v0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    .line 148
    mul-float v14, v12, v3

    mul-float v15, v13, v4

    sub-float/2addr v14, v15

    iput v14, v0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    .line 149
    mul-float v14, v12, v4

    mul-float v15, v13, v3

    add-float/2addr v14, v15

    iput v14, v0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    .line 150
    return-object v0
.end method

.method public setFromAxes(FFFFFFFFF)Lcom/badlogic/gdx/math/Quaternion;
    .locals 11
    .param p1, "xx"    # F
    .param p2, "xy"    # F
    .param p3, "xz"    # F
    .param p4, "yx"    # F
    .param p5, "yy"    # F
    .param p6, "yz"    # F
    .param p7, "zx"    # F
    .param p8, "zy"    # F
    .param p9, "zz"    # F

    .line 474
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Lcom/badlogic/gdx/math/Quaternion;->setFromAxes(ZFFFFFFFFF)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public setFromAxes(ZFFFFFFFFF)Lcom/badlogic/gdx/math/Quaternion;
    .locals 16
    .param p1, "normalizeAxes"    # Z
    .param p2, "xx"    # F
    .param p3, "xy"    # F
    .param p4, "xz"    # F
    .param p5, "yx"    # F
    .param p6, "yy"    # F
    .param p7, "yz"    # F
    .param p8, "zx"    # F
    .param p9, "zy"    # F
    .param p10, "zz"    # F

    .line 498
    move-object/from16 v0, p0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    .line 499
    invoke-static/range {p2 .. p4}, Lcom/badlogic/gdx/math/Vector3;->len(FFF)F

    move-result v2

    div-float v2, v1, v2

    .line 500
    .local v2, "lx":F
    invoke-static/range {p5 .. p7}, Lcom/badlogic/gdx/math/Vector3;->len(FFF)F

    move-result v3

    div-float v3, v1, v3

    .line 501
    .local v3, "ly":F
    invoke-static/range {p8 .. p10}, Lcom/badlogic/gdx/math/Vector3;->len(FFF)F

    move-result v4

    div-float v4, v1, v4

    .line 502
    .local v4, "lz":F
    mul-float v5, p2, v2

    .line 503
    .end local p2    # "xx":F
    .local v5, "xx":F
    mul-float v6, p3, v2

    .line 504
    .end local p3    # "xy":F
    .local v6, "xy":F
    mul-float v7, p4, v2

    .line 505
    .end local p4    # "xz":F
    .local v7, "xz":F
    mul-float v8, p5, v3

    .line 506
    .end local p5    # "yx":F
    .local v8, "yx":F
    mul-float v9, p6, v3

    .line 507
    .end local p6    # "yy":F
    .local v9, "yy":F
    mul-float v10, p7, v3

    .line 508
    .end local p7    # "yz":F
    .local v10, "yz":F
    mul-float v11, p8, v4

    .line 509
    .end local p8    # "zx":F
    .local v11, "zx":F
    mul-float v12, p9, v4

    .line 510
    .end local p9    # "zy":F
    .local v12, "zy":F
    mul-float v13, p10, v4

    .end local p10    # "zz":F
    .local v13, "zz":F
    goto :goto_0

    .line 498
    .end local v2    # "lx":F
    .end local v3    # "ly":F
    .end local v4    # "lz":F
    .end local v5    # "xx":F
    .end local v6    # "xy":F
    .end local v7    # "xz":F
    .end local v8    # "yx":F
    .end local v9    # "yy":F
    .end local v10    # "yz":F
    .end local v11    # "zx":F
    .end local v12    # "zy":F
    .end local v13    # "zz":F
    .restart local p2    # "xx":F
    .restart local p3    # "xy":F
    .restart local p4    # "xz":F
    .restart local p5    # "yx":F
    .restart local p6    # "yy":F
    .restart local p7    # "yz":F
    .restart local p8    # "zx":F
    .restart local p9    # "zy":F
    .restart local p10    # "zz":F
    :cond_0
    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    .line 514
    .end local p2    # "xx":F
    .end local p3    # "xy":F
    .end local p4    # "xz":F
    .end local p5    # "yx":F
    .end local p6    # "yy":F
    .end local p7    # "yz":F
    .end local p8    # "zx":F
    .end local p9    # "zy":F
    .end local p10    # "zz":F
    .restart local v5    # "xx":F
    .restart local v6    # "xy":F
    .restart local v7    # "xz":F
    .restart local v8    # "yx":F
    .restart local v9    # "yy":F
    .restart local v10    # "yz":F
    .restart local v11    # "zx":F
    .restart local v12    # "zy":F
    .restart local v13    # "zz":F
    :goto_0
    add-float v2, v5, v9

    add-float/2addr v2, v13

    .line 517
    .local v2, "t":F
    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    const/high16 v4, 0x3f000000    # 0.5f

    if-ltz v3, :cond_1

    .line 518
    add-float/2addr v1, v2

    float-to-double v14, v1

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-float v1, v14

    .line 519
    .local v1, "s":F
    mul-float v3, v1, v4

    iput v3, v0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    .line 520
    div-float/2addr v4, v1

    .line 521
    .end local v1    # "s":F
    .local v4, "s":F
    sub-float v1, v12, v10

    mul-float/2addr v1, v4

    iput v1, v0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    .line 522
    sub-float v1, v7, v11

    mul-float/2addr v1, v4

    iput v1, v0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    .line 523
    sub-float v1, v8, v6

    mul-float/2addr v1, v4

    iput v1, v0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    .line 524
    .end local v4    # "s":F
    move/from16 p2, v2

    goto :goto_1

    :cond_1
    cmpl-float v1, v5, v9

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    if-lez v1, :cond_2

    cmpl-float v1, v5, v13

    if-lez v1, :cond_2

    .line 525
    move/from16 p2, v2

    .end local v2    # "t":F
    .local p2, "t":F
    float-to-double v1, v5

    add-double/2addr v1, v14

    float-to-double v14, v9

    sub-double/2addr v1, v14

    float-to-double v14, v13

    sub-double/2addr v1, v14

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 526
    .restart local v1    # "s":F
    mul-float v2, v1, v4

    iput v2, v0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    .line 527
    div-float/2addr v4, v1

    .line 528
    .end local v1    # "s":F
    .restart local v4    # "s":F
    add-float v1, v8, v6

    mul-float/2addr v1, v4

    iput v1, v0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    .line 529
    add-float v1, v7, v11

    mul-float/2addr v1, v4

    iput v1, v0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    .line 530
    sub-float v1, v12, v10

    mul-float/2addr v1, v4

    iput v1, v0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    .line 531
    .end local v4    # "s":F
    goto :goto_1

    .line 524
    .end local p2    # "t":F
    .restart local v2    # "t":F
    :cond_2
    move/from16 p2, v2

    .line 531
    .end local v2    # "t":F
    .restart local p2    # "t":F
    cmpl-float v1, v9, v13

    if-lez v1, :cond_3

    .line 532
    float-to-double v1, v9

    add-double/2addr v1, v14

    float-to-double v14, v5

    sub-double/2addr v1, v14

    float-to-double v14, v13

    sub-double/2addr v1, v14

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 533
    .restart local v1    # "s":F
    mul-float v2, v1, v4

    iput v2, v0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    .line 534
    div-float/2addr v4, v1

    .line 535
    .end local v1    # "s":F
    .restart local v4    # "s":F
    add-float v1, v8, v6

    mul-float/2addr v1, v4

    iput v1, v0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    .line 536
    add-float v1, v12, v10

    mul-float/2addr v1, v4

    iput v1, v0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    .line 537
    sub-float v1, v7, v11

    mul-float/2addr v1, v4

    iput v1, v0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    .line 538
    .end local v4    # "s":F
    goto :goto_1

    .line 539
    :cond_3
    float-to-double v1, v13

    add-double/2addr v1, v14

    float-to-double v14, v5

    sub-double/2addr v1, v14

    float-to-double v14, v9

    sub-double/2addr v1, v14

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 540
    .restart local v1    # "s":F
    mul-float v2, v1, v4

    iput v2, v0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    .line 541
    div-float/2addr v4, v1

    .line 542
    .end local v1    # "s":F
    .restart local v4    # "s":F
    add-float v1, v7, v11

    mul-float/2addr v1, v4

    iput v1, v0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    .line 543
    add-float v1, v12, v10

    mul-float/2addr v1, v4

    iput v1, v0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    .line 544
    sub-float v1, v8, v6

    mul-float/2addr v1, v4

    iput v1, v0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    .line 547
    .end local v4    # "s":F
    :goto_1
    return-object v0
.end method

.method public setFromAxis(FFFF)Lcom/badlogic/gdx/math/Quaternion;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "degrees"    # F

    .line 412
    const v0, 0x3c8efa35

    mul-float/2addr v0, p4

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/math/Quaternion;->setFromAxisRad(FFFF)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public setFromAxis(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Quaternion;
    .locals 3
    .param p1, "axis"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "degrees"    # F

    .line 393
    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/badlogic/gdx/math/Quaternion;->setFromAxis(FFFF)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public setFromAxisRad(FFFF)Lcom/badlogic/gdx/math/Quaternion;
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "radians"    # F

    .line 422
    invoke-static {p1, p2, p3}, Lcom/badlogic/gdx/math/Vector3;->len(FFF)F

    move-result v0

    .line 423
    .local v0, "d":F
    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Quaternion;->idt()Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v1

    return-object v1

    .line 424
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, v0

    .line 425
    .end local v0    # "d":F
    .local v2, "d":F
    cmpg-float v0, p4, v1

    const v1, 0x40c90fdb

    if-gez v0, :cond_1

    neg-float v0, p4

    rem-float/2addr v0, v1

    sub-float/2addr v1, v0

    goto :goto_0

    :cond_1
    rem-float v1, p4, v1

    :goto_0
    move v0, v1

    .line 426
    .local v0, "l_ang":F
    const/high16 v1, 0x40000000    # 2.0f

    div-float v3, v0, v1

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 427
    .local v3, "l_sin":F
    div-float v1, v0, v1

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v1, v4

    .line 428
    .local v1, "l_cos":F
    mul-float v4, v2, p1

    mul-float/2addr v4, v3

    mul-float v5, v2, p2

    mul-float/2addr v5, v3

    mul-float v6, v2, p3

    mul-float/2addr v6, v3

    invoke-virtual {p0, v4, v5, v6, v1}, Lcom/badlogic/gdx/math/Quaternion;->set(FFFF)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/math/Quaternion;->nor()Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v4

    return-object v4
.end method

.method public setFromAxisRad(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Quaternion;
    .locals 3
    .param p1, "axis"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "radians"    # F

    .line 402
    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/badlogic/gdx/math/Quaternion;->setFromAxisRad(FFFF)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public setFromCross(FFFFFF)Lcom/badlogic/gdx/math/Quaternion;
    .locals 6
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "z1"    # F
    .param p4, "x2"    # F
    .param p5, "y2"    # F
    .param p6, "z2"    # F

    .line 569
    invoke-static/range {p1 .. p6}, Lcom/badlogic/gdx/math/Vector3;->dot(FFFFFF)F

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v0

    .line 570
    .local v0, "dot":F
    float-to-double v1, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->acos(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 571
    .local v1, "angle":F
    mul-float v2, p2, p6

    mul-float v3, p3, p5

    sub-float/2addr v2, v3

    mul-float v3, p3, p4

    mul-float v4, p1, p6

    sub-float/2addr v3, v4

    mul-float v4, p1, p5

    mul-float v5, p2, p4

    sub-float/2addr v4, v5

    invoke-virtual {p0, v2, v3, v4, v1}, Lcom/badlogic/gdx/math/Quaternion;->setFromAxisRad(FFFF)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v2

    return-object v2
.end method

.method public setFromCross(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Quaternion;
    .locals 7
    .param p1, "v1"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "v2"    # Lcom/badlogic/gdx/math/Vector3;

    .line 555
    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v0

    .line 556
    .local v0, "dot":F
    float-to-double v1, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->acos(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 557
    .local v1, "angle":F
    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v3, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v2, v3

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v4, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v4, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v3, v4

    iget v4, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v5, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget v4, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v5, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v4, v5

    iget v5, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v6, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {p0, v2, v3, v4, v1}, Lcom/badlogic/gdx/math/Quaternion;->setFromAxisRad(FFFF)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v2

    return-object v2
.end method

.method public setFromMatrix(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Quaternion;
    .locals 1
    .param p1, "matrix"    # Lcom/badlogic/gdx/math/Matrix3;

    .line 452
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/badlogic/gdx/math/Quaternion;->setFromMatrix(ZLcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public setFromMatrix(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Quaternion;
    .locals 1
    .param p1, "matrix"    # Lcom/badlogic/gdx/math/Matrix4;

    .line 440
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/badlogic/gdx/math/Quaternion;->setFromMatrix(ZLcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public setFromMatrix(ZLcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Quaternion;
    .locals 13
    .param p1, "normalizeAxes"    # Z
    .param p2, "matrix"    # Lcom/badlogic/gdx/math/Matrix3;

    .line 445
    iget-object v0, p2, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x0

    aget v4, v0, v1

    iget-object v0, p2, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x3

    aget v5, v0, v1

    iget-object v0, p2, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x6

    aget v6, v0, v1

    iget-object v0, p2, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x1

    aget v7, v0, v1

    iget-object v0, p2, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x4

    aget v8, v0, v1

    iget-object v0, p2, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x7

    aget v9, v0, v1

    iget-object v0, p2, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x2

    aget v10, v0, v1

    iget-object v0, p2, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/4 v1, 0x5

    aget v11, v0, v1

    iget-object v0, p2, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    const/16 v1, 0x8

    aget v12, v0, v1

    move-object v2, p0

    move v3, p1

    invoke-virtual/range {v2 .. v12}, Lcom/badlogic/gdx/math/Quaternion;->setFromAxes(ZFFFFFFFFF)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public setFromMatrix(ZLcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Quaternion;
    .locals 13
    .param p1, "normalizeAxes"    # Z
    .param p2, "matrix"    # Lcom/badlogic/gdx/math/Matrix4;

    .line 433
    iget-object v0, p2, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x0

    aget v4, v0, v1

    iget-object v0, p2, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x4

    aget v5, v0, v1

    iget-object v0, p2, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0x8

    aget v6, v0, v1

    iget-object v0, p2, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x1

    aget v7, v0, v1

    iget-object v0, p2, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x5

    aget v8, v0, v1

    iget-object v0, p2, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0x9

    aget v9, v0, v1

    iget-object v0, p2, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x2

    aget v10, v0, v1

    iget-object v0, p2, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/4 v1, 0x6

    aget v11, v0, v1

    iget-object v0, p2, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    const/16 v1, 0xa

    aget v12, v0, v1

    move-object v2, p0

    move v3, p1

    invoke-virtual/range {v2 .. v12}, Lcom/badlogic/gdx/math/Quaternion;->setFromAxes(ZFFFFFFFFF)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public slerp(Lcom/badlogic/gdx/math/Quaternion;F)Lcom/badlogic/gdx/math/Quaternion;
    .locals 10
    .param p1, "end"    # Lcom/badlogic/gdx/math/Quaternion;
    .param p2, "alpha"    # F

    .line 580
    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iget v2, p1, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    iget v2, p1, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 581
    .local v0, "d":F
    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    neg-float v2, v0

    goto :goto_0

    :cond_0
    move v2, v0

    .line 584
    .local v2, "absDot":F
    :goto_0
    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v4, v3, p2

    .line 585
    .local v4, "scale0":F
    move v5, p2

    .line 589
    .local v5, "scale1":F
    sub-float v6, v3, v2

    float-to-double v6, v6

    const-wide v8, 0x3fb999999999999aL    # 0.1

    cmpl-double v6, v6, v8

    if-lez v6, :cond_1

    .line 591
    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide v6

    double-to-float v6, v6

    .line 592
    .local v6, "angle":F
    float-to-double v7, v6

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    div-float v7, v3, v7

    .line 596
    .local v7, "invSinTheta":F
    sub-float/2addr v3, p2

    mul-float/2addr v3, v6

    float-to-double v8, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v3, v8

    mul-float v4, v3, v7

    .line 597
    mul-float v3, p2, v6

    float-to-double v8, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v3, v8

    mul-float v5, v3, v7

    .line 600
    .end local v6    # "angle":F
    .end local v7    # "invSinTheta":F
    :cond_1
    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    neg-float v5, v5

    .line 604
    :cond_2
    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v1, v4

    iget v3, p1, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v3, v5

    add-float/2addr v1, v3

    iput v1, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    .line 605
    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v1, v4

    iget v3, p1, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v3, v5

    add-float/2addr v1, v3

    iput v1, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    .line 606
    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v1, v4

    iget v3, p1, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v3, v5

    add-float/2addr v1, v3

    iput v1, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    .line 607
    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v1, v4

    iget v3, p1, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v3, v5

    add-float/2addr v1, v3

    iput v1, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    .line 610
    return-object p0
.end method

.method public slerp([Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;
    .locals 4
    .param p1, "q"    # [Lcom/badlogic/gdx/math/Quaternion;

    .line 620
    array-length v0, p1

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    .line 621
    .local v1, "w":F
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Quaternion;->exp(F)Lcom/badlogic/gdx/math/Quaternion;

    .line 622
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 623
    sget-object v2, Lcom/badlogic/gdx/math/Quaternion;->tmp1:Lcom/badlogic/gdx/math/Quaternion;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/math/Quaternion;->exp(F)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/math/Quaternion;->mul(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    .line 622
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 624
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Quaternion;->nor()Lcom/badlogic/gdx/math/Quaternion;

    .line 625
    return-object p0
.end method

.method public slerp([Lcom/badlogic/gdx/math/Quaternion;[F)Lcom/badlogic/gdx/math/Quaternion;
    .locals 3
    .param p1, "q"    # [Lcom/badlogic/gdx/math/Quaternion;
    .param p2, "w"    # [F

    .line 637
    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v1

    aget v0, p2, v0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/math/Quaternion;->exp(F)Lcom/badlogic/gdx/math/Quaternion;

    .line 638
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 639
    sget-object v1, Lcom/badlogic/gdx/math/Quaternion;->tmp1:Lcom/badlogic/gdx/math/Quaternion;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v1

    aget v2, p2, v0

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Quaternion;->exp(F)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/math/Quaternion;->mul(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    .line 638
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 640
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Quaternion;->nor()Lcom/badlogic/gdx/math/Quaternion;

    .line 641
    return-object p0
.end method

.method public toMatrix([F)V
    .locals 14
    .param p1, "matrix"    # [F

    .line 341
    iget v0, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float v1, v0, v0

    .line 342
    .local v1, "xx":F
    iget v2, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float v3, v0, v2

    .line 343
    .local v3, "xy":F
    iget v4, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float v5, v0, v4

    .line 344
    .local v5, "xz":F
    iget v6, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v0, v6

    .line 345
    .local v0, "xw":F
    mul-float v7, v2, v2

    .line 346
    .local v7, "yy":F
    mul-float v8, v2, v4

    .line 347
    .local v8, "yz":F
    mul-float/2addr v2, v6

    .line 348
    .local v2, "yw":F
    mul-float v9, v4, v4

    .line 349
    .local v9, "zz":F
    mul-float/2addr v4, v6

    .line 351
    .local v4, "zw":F
    add-float v6, v7, v9

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v6, v10

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v6, v11, v6

    const/4 v12, 0x0

    aput v6, p1, v12

    .line 352
    sub-float v6, v3, v4

    mul-float/2addr v6, v10

    const/4 v12, 0x4

    aput v6, p1, v12

    .line 353
    add-float v6, v5, v2

    mul-float/2addr v6, v10

    const/16 v12, 0x8

    aput v6, p1, v12

    .line 354
    const/16 v6, 0xc

    const/4 v12, 0x0

    aput v12, p1, v6

    .line 355
    add-float v6, v3, v4

    mul-float/2addr v6, v10

    const/4 v13, 0x1

    aput v6, p1, v13

    .line 356
    add-float v6, v1, v9

    mul-float/2addr v6, v10

    sub-float v6, v11, v6

    const/4 v13, 0x5

    aput v6, p1, v13

    .line 357
    sub-float v6, v8, v0

    mul-float/2addr v6, v10

    const/16 v13, 0x9

    aput v6, p1, v13

    .line 358
    const/16 v6, 0xd

    aput v12, p1, v6

    .line 359
    sub-float v6, v5, v2

    mul-float/2addr v6, v10

    const/4 v13, 0x2

    aput v6, p1, v13

    .line 360
    add-float v6, v8, v0

    mul-float/2addr v6, v10

    const/4 v13, 0x6

    aput v6, p1, v13

    .line 361
    add-float v6, v1, v7

    mul-float/2addr v6, v10

    sub-float v6, v11, v6

    const/16 v10, 0xa

    aput v6, p1, v10

    .line 362
    const/16 v6, 0xe

    aput v12, p1, v6

    .line 363
    const/4 v6, 0x3

    aput v12, p1, v6

    .line 364
    const/4 v6, 0x7

    aput v12, p1, v6

    .line 365
    const/16 v6, 0xb

    aput v12, p1, v6

    .line 366
    const/16 v6, 0xf

    aput v11, p1, v6

    .line 367
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/badlogic/gdx/math/Quaternion;->w:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 6
    .param p1, "v"    # Lcom/badlogic/gdx/math/Vector3;

    .line 237
    sget-object v0, Lcom/badlogic/gdx/math/Quaternion;->tmp2:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    .line 238
    sget-object v0, Lcom/badlogic/gdx/math/Quaternion;->tmp2:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Quaternion;->conjugate()Lcom/badlogic/gdx/math/Quaternion;

    .line 239
    sget-object v0, Lcom/badlogic/gdx/math/Quaternion;->tmp2:Lcom/badlogic/gdx/math/Quaternion;

    sget-object v1, Lcom/badlogic/gdx/math/Quaternion;->tmp1:Lcom/badlogic/gdx/math/Quaternion;

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v4, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/math/Quaternion;->set(FFFF)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Quaternion;->mulLeft(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/math/Quaternion;->mulLeft(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    .line 241
    sget-object v0, Lcom/badlogic/gdx/math/Quaternion;->tmp2:Lcom/badlogic/gdx/math/Quaternion;

    iget v0, v0, Lcom/badlogic/gdx/math/Quaternion;->x:F

    iput v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 242
    sget-object v0, Lcom/badlogic/gdx/math/Quaternion;->tmp2:Lcom/badlogic/gdx/math/Quaternion;

    iget v0, v0, Lcom/badlogic/gdx/math/Quaternion;->y:F

    iput v0, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 243
    sget-object v0, Lcom/badlogic/gdx/math/Quaternion;->tmp2:Lcom/badlogic/gdx/math/Quaternion;

    iget v0, v0, Lcom/badlogic/gdx/math/Quaternion;->z:F

    iput v0, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    .line 244
    return-object p1
.end method
