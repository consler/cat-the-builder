.class public final Lorg/catrobat/paintroid/colorpicker/RgbSelectorView$onAttachedToWindow$seekBarListener$1;
.super Ljava/lang/Object;
.source "RgbSelectorView.kt"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "org/catrobat/paintroid/colorpicker/RgbSelectorView$onAttachedToWindow$seekBarListener$1",
        "Landroid/widget/SeekBar$OnSeekBarChangeListener;",
        "onProgressChanged",
        "",
        "seekBar",
        "Landroid/widget/SeekBar;",
        "progress",
        "",
        "fromUser",
        "",
        "onStartTrackingTouch",
        "onStopTrackingTouch",
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
.field final synthetic this$0:Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;


# direct methods
.method constructor <init>(Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView$onAttachedToWindow$seekBarListener$1;->this$0:Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    const-string p2, "seekBar"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    iget-object p1, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView$onAttachedToWindow$seekBarListener$1;->this$0:Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;

    invoke-virtual {p1}, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->getSelectedColor()I

    move-result p1

    .line 192
    iget-object p2, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView$onAttachedToWindow$seekBarListener$1;->this$0:Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;

    invoke-virtual {p2, p1}, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->setSelectedColor(I)V

    if-eqz p3, :cond_0

    .line 194
    iget-object p2, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView$onAttachedToWindow$seekBarListener$1;->this$0:Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;

    invoke-static {p2, p1}, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->access$onColorChanged(Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;I)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
