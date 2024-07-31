.class final synthetic Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$onDraw$1;
.super Lkotlin/jvm/internal/MutablePropertyReference0Impl;
.source "ZoomableImageView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;)V
    .locals 6

    const-class v2, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;

    const-string v3, "mBitmap"

    const-string v4, "getMBitmap()Landroid/graphics/Bitmap;"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/MutablePropertyReference0Impl;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$onDraw$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;

    .line 235
    invoke-static {v0}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->access$getMBitmap$p(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView$onDraw$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;

    .line 235
    move-object v1, p1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;->access$setMBitmap$p(Lorg/catrobat/paintroid/colorpicker/ZoomableImageView;Landroid/graphics/Bitmap;)V

    return-void
.end method
