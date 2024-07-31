.class public final Lorg/catrobat/paintroid/colorpicker/ColorPickerView$onAttachedToWindow$4;
.super Ljava/lang/Object;
.source "ColorPickerView.kt"

# interfaces
.implements Lorg/catrobat/paintroid/colorpicker/AlphaSlider$OnColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->onAttachedToWindow()V
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
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "org/catrobat/paintroid/colorpicker/ColorPickerView$onAttachedToWindow$4",
        "Lorg/catrobat/paintroid/colorpicker/AlphaSlider$OnColorChangedListener;",
        "colorChanged",
        "",
        "color",
        "",
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
.field final synthetic this$0:Lorg/catrobat/paintroid/colorpicker/ColorPickerView;


# direct methods
.method constructor <init>(Lorg/catrobat/paintroid/colorpicker/ColorPickerView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/paintroid/colorpicker/ColorPickerView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 181
    iput-object p1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView$onAttachedToWindow$4;->this$0:Lorg/catrobat/paintroid/colorpicker/ColorPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public colorChanged(I)V
    .locals 2
    .param p1, "color"    # I

    .line 183
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView$onAttachedToWindow$4;->this$0:Lorg/catrobat/paintroid/colorpicker/ColorPickerView;

    invoke-static {v0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->access$getAlphaSliderView$p(Lorg/catrobat/paintroid/colorpicker/ColorPickerView;)Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, p1, v1}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->setSelectedColor(ILandroid/view/View;)V

    .line 184
    return-void
.end method
