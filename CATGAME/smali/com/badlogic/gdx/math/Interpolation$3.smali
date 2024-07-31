.class final Lcom/badlogic/gdx/math/Interpolation$3;
.super Lcom/badlogic/gdx/math/Interpolation;
.source "Interpolation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/Interpolation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/badlogic/gdx/math/Interpolation;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(F)F
    .locals 4
    .param p1, "a"    # F

    .line 48
    mul-float v0, p1, p1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v2, p1, v1

    const/high16 v3, 0x40400000    # 3.0f

    sub-float v2, v3, v2

    mul-float/2addr v0, v2

    .line 49
    .end local p1    # "a":F
    .local v0, "a":F
    mul-float p1, v0, v0

    mul-float/2addr v1, v0

    sub-float/2addr v3, v1

    mul-float/2addr p1, v3

    return p1
.end method
