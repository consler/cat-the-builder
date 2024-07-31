.class public Lcom/badlogic/gdx/backends/android/surfaceview/RatioResolutionStrategy;
.super Ljava/lang/Object;
.source "RatioResolutionStrategy.java"

# interfaces
.implements Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy;


# instance fields
.field private final ratio:F


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .param p1, "ratio"    # F

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/RatioResolutionStrategy;->ratio:F

    .line 31
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1
    .param p1, "width"    # F
    .param p2, "height"    # F

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    div-float v0, p1, p2

    iput v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/RatioResolutionStrategy;->ratio:F

    .line 35
    return-void
.end method


# virtual methods
.method public calcMeasures(II)Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy$MeasuredDimension;
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 40
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 41
    .local v0, "specWidth":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 43
    .local v1, "specHeight":I
    iget v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/RatioResolutionStrategy;->ratio:F

    .line 44
    .local v2, "desiredRatio":F
    int-to-float v3, v0

    int-to-float v4, v1

    div-float/2addr v3, v4

    .line 48
    .local v3, "realRatio":F
    cmpg-float v4, v3, v2

    if-gez v4, :cond_0

    .line 49
    move v4, v0

    .line 50
    .local v4, "width":I
    int-to-float v5, v4

    div-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .local v5, "height":I
    goto :goto_0

    .line 52
    .end local v4    # "width":I
    .end local v5    # "height":I
    :cond_0
    move v5, v1

    .line 53
    .restart local v5    # "height":I
    int-to-float v4, v5

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 56
    .restart local v4    # "width":I
    :goto_0
    new-instance v6, Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy$MeasuredDimension;

    invoke-direct {v6, v4, v5}, Lcom/badlogic/gdx/backends/android/surfaceview/ResolutionStrategy$MeasuredDimension;-><init>(II)V

    return-object v6
.end method
