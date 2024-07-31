.class public Lcom/badlogic/gdx/math/Interpolation$SwingOut;
.super Lcom/badlogic/gdx/math/Interpolation;
.source "Interpolation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/Interpolation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SwingOut"
.end annotation


# instance fields
.field private final scale:F


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .param p1, "scale"    # F

    .line 415
    invoke-direct {p0}, Lcom/badlogic/gdx/math/Interpolation;-><init>()V

    .line 416
    iput p1, p0, Lcom/badlogic/gdx/math/Interpolation$SwingOut;->scale:F

    .line 417
    return-void
.end method


# virtual methods
.method public apply(F)F
    .locals 4
    .param p1, "a"    # F

    .line 420
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    .line 421
    mul-float v1, p1, p1

    iget v2, p0, Lcom/badlogic/gdx/math/Interpolation$SwingOut;->scale:F

    add-float v3, v2, v0

    mul-float/2addr v3, p1

    add-float/2addr v3, v2

    mul-float/2addr v1, v3

    add-float/2addr v1, v0

    return v1
.end method
