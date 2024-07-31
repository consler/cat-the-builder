.class public Lcom/badlogic/gdx/math/Interpolation$Bounce;
.super Lcom/badlogic/gdx/math/Interpolation$BounceOut;
.source "Interpolation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/Interpolation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Bounce"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "bounces"    # I

    .line 293
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/math/Interpolation$BounceOut;-><init>(I)V

    .line 294
    return-void
.end method

.method public constructor <init>([F[F)V
    .locals 0
    .param p1, "widths"    # [F
    .param p2, "heights"    # [F

    .line 289
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/math/Interpolation$BounceOut;-><init>([F[F)V

    .line 290
    return-void
.end method

.method private out(F)F
    .locals 4
    .param p1, "a"    # F

    .line 297
    iget-object v0, p0, Lcom/badlogic/gdx/math/Interpolation$Bounce;->widths:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    add-float/2addr v0, p1

    .line 298
    .local v0, "test":F
    iget-object v3, p0, Lcom/badlogic/gdx/math/Interpolation$Bounce;->widths:[F

    aget v3, v3, v1

    cmpg-float v3, v0, v3

    if-gez v3, :cond_0

    iget-object v3, p0, Lcom/badlogic/gdx/math/Interpolation$Bounce;->widths:[F

    aget v1, v3, v1

    div-float/2addr v1, v2

    div-float v1, v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    return v1

    .line 299
    :cond_0
    invoke-super {p0, p1}, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->apply(F)F

    move-result v1

    return v1
.end method


# virtual methods
.method public apply(F)F
    .locals 4
    .param p1, "a"    # F

    .line 303
    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v1, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x40000000    # 2.0f

    if-gtz v1, :cond_0

    mul-float v0, p1, v3

    sub-float v0, v2, v0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/math/Interpolation$Bounce;->out(F)F

    move-result v0

    sub-float/2addr v2, v0

    div-float/2addr v2, v3

    return v2

    .line 304
    :cond_0
    mul-float v1, p1, v3

    sub-float/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/math/Interpolation$Bounce;->out(F)F

    move-result v1

    div-float/2addr v1, v3

    add-float/2addr v1, v0

    return v1
.end method
