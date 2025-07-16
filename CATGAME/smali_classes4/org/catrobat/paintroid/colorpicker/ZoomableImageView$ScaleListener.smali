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
        "colorpicker_signedRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;


# direct methods
.method public constructor <init>(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    iput-object p1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$ScaleListener;->this$0:Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 4

    const-string v0, "detector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    .line 142
    iget-object v1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$ScaleListener;->this$0:Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;

    invoke-static {v1}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->access$getSaveScale$p(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;)F

    move-result v1

    .line 143
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
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$ScaleListener;->this$0:Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;

    invoke-static {v0, v3}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->access$setSaveScale$p(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;F)V

    :goto_0
    div-float v0, v3, v1

    goto :goto_1

    .line 147
    :cond_0
    iget-object v2, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$ScaleListener;->this$0:Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;

    invoke-static {v2}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->access$getSaveScale$p(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;)F

    move-result v2

    const/high16 v3, 0x3f400000    # 0.75f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 148
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$ScaleListener;->this$0:Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;

    invoke-static {v0, v3}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->access$setSaveScale$p(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;F)V

    goto :goto_0

    .line 151
    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$ScaleListener;->this$0:Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;

    invoke-static {v1}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->access$getOrigWidth$p(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;)F

    move-result v1

    iget-object v2, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$ScaleListener;->this$0:Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;

    invoke-static {v2}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->access$getSaveScale$p(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;)F

    move-result v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$ScaleListener;->this$0:Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;

    invoke-static {v2}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->access$getViewWidth$p(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;)F

    move-result v2

    cmpg-float v1, v1, v2

    if-lez v1, :cond_3

    iget-object v1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$ScaleListener;->this$0:Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;

    invoke-static {v1}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->access$getOrigHeight$p(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;)F

    move-result v1

    iget-object v2, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$ScaleListener;->this$0:Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;

    invoke-static {v2}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->access$getSaveScale$p(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;)F

    move-result v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$ScaleListener;->this$0:Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;

    invoke-static {v2}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->access$getViewHeight$p(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;)F

    move-result v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    goto :goto_2

    .line 159
    :cond_2
    iget-object v1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$ScaleListener;->this$0:Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;

    invoke-static {v1}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->access$getMMatrix$p(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    invoke-virtual {v1, v0, v0, v2, p1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto :goto_3

    .line 152
    :cond_3
    :goto_2
    iget-object p1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$ScaleListener;->this$0:Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;

    invoke-static {p1}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->access$getMMatrix$p(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;)Landroid/graphics/Matrix;

    move-result-object p1

    .line 155
    iget-object v1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$ScaleListener;->this$0:Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;

    invoke-static {v1}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->access$getViewWidth$p(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 156
    iget-object v3, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$ScaleListener;->this$0:Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;

    invoke-static {v3}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->access$getViewHeight$p(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;)F

    move-result v3

    div-float/2addr v3, v2

    .line 152
    invoke-virtual {p1, v0, v0, v1, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 161
    :goto_3
    iget-object p1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$ScaleListener;->this$0:Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;

    invoke-virtual {p1}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->correctTranslation()V

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    const-string v0, "detector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    iget-object p1, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$ScaleListener;->this$0:Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->access$setMode$p(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;I)V

    const/4 p1, 0x1

    return p1
.end method
