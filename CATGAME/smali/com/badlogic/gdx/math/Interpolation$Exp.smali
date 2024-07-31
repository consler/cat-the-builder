.class public Lcom/badlogic/gdx/math/Interpolation$Exp;
.super Lcom/badlogic/gdx/math/Interpolation;
.source "Interpolation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/Interpolation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Exp"
.end annotation


# instance fields
.field final min:F

.field final power:F

.field final scale:F

.field final value:F


# direct methods
.method public constructor <init>(FF)V
    .locals 4
    .param p1, "value"    # F
    .param p2, "power"    # F

    .line 206
    invoke-direct {p0}, Lcom/badlogic/gdx/math/Interpolation;-><init>()V

    .line 207
    iput p1, p0, Lcom/badlogic/gdx/math/Interpolation$Exp;->value:F

    .line 208
    iput p2, p0, Lcom/badlogic/gdx/math/Interpolation$Exp;->power:F

    .line 209
    float-to-double v0, p1

    neg-float v2, p2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/math/Interpolation$Exp;->min:F

    .line 210
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    div-float/2addr v1, v0

    iput v1, p0, Lcom/badlogic/gdx/math/Interpolation$Exp;->scale:F

    .line 211
    return-void
.end method


# virtual methods
.method public apply(F)F
    .locals 6
    .param p1, "a"    # F

    .line 214
    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v0, p1, v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x40000000    # 2.0f

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Interpolation$Exp;->value:F

    float-to-double v3, v0

    iget v0, p0, Lcom/badlogic/gdx/math/Interpolation$Exp;->power:F

    mul-float v5, p1, v2

    sub-float/2addr v5, v1

    mul-float/2addr v0, v5

    float-to-double v0, v0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Lcom/badlogic/gdx/math/Interpolation$Exp;->min:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Interpolation$Exp;->scale:F

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    return v0

    .line 215
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/math/Interpolation$Exp;->value:F

    float-to-double v3, v0

    iget v0, p0, Lcom/badlogic/gdx/math/Interpolation$Exp;->power:F

    neg-float v0, v0

    mul-float v5, p1, v2

    sub-float/2addr v5, v1

    mul-float/2addr v0, v5

    float-to-double v0, v0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Lcom/badlogic/gdx/math/Interpolation$Exp;->min:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Interpolation$Exp;->scale:F

    mul-float/2addr v0, v1

    sub-float v0, v2, v0

    div-float/2addr v0, v2

    return v0
.end method
