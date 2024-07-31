.class public Lcom/badlogic/gdx/math/Interpolation$BounceIn;
.super Lcom/badlogic/gdx/math/Interpolation$BounceOut;
.source "Interpolation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/Interpolation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BounceIn"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "bounces"    # I

    .line 384
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/math/Interpolation$BounceOut;-><init>(I)V

    .line 385
    return-void
.end method

.method public constructor <init>([F[F)V
    .locals 0
    .param p1, "widths"    # [F
    .param p2, "heights"    # [F

    .line 380
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/math/Interpolation$BounceOut;-><init>([F[F)V

    .line 381
    return-void
.end method


# virtual methods
.method public apply(F)F
    .locals 2
    .param p1, "a"    # F

    .line 388
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, p1

    invoke-super {p0, v1}, Lcom/badlogic/gdx/math/Interpolation$BounceOut;->apply(F)F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method
