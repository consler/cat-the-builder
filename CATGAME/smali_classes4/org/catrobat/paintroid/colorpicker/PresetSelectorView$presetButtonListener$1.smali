.class final Lorg/catrobat/paintroid/colorpicker/PresetSelectorView$presetButtonListener$1;
.super Ljava/lang/Object;
.source "PresetSelectorView.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "v",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;


# direct methods
.method constructor <init>(Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/paintroid/colorpicker/PresetSelectorView$presetButtonListener$1;->this$0:Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 51
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/PresetSelectorView$presetButtonListener$1;->this$0:Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;

    if-eqz p1, :cond_0

    move-object v1, p1

    check-cast v1, Lorg/catrobat/paintroid/colorpicker/ColorPickerPresetColorButton;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/colorpicker/ColorPickerPresetColorButton;->getColor()I

    move-result v1

    invoke-static {v0, v1}, Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;->access$setSelectedColor$p(Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;I)V

    .line 52
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/PresetSelectorView$presetButtonListener$1;->this$0:Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;

    invoke-static {v0}, Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;->access$onColorChanged(Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;)V

    .line 53
    return-void

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type org.catrobat.paintroid.colorpicker.ColorPickerPresetColorButton"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
