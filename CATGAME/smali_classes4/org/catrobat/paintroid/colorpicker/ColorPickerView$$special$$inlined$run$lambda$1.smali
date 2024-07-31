.class final Lorg/catrobat/paintroid/colorpicker/ColorPickerView$$special$$inlined$run$lambda$1;
.super Ljava/lang/Object;
.source "ColorPickerView.kt"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/paintroid/colorpicker/ColorPickerView;-><init>(Landroid/content/Context;)V
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "tabId",
        "",
        "kotlin.jvm.PlatformType",
        "onTabChanged",
        "org/catrobat/paintroid/colorpicker/ColorPickerView$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $hsvTab$inlined:Landroid/widget/TabHost$TabSpec;

.field final synthetic $preTab$inlined:Landroid/widget/TabHost$TabSpec;

.field final synthetic $rgbTab$inlined:Landroid/widget/TabHost$TabSpec;

.field final synthetic this$0:Lorg/catrobat/paintroid/colorpicker/ColorPickerView;


# direct methods
.method constructor <init>(Lorg/catrobat/paintroid/colorpicker/ColorPickerView;Landroid/widget/TabHost$TabSpec;Landroid/widget/TabHost$TabSpec;Landroid/widget/TabHost$TabSpec;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView$$special$$inlined$run$lambda$1;->this$0:Lorg/catrobat/paintroid/colorpicker/ColorPickerView;

    iput-object p2, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView$$special$$inlined$run$lambda$1;->$preTab$inlined:Landroid/widget/TabHost$TabSpec;

    iput-object p3, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView$$special$$inlined$run$lambda$1;->$hsvTab$inlined:Landroid/widget/TabHost$TabSpec;

    iput-object p4, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView$$special$$inlined$run$lambda$1;->$rgbTab$inlined:Landroid/widget/TabHost$TabSpec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTabChanged(Ljava/lang/String;)V
    .locals 4
    .param p1, "tabId"    # Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView$$special$$inlined$run$lambda$1;->$rgbTab$inlined:Landroid/widget/TabHost$TabSpec;

    const-string v1, "rgbTab"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/TabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView$$special$$inlined$run$lambda$1;->this$0:Lorg/catrobat/paintroid/colorpicker/ColorPickerView;

    invoke-static {v0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->access$getAlphaSliderView$p(Lorg/catrobat/paintroid/colorpicker/ColorPickerView;)Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView$$special$$inlined$run$lambda$1;->this$0:Lorg/catrobat/paintroid/colorpicker/ColorPickerView;

    invoke-static {v0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->access$showKeyboard(Lorg/catrobat/paintroid/colorpicker/ColorPickerView;)V

    goto :goto_1

    .line 84
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView$$special$$inlined$run$lambda$1;->this$0:Lorg/catrobat/paintroid/colorpicker/ColorPickerView;

    invoke-static {v0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->access$getAlphaSliderView$p(Lorg/catrobat/paintroid/colorpicker/ColorPickerView;)Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;

    move-result-object v0

    .local v0, "$this$apply":Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;
    const/4 v2, 0x0

    .line 85
    .local v2, "$i$a$-apply-ColorPickerView$1$1$1":I
    nop

    .line 86
    invoke-virtual {v0}, Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;->isCatroid()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;->getOpenedFromFormulaEditorInCatroidFlag()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;->setVisibility(I)V

    .line 87
    nop

    .line 84
    .end local v0    # "$this$apply":Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;
    .end local v2    # "$i$a$-apply-ColorPickerView$1$1$1":I
    nop

    .line 88
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView$$special$$inlined$run$lambda$1;->this$0:Lorg/catrobat/paintroid/colorpicker/ColorPickerView;

    invoke-static {v0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->access$hideKeyboard(Lorg/catrobat/paintroid/colorpicker/ColorPickerView;)V

    .line 89
    :goto_1
    nop

    .line 90
    return-void
.end method
