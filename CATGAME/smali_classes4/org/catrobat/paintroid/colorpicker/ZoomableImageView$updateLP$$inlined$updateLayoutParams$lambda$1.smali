.class final Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$updateLP$$inlined$updateLayoutParams$lambda$1;
.super Ljava/lang/Object;
.source "ZoomableImageView.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->updateLP()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "run",
        "org/catrobat/paintroid/colorpicker/ZoomableImageView$updateLP$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $this_updateLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field final synthetic this$0:Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup$LayoutParams;Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$updateLP$$inlined$updateLayoutParams$lambda$1;->$this_updateLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iput-object p2, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$updateLP$$inlined$updateLayoutParams$lambda$1;->this$0:Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 316
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    .line 317
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$updateLP$$inlined$updateLayoutParams$lambda$1;->this$0:Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/WindowManager;

    .line 318
    .local v0, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v1

    const-string v2, "windowManager.currentWindowMetrics"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    .local v1, "windowMetrics":Landroid/view/WindowMetrics;
    invoke-virtual {v1}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v2

    .line 320
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v3

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v4

    or-int/2addr v3, v4

    .line 319
    invoke-virtual {v2, v3}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v2

    const-string v3, "windowMetrics.windowInse\u2026t()\n                    )"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    .local v2, "windowInsets":Landroid/graphics/Insets;
    iget v3, v2, Landroid/graphics/Insets;->right:I

    iget v4, v2, Landroid/graphics/Insets;->left:I

    add-int/2addr v3, v4

    .line 323
    .local v3, "insetsWidth":I
    iget v4, v2, Landroid/graphics/Insets;->top:I

    iget v5, v2, Landroid/graphics/Insets;->bottom:I

    add-int/2addr v4, v5

    .line 324
    .local v4, "insetsHeight":I
    invoke-virtual {v1}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    const-string v6, "windowMetrics.bounds"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    .local v5, "b":Landroid/graphics/Rect;
    iget-object v6, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$updateLP$$inlined$updateLayoutParams$lambda$1;->$this_updateLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v7

    sub-int/2addr v7, v3

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 326
    iget-object v6, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$updateLP$$inlined$updateLayoutParams$lambda$1;->$this_updateLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v7

    sub-int/2addr v7, v4

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .end local v0    # "windowManager":Landroid/view/WindowManager;
    .end local v1    # "windowMetrics":Landroid/view/WindowMetrics;
    .end local v2    # "windowInsets":Landroid/graphics/Insets;
    .end local v3    # "insetsWidth":I
    .end local v4    # "insetsHeight":I
    .end local v5    # "b":Landroid/graphics/Rect;
    goto :goto_0

    .line 317
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 329
    .local v0, "point":Landroid/graphics/Point;
    iget-object v1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$updateLP$$inlined$updateLayoutParams$lambda$1;->this$0:Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->getDisplay()Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 330
    :cond_2
    iget-object v1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$updateLP$$inlined$updateLayoutParams$lambda$1;->$this_updateLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v0, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 331
    iget-object v1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$updateLP$$inlined$updateLayoutParams$lambda$1;->$this_updateLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 332
    .end local v0    # "point":Landroid/graphics/Point;
    :goto_0
    nop

    .line 333
    return-void
.end method
