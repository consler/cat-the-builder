.class public final Lorg/catrobat/paintroid/colorpicker/ColorPickerView$ColorTabContentFactory;
.super Ljava/lang/Object;
.source "ColorPickerView.kt"

# interfaces
.implements Landroid/widget/TabHost$TabContentFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/paintroid/colorpicker/ColorPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ColorTabContentFactory"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0080\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "Lorg/catrobat/paintroid/colorpicker/ColorPickerView$ColorTabContentFactory;",
        "Landroid/widget/TabHost$TabContentFactory;",
        "(Lorg/catrobat/paintroid/colorpicker/ColorPickerView;)V",
        "createTabContent",
        "Landroid/view/View;",
        "tag",
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
.method public constructor <init>(Lorg/catrobat/paintroid/colorpicker/ColorPickerView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/paintroid/colorpicker/ColorPickerView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 201
    iput-object p1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView$ColorTabContentFactory;->this$0:Lorg/catrobat/paintroid/colorpicker/ColorPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x118ab

    if-eq v0, v1, :cond_1

    const v1, 0x13683

    if-eq v0, v1, :cond_0

    const v1, 0x13cad

    if-ne v0, v1, :cond_2

    .line 204
    const-string v0, "RGB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView$ColorTabContentFactory;->this$0:Lorg/catrobat/paintroid/colorpicker/ColorPickerView;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->getRgbSelectorView()Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    .line 205
    :cond_0
    const-string v0, "PRE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView$ColorTabContentFactory;->this$0:Lorg/catrobat/paintroid/colorpicker/ColorPickerView;

    invoke-static {v0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->access$getPreSelectorView$p(Lorg/catrobat/paintroid/colorpicker/ColorPickerView;)Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    .line 206
    :cond_1
    const-string v0, "HSV"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView$ColorTabContentFactory;->this$0:Lorg/catrobat/paintroid/colorpicker/ColorPickerView;

    invoke-static {v0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->access$getHsvSelectorView$p(Lorg/catrobat/paintroid/colorpicker/ColorPickerView;)Lorg/catrobat/paintroid/colorpicker/HSVSelectorView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 203
    :goto_0
    return-object v0

    .line 207
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid TAG"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method
