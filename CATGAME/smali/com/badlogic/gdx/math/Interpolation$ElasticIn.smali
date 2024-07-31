.class public Lcom/badlogic/gdx/math/Interpolation$ElasticIn;
.super Lcom/badlogic/gdx/math/Interpolation$Elastic;
.source "Interpolation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/Interpolation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ElasticIn"
.end annotation


# direct methods
.method public constructor <init>(FFIF)V
    .locals 0
    .param p1, "value"    # F
    .param p2, "power"    # F
    .param p3, "bounces"    # I
    .param p4, "scale"    # F

    .line 264
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/math/Interpolation$Elastic;-><init>(FFIF)V

    .line 265
    return-void
.end method


# virtual methods
.method public apply(F)F
    .locals 4
    .param p1, "a"    # F

    .line 268
    float-to-double v0, p1

    const-wide v2, 0x3fefae147ae147aeL    # 0.99

    cmpl-double v0, v0, v2

    const/high16 v1, 0x3f800000    # 1.0f

    if-ltz v0, :cond_0

    return v1

    .line 269
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/math/Interpolation$ElasticIn;->value:F

    float-to-double v2, v0

    iget v0, p0, Lcom/badlogic/gdx/math/Interpolation$ElasticIn;->power:F

    sub-float v1, p1, v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Lcom/badlogic/gdx/math/Interpolation$ElasticIn;->bounces:F

    mul-float/2addr v1, p1

    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Interpolation$ElasticIn;->scale:F

    mul-float/2addr v0, v1

    return v0
.end method
