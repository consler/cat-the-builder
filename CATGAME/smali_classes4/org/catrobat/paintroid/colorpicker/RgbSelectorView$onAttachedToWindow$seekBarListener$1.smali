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
    bv = {
        0x1,
        0x0,
        0x3
    }
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
.field final synthetic this$0:Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;


# direct methods
.method constructor <init>(Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 186
    iput-object p1, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView$onAttachedToWindow$seekBarListener$1;->this$0:Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView$onAttachedToWindow$seekBarListener$1;->this$0:Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->getSelectedColor()I

    move-result v0

    .line 193
    .local v0, "color":I
    iget-object v1, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView$onAttachedToWindow$seekBarListener$1;->this$0:Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;

    invoke-virtual {v1, v0}, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->setSelectedColor(I)V

    .line 194
    if-eqz p3, :cond_0

    .line 195
    iget-object v1, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView$onAttachedToWindow$seekBarListener$1;->this$0:Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;

    invoke-static {v1, v0}, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->access$onColorChanged(Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;I)V

    .line 197
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    return-void
.end method
