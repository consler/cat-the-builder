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
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001:\u0002\u0014\u0015J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0008\u0010\u0004\u001a\u00020\u0003H&J\u0008\u0010\u0005\u001a\u00020\u0006H&J\u0008\u0010\u0007\u001a\u00020\u0006H&J\u0010\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\nH&J\u0010\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\rH&J\u0010\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0010H&J\u0010\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0013H&\u00a8\u0006\u0016"
    }
    d2 = {
        "Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;",
        "",
        "getBottomToolOptions",
        "Landroid/view/View;",
        "getTopToolOptions",
        "hideCaps",
        "",
        "invalidate",
        "setBrushChangedListener",
        "onBrushChangedListener",
        "Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushChangedListener;",
        "setBrushPreviewListener",
        "onBrushPreviewListener",
        "Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushPreviewListener;",
        "setCurrentPaint",
        "paint",
        "Landroid/graphics/Paint;",
        "setStrokeCapButtonChecked",
        "strokeCap",
        "Landroid/graphics/Paint$Cap;",
        "OnBrushChangedListener",
        "OnBrushPreviewListener",
        "Paintroid_signedRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract getBottomToolOptions()Landroid/view/View;
.end method

.method public abstract getTopToolOptions()Landroid/view/View;
.end method

.method public abstract hideCaps()V
.end method

.method public abstract invalidate()V
.end method

.method public abstract setBrushChangedListener(Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushChangedListener;)V
.end method

.method public abstract setBrushPreviewListener(Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushPreviewListener;)V
.end method

.method public abstract setCurrentPaint(Landroid/graphics/Paint;)V
.end method

.method public abstract setStrokeCapButtonChecked(Landroid/graphics/Paint$Cap;)V
.end method
