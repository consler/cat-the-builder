.class public Lcom/badlogic/gdx/math/Interpolation$Pow;
.super Lcom/badlogic/gdx/math/Interpolation;
.source "Interpolation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/Interpolation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Pow"
.end annotation


# instance fields
.field final power:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "power"    # I

    .line 171
    invoke-direct {p0}, Lcom/badlogic/gdx/math/Interpolation;-><init>()V

    .line 172
    iput p1, p0, Lcom/badlogic/gdx/math/Interpolation$Pow;->power:I

    .line 173
    return-void
.end method


# virtual methods
.method public apply(F)F
    .locals 6
    .param p1, "a"    # F

    .line 176
    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v0, p1, v0

    const/high16 v1, 0x40000000    # 2.0f

    if-gtz v0, :cond_0

    mul-float v0, p1, v1

    float-to-double v2, v0

    iget v0, p0, Lcom/badlogic/gdx/math/Interpolation$Pow;->power:I

    int-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v0, v2

    div-float/2addr v0, v1

    return v0

    .line 177
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v2, p1, v0

    mul-float/2addr v2, v1

    float-to-double v1, v2

    iget v3, p0, Lcom/badlogic/gdx/math/Interpolation$Pow;->power:I

    int-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    iget v2, p0, Lcom/badlogic/gdx/math/Interpolation$Pow;->power:I

    const/4 v3, 0x2

    rem-int/2addr v2, v3

    if-nez v2, :cond_1

    const/4 v3, -0x2

    :cond_1
    int-to-float v2, v3

    div-float/2addr v1, v2

    add-float/2addr v1, v0

    return v1
.end method
