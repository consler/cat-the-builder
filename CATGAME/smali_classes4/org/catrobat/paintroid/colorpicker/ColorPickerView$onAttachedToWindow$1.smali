.class final Lorg/catrobat/paintroid/colorpicker/ColorPickerView$onAttachedToWindow$1;
.super Ljava/lang/Object;
.source "ColorPickerView.kt"

# interfaces
.implements Lorg/catrobat/paintroid/colorpicker/PresetSelectorView$OnColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->onAttachedToWindow()V
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "color",
        "",
        "colorChanged"
    }
    k = 0x3
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

    iput-object p1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView$onAttachedToWindow$1;->this$0:Lorg/catrobat/paintroid/colorpicker/ColorPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final colorChanged(I)V
    .locals 2
    .param p1, "color"    # I

    .line 172
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView$onAttachedToWindow$1;->this$0:Lorg/catrobat/paintroid/colorpicker/ColorPickerView;

    invoke-static {v0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->access$getPreSelectorView$p(Lorg/catrobat/paintroid/colorpicker/ColorPickerView;)Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, p1, v1}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->setSelectedColor(ILandroid/view/View;)V

    .line 173
    return-void
.end method
