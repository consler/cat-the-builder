.class public interface abstract Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;
.super Ljava/lang/Object;
.source "BrushToolOptionsView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushChangedListener;,
        Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushPreviewListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001:\u0002\r\u000eJ\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\tH&J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000cH&\u00a8\u0006\u000f"
    }
    d2 = {
        "Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;",
        "",
        "invalidate",
        "",
        "setBrushChangedListener",
        "onBrushChangedListener",
        "Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushChangedListener;",
        "setBrushPreviewListener",
        "onBrushPreviewListener",
        "Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushPreviewListener;",
        "setCurrentPaint",
        "paint",
        "Landroid/graphics/Paint;",
        "OnBrushChangedListener",
        "OnBrushPreviewListener",
        "Paintroid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# virtual methods
.method public abstract invalidate()V
.end method

.method public abstract setBrushChangedListener(Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushChangedListener;)V
.end method

.method public abstract setBrushPreviewListener(Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushPreviewListener;)V
.end method

.method public abstract setCurrentPaint(Landroid/graphics/Paint;)V
.end method
