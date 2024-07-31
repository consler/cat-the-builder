.class final Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$ScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "ZoomableImageView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScaleListener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$ScaleListener;",
        "Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;",
        "(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;)V",
        "onScale",
        "",
        "detector",
        "Landroid/view/ScaleGestureDetector;",
        "onScaleBegin",
        "colorpicker_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;


# direct methods
.method public constructor <init>(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 134
    iput-object p1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$ScaleListener;->this$0:Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 6
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    const-string v0, "detector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    .line 142
    .local v0, "mScaleFactor":F
    iget-object v1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$ScaleListener;->this$0:Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;

    invoke-static {v1}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->access$getSaveScale$p(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;)F

    move-result v1

    .line 143
    .local v1, "prevScale":F
    iget-object v2, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$ScaleListener;->this$0:Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;

    invoke-static {v2}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->access$getSaveScale$p(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;)F

    move-result v3

    mul-float/2addr v3, v0

    invoke-static {v2, v3}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->access$setSaveScale$p(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;F)V

    .line 144
    iget-object v2, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$ScaleListener;->this$0:Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;

    invoke-static {v2}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->access$getSaveScale$p(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;)F

    move-result v2

    const/high16 v3, 0x42480000    # 50.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 145
    iget-object v2, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$ScaleListener;->this$0:Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;

    invoke-static {v2, v3}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->access$setSaveScale$p(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;F)V

    .line 146
    div-float v0, v3, v1

    goto :goto_0

    .line 147
    :cond_0
    iget-object v2, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$ScaleListener;->this$0:Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;

    invoke-static {v2}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->access$getSaveScale$p(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;)F

    move-result v2

    const/high16 v3, 0x3f400000    # 0.75f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 148
    iget-object v2, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$ScaleListener;->this$0:Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;

    invoke-static {v2, v3}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->access$setSaveScale$p(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;F)V

    .line 149
    div-float v0, v3, v1

    .line 150
    :cond_1
    :goto_0
    nop

    .line 151
    iget-object v2, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$ScaleListener;->this$0:Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;

    invoke-static {v2}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->access$getOrigWidth$p(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;)F

    move-result v2

    iget-object v3, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$ScaleListener;->this$0:Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;

    invoke-static {v3}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->access$getSaveScale$p(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;)F

    move-result v3

    mul-float/2addr v2, v3

    iget-object v3, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$ScaleListener;->this$0:Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;

    invoke-static {v3}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->access$getViewWidth$p(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;)F

    move-result v3

    cmpg-float v2, v2, v3

    if-lez v2, :cond_3

    iget-object v2, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$ScaleListener;->this$0:Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;

    invoke-static {v2}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->access$getOrigHeight$p(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;)F

    move-result v2

    iget-object v3, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$ScaleListener;->this$0:Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;

    invoke-static {v3}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->access$getSaveScale$p(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;)F

    move-result v3

    mul-float/2addr v2, v3

    iget-object v3, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$ScaleListener;->this$0:Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;

    invoke-static {v3}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->access$getViewHeight$p(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_2

    goto :goto_1

    .line 159
    :cond_2
    iget-object v2, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$ScaleListener;->this$0:Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;

    invoke-static {v2}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->access$getMMatrix$p(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v4

    invoke-virtual {v2, v0, v0, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto :goto_2

    .line 152
    :cond_3
    :goto_1
    iget-object v2, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$ScaleListener;->this$0:Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;

    invoke-static {v2}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->access$getMMatrix$p(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;)Landroid/graphics/Matrix;

    move-result-object v2

    .line 153
    nop

    .line 154
    nop

    .line 155
    iget-object v3, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$ScaleListener;->this$0:Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;

    invoke-static {v3}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->access$getViewWidth$p(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;)F

    move-result v3

    const/4 v4, 0x2

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 156
    iget-object v5, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$ScaleListener;->this$0:Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;

    invoke-static {v5}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->access$getViewHeight$p(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;)F

    move-result v5

    div-float/2addr v5, v4

    .line 152
    invoke-virtual {v2, v0, v0, v3, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 160
    :goto_2
    nop

    .line 161
    iget-object v2, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$ScaleListener;->this$0:Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;

    invoke-virtual {v2}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->correctTranslation()V

    .line 162
    const/4 v2, 0x1

    return v2
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    const-string v0, "detector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$ScaleListener;->this$0:Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->access$setMode$p(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;I)V

    .line 137
    const/4 v0, 0x1

    return v0
.end method
