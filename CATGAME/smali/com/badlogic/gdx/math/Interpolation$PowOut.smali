.class public Lcom/badlogic/gdx/math/Interpolation$PowOut;
.super Lcom/badlogic/gdx/math/Interpolation$Pow;
.source "Interpolation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/Interpolation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PowOut"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "power"    # I

    .line 193
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/math/Interpolation$Pow;-><init>(I)V

    .line 194
    return-void
.end method


# virtual methods
.method public apply(F)F
    .locals 5
    .param p1, "a"    # F

    .line 197
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, p1, v0

    float-to-double v1, v1

    iget v3, p0, Lcom/badlogic/gdx/math/Interpolation$PowOut;->power:I

    int-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    iget v2, p0, Lcom/badlogic/gdx/math/Interpolation$PowOut;->power:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    return v1
.end method
