.class public final Lorg/catrobat/paintroid/colorpicker/ColorPickerView;
.super Landroidx/appcompat/widget/LinearLayoutCompat;
.source "ColorPickerView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/colorpicker/ColorPickerView$ColorTabContentFactory;,
        Lorg/catrobat/paintroid/colorpicker/ColorPickerView$SavedState;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001:\u00029:B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u0019\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007J\u0018\u0010\"\u001a\u00020#2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010$\u001a\u00020\rH\u0002J\u0006\u0010%\u001a\u00020\rJ\u0008\u0010&\u001a\u00020\'H\u0002J\u0008\u0010(\u001a\u00020\'H\u0014J\u0008\u0010)\u001a\u00020\'H\u0002J\u0008\u0010*\u001a\u00020\'H\u0014J\u0018\u0010+\u001a\u00020\'2\u0006\u0010,\u001a\u00020\r2\u0006\u0010-\u001a\u00020\rH\u0014J\u0010\u0010.\u001a\u00020\'2\u0006\u0010/\u001a\u000200H\u0014J\u0008\u00101\u001a\u000200H\u0014J\u0016\u00102\u001a\u00020\'2\u0006\u0010\u0008\u001a\u00020\t2\u0006\u00103\u001a\u00020\u0013J\u0010\u00104\u001a\u00020\'2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018J\u001a\u00105\u001a\u00020\'2\u0006\u00106\u001a\u00020\r2\n\u0008\u0002\u00107\u001a\u0004\u0018\u00010#J\u0008\u00108\u001a\u00020\'H\u0002R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u001b\u001a\u00020\u001c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001eR\u000e\u0010\u001f\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020!X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006;"
    }
    d2 = {
        "Lorg/catrobat/paintroid/colorpicker/ColorPickerView;",
        "Landroidx/appcompat/widget/LinearLayoutCompat;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "alphaSliderView",
        "Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;",
        "hsvSelectorView",
        "Lorg/catrobat/paintroid/colorpicker/HSVSelectorView;",
        "initialColor",
        "",
        "getInitialColor",
        "()I",
        "setInitialColor",
        "(I)V",
        "isOpenedFromFormulaEditorInCatroid",
        "",
        "()Z",
        "setOpenedFromFormulaEditorInCatroid",
        "(Z)V",
        "listener",
        "Lorg/catrobat/paintroid/colorpicker/OnColorChangedListener;",
        "preSelectorView",
        "Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;",
        "rgbSelectorView",
        "Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;",
        "getRgbSelectorView",
        "()Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;",
        "selectedColor",
        "tabHost",
        "Landroid/widget/TabHost;",
        "createTabView",
        "Landroid/view/View;",
        "iconResourceId",
        "getSelectedColor",
        "hideKeyboard",
        "",
        "onAttachedToWindow",
        "onColorChanged",
        "onDetachedFromWindow",
        "onMeasure",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "onRestoreInstanceState",
        "state",
        "Landroid/os/Parcelable;",
        "onSaveInstanceState",
        "setAlphaSlider",
        "catroidFlag",
        "setOnColorChangedListener",
        "setSelectedColor",
        "color",
        "sender",
        "showKeyboard",
        "ColorTabContentFactory",
        "SavedState",
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
.field private alphaSliderView:Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;

.field private final hsvSelectorView:Lorg/catrobat/paintroid/colorpicker/HSVSelectorView;

.field private initialColor:I

.field private isOpenedFromFormulaEditorInCatroid:Z

.field private listener:Lorg/catrobat/paintroid/colorpicker/OnColorChangedListener;

.field private final preSelectorView:Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;

.field private final rgbSelectorView:Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;

.field private selectedColor:I

.field private final tabHost:Landroid/widget/TabHost;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;)V

    .line 44
    const/high16 v1, -0x1000000

    iput v1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->selectedColor:I

    .line 53
    nop

    .line 54
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lorg/catrobat/paintroid/colorpicker/R$layout;->color_picker_colorselectview:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 55
    .local v1, "tabView":Landroid/view/View;
    invoke-virtual {p0, v1}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->addView(Landroid/view/View;)V

    .line 56
    new-instance v2, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->rgbSelectorView:Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;

    .line 57
    new-instance v2, Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->preSelectorView:Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;

    .line 58
    new-instance v2, Lorg/catrobat/paintroid/colorpicker/HSVSelectorView;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/catrobat/paintroid/colorpicker/HSVSelectorView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->hsvSelectorView:Lorg/catrobat/paintroid/colorpicker/HSVSelectorView;

    .line 59
    new-instance v2, Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->alphaSliderView:Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;

    .line 60
    sget v2, Lorg/catrobat/paintroid/colorpicker/R$id;->color_picker_colorview_tabColors:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "tabView.findViewById(R.i\u2026cker_colorview_tabColors)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/TabHost;

    iput-object v2, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->tabHost:Landroid/widget/TabHost;

    .line 61
    invoke-virtual {v2}, Landroid/widget/TabHost;->setup()V

    .line 62
    new-instance v2, Lorg/catrobat/paintroid/colorpicker/ColorPickerView$ColorTabContentFactory;

    invoke-direct {v2, p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView$ColorTabContentFactory;-><init>(Lorg/catrobat/paintroid/colorpicker/ColorPickerView;)V

    .line 63
    .local v2, "factory":Lorg/catrobat/paintroid/colorpicker/ColorPickerView$ColorTabContentFactory;
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v4, Lorg/catrobat/paintroid/colorpicker/R$drawable;->ic_color_picker_tab_preset:I

    invoke-direct {p0, v3, v4}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->createTabView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v3

    .line 64
    .local v3, "preTabView":Landroid/view/View;
    nop

    .line 66
    nop

    .line 64
    nop

    .line 65
    nop

    .line 64
    iget-object v4, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->tabHost:Landroid/widget/TabHost;

    const-string v5, "PRE"

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    .line 65
    invoke-virtual {v4, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    .line 66
    move-object v5, v2

    check-cast v5, Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v4, v5}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    .line 64
    nop

    .line 67
    .local v4, "preTab":Landroid/widget/TabHost$TabSpec;
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v6, Lorg/catrobat/paintroid/colorpicker/R$drawable;->ic_color_picker_tab_hsv:I

    invoke-direct {p0, v5, v6}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->createTabView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v5

    .line 68
    .local v5, "hsvTabView":Landroid/view/View;
    nop

    .line 70
    nop

    .line 68
    nop

    .line 69
    nop

    .line 68
    iget-object v6, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->tabHost:Landroid/widget/TabHost;

    const-string v7, "HSV"

    invoke-virtual {v6, v7}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    .line 69
    invoke-virtual {v6, v5}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    .line 70
    move-object v7, v2

    check-cast v7, Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v6, v7}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    .line 68
    nop

    .line 71
    .local v6, "hsvTab":Landroid/widget/TabHost$TabSpec;
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lorg/catrobat/paintroid/colorpicker/R$drawable;->ic_color_picker_tab_rgba:I

    invoke-direct {p0, v7, v0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->createTabView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    .line 72
    .local v0, "rgbTabView":Landroid/view/View;
    nop

    .line 74
    nop

    .line 72
    nop

    .line 73
    nop

    .line 72
    iget-object v7, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->tabHost:Landroid/widget/TabHost;

    const-string v8, "RGB"

    invoke-virtual {v7, v8}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    .line 73
    invoke-virtual {v7, v0}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    .line 74
    move-object v8, v2

    check-cast v8, Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v7, v8}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    .line 72
    nop

    .line 75
    .local v7, "rgbTab":Landroid/widget/TabHost$TabSpec;
    iget-object v8, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->tabHost:Landroid/widget/TabHost;

    .local v8, "$this$run":Landroid/widget/TabHost;
    const/4 v9, 0x0

    .line 76
    .local v9, "$i$a$-run-ColorPickerView$1":I
    invoke-virtual {v8, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 77
    invoke-virtual {v8, v6}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 78
    invoke-virtual {v8, v7}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 79
    new-instance v10, Lorg/catrobat/paintroid/colorpicker/ColorPickerView$$special$$inlined$run$lambda$1;

    invoke-direct {v10, p0, v4, v6, v7}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView$$special$$inlined$run$lambda$1;-><init>(Lorg/catrobat/paintroid/colorpicker/ColorPickerView;Landroid/widget/TabHost$TabSpec;Landroid/widget/TabHost$TabSpec;Landroid/widget/TabHost$TabSpec;)V

    check-cast v10, Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v8, v10}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 91
    nop

    .line 75
    .end local v8    # "$this$run":Landroid/widget/TabHost;
    .end local v9    # "$i$a$-run-ColorPickerView$1":I
    nop

    .line 92
    .end local v0    # "rgbTabView":Landroid/view/View;
    .end local v1    # "tabView":Landroid/view/View;
    .end local v2    # "factory":Lorg/catrobat/paintroid/colorpicker/ColorPickerView$ColorTabContentFactory;
    .end local v3    # "preTabView":Landroid/view/View;
    .end local v4    # "preTab":Landroid/widget/TabHost$TabSpec;
    .end local v5    # "hsvTabView":Landroid/view/View;
    .end local v6    # "hsvTab":Landroid/widget/TabHost$TabSpec;
    .end local v7    # "rgbTab":Landroid/widget/TabHost$TabSpec;
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const/high16 v1, -0x1000000

    iput v1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->selectedColor:I

    .line 53
    nop

    .line 54
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lorg/catrobat/paintroid/colorpicker/R$layout;->color_picker_colorselectview:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 55
    .local v1, "tabView":Landroid/view/View;
    invoke-virtual {p0, v1}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->addView(Landroid/view/View;)V

    .line 56
    new-instance v2, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->rgbSelectorView:Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;

    .line 57
    new-instance v2, Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->preSelectorView:Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;

    .line 58
    new-instance v2, Lorg/catrobat/paintroid/colorpicker/HSVSelectorView;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/catrobat/paintroid/colorpicker/HSVSelectorView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->hsvSelectorView:Lorg/catrobat/paintroid/colorpicker/HSVSelectorView;

    .line 59
    new-instance v2, Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->alphaSliderView:Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;

    .line 60
    sget v2, Lorg/catrobat/paintroid/colorpicker/R$id;->color_picker_colorview_tabColors:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "tabView.findViewById(R.i\u2026cker_colorview_tabColors)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/TabHost;

    iput-object v2, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->tabHost:Landroid/widget/TabHost;

    .line 61
    invoke-virtual {v2}, Landroid/widget/TabHost;->setup()V

    .line 62
    new-instance v2, Lorg/catrobat/paintroid/colorpicker/ColorPickerView$ColorTabContentFactory;

    invoke-direct {v2, p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView$ColorTabContentFactory;-><init>(Lorg/catrobat/paintroid/colorpicker/ColorPickerView;)V

    .line 63
    .local v2, "factory":Lorg/catrobat/paintroid/colorpicker/ColorPickerView$ColorTabContentFactory;
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v4, Lorg/catrobat/paintroid/colorpicker/R$drawable;->ic_color_picker_tab_preset:I

    invoke-direct {p0, v3, v4}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->createTabView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v3

    .line 64
    .local v3, "preTabView":Landroid/view/View;
    nop

    .line 66
    nop

    .line 64
    nop

    .line 65
    nop

    .line 64
    iget-object v4, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->tabHost:Landroid/widget/TabHost;

    const-string v5, "PRE"

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    .line 65
    invoke-virtual {v4, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    .line 66
    move-object v5, v2

    check-cast v5, Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v4, v5}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    .line 64
    nop

    .line 67
    .local v4, "preTab":Landroid/widget/TabHost$TabSpec;
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v6, Lorg/catrobat/paintroid/colorpicker/R$drawable;->ic_color_picker_tab_hsv:I

    invoke-direct {p0, v5, v6}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->createTabView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v5

    .line 68
    .local v5, "hsvTabView":Landroid/view/View;
    nop

    .line 70
    nop

    .line 68
    nop

    .line 69
    nop

    .line 68
    iget-object v6, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->tabHost:Landroid/widget/TabHost;

    const-string v7, "HSV"

    invoke-virtual {v6, v7}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    .line 69
    invoke-virtual {v6, v5}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    .line 70
    move-object v7, v2

    check-cast v7, Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v6, v7}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    .line 68
    nop

    .line 71
    .local v6, "hsvTab":Landroid/widget/TabHost$TabSpec;
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lorg/catrobat/paintroid/colorpicker/R$drawable;->ic_color_picker_tab_rgba:I

    invoke-direct {p0, v7, v0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->createTabView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    .line 72
    .local v0, "rgbTabView":Landroid/view/View;
    nop

    .line 74
    nop

    .line 72
    nop

    .line 73
    nop

    .line 72
    iget-object v7, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->tabHost:Landroid/widget/TabHost;

    const-string v8, "RGB"

    invoke-virtual {v7, v8}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    .line 73
    invoke-virtual {v7, v0}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    .line 74
    move-object v8, v2

    check-cast v8, Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v7, v8}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    .line 72
    nop

    .line 75
    .local v7, "rgbTab":Landroid/widget/TabHost$TabSpec;
    iget-object v8, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->tabHost:Landroid/widget/TabHost;

    .local v8, "$this$run":Landroid/widget/TabHost;
    const/4 v9, 0x0

    .line 76
    .local v9, "$i$a$-run-ColorPickerView$1":I
    invoke-virtual {v8, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 77
    invoke-virtual {v8, v6}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 78
    invoke-virtual {v8, v7}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 79
    new-instance v10, Lorg/catrobat/paintroid/colorpicker/ColorPickerView$$special$$inlined$run$lambda$2;

    invoke-direct {v10, p0, v4, v6, v7}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView$$special$$inlined$run$lambda$2;-><init>(Lorg/catrobat/paintroid/colorpicker/ColorPickerView;Landroid/widget/TabHost$TabSpec;Landroid/widget/TabHost$TabSpec;Landroid/widget/TabHost$TabSpec;)V

    check-cast v10, Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v8, v10}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 91
    nop

    .line 75
    .end local v8    # "$this$run":Landroid/widget/TabHost;
    .end local v9    # "$i$a$-run-ColorPickerView$1":I
    nop

    .line 92
    .end local v0    # "rgbTabView":Landroid/view/View;
    .end local v1    # "tabView":Landroid/view/View;
    .end local v2    # "factory":Lorg/catrobat/paintroid/colorpicker/ColorPickerView$ColorTabContentFactory;
    .end local v3    # "preTabView":Landroid/view/View;
    .end local v4    # "preTab":Landroid/widget/TabHost$TabSpec;
    .end local v5    # "hsvTabView":Landroid/view/View;
    .end local v6    # "hsvTab":Landroid/widget/TabHost$TabSpec;
    .end local v7    # "rgbTab":Landroid/widget/TabHost$TabSpec;
    return-void
.end method

.method public static final synthetic access$getAlphaSliderView$p(Lorg/catrobat/paintroid/colorpicker/ColorPickerView;)Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/paintroid/colorpicker/ColorPickerView;

    .line 38
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->alphaSliderView:Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;

    return-object v0
.end method

.method public static final synthetic access$getHsvSelectorView$p(Lorg/catrobat/paintroid/colorpicker/ColorPickerView;)Lorg/catrobat/paintroid/colorpicker/HSVSelectorView;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/paintroid/colorpicker/ColorPickerView;

    .line 38
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->hsvSelectorView:Lorg/catrobat/paintroid/colorpicker/HSVSelectorView;

    return-object v0
.end method

.method public static final synthetic access$getPreSelectorView$p(Lorg/catrobat/paintroid/colorpicker/ColorPickerView;)Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/paintroid/colorpicker/ColorPickerView;

    .line 38
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->preSelectorView:Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;

    return-object v0
.end method

.method public static final synthetic access$hideKeyboard(Lorg/catrobat/paintroid/colorpicker/ColorPickerView;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/colorpicker/ColorPickerView;

    .line 38
    invoke-direct {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->hideKeyboard()V

    return-void
.end method

.method public static final synthetic access$setAlphaSliderView$p(Lorg/catrobat/paintroid/colorpicker/ColorPickerView;Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/colorpicker/ColorPickerView;
    .param p1, "<set-?>"    # Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;

    .line 38
    iput-object p1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->alphaSliderView:Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;

    return-void
.end method

.method public static final synthetic access$showKeyboard(Lorg/catrobat/paintroid/colorpicker/ColorPickerView;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/colorpicker/ColorPickerView;

    .line 38
    invoke-direct {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->showKeyboard()V

    return-void
.end method

.method private final createTabView(Landroid/content/Context;I)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iconResourceId"    # I

    .line 103
    sget v0, Lorg/catrobat/paintroid/colorpicker/R$layout;->color_picker_tab_image_only:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 104
    .local v0, "tabView":Landroid/view/View;
    sget v1, Lorg/catrobat/paintroid/colorpicker/R$id;->color_picker_tab_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatImageView;

    .line 105
    .local v1, "tabIcon":Landroidx/appcompat/widget/AppCompatImageView;
    invoke-virtual {v1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundResource(I)V

    .line 106
    const-string v2, "tabView"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final hideKeyboard()V
    .locals 3

    .line 132
    nop

    .line 133
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 132
    nop

    .line 134
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->getRootView()Landroid/view/View;

    move-result-object v1

    const-string v2, "rootView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 135
    return-void

    .line 133
    .end local v0    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final onColorChanged()V
    .locals 2

    .line 148
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->listener:Lorg/catrobat/paintroid/colorpicker/OnColorChangedListener;

    if-eqz v0, :cond_0

    iget v1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->selectedColor:I

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/colorpicker/OnColorChangedListener;->colorChanged(I)V

    .line 149
    :cond_0
    return-void
.end method

.method public static synthetic setSelectedColor$default(Lorg/catrobat/paintroid/colorpicker/ColorPickerView;ILandroid/view/View;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 109
    const/4 p2, 0x0

    check-cast p2, Landroid/view/View;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->setSelectedColor(ILandroid/view/View;)V

    return-void
.end method

.method private final showKeyboard()V
    .locals 4

    .line 138
    nop

    .line 139
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 138
    nop

    .line 140
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    nop

    .line 141
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->getRootView()Landroid/view/View;

    move-result-object v1

    const-string v2, "rootView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 142
    const/4 v2, 0x2

    .line 143
    const/4 v3, 0x0

    .line 140
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInputFromWindow(Landroid/os/IBinder;II)V

    .line 145
    return-void

    .line 139
    .end local v0    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final getInitialColor()I
    .locals 1

    .line 45
    iget v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->initialColor:I

    return v0
.end method

.method public final getRgbSelectorView()Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->rgbSelectorView:Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;

    return-object v0
.end method

.method public final getSelectedColor()I
    .locals 1

    .line 129
    iget v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->selectedColor:I

    return v0
.end method

.method public final isOpenedFromFormulaEditorInCatroid()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->isOpenedFromFormulaEditorInCatroid:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 170
    invoke-super {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->onAttachedToWindow()V

    .line 171
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->preSelectorView:Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;

    new-instance v1, Lorg/catrobat/paintroid/colorpicker/ColorPickerView$onAttachedToWindow$1;

    invoke-direct {v1, p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView$onAttachedToWindow$1;-><init>(Lorg/catrobat/paintroid/colorpicker/ColorPickerView;)V

    check-cast v1, Lorg/catrobat/paintroid/colorpicker/PresetSelectorView$OnColorChangedListener;

    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;->setOnColorChangedListener(Lorg/catrobat/paintroid/colorpicker/PresetSelectorView$OnColorChangedListener;)V

    .line 174
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->hsvSelectorView:Lorg/catrobat/paintroid/colorpicker/HSVSelectorView;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/colorpicker/HSVSelectorView;->getHsvColorPickerView()Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;

    move-result-object v0

    new-instance v1, Lorg/catrobat/paintroid/colorpicker/ColorPickerView$onAttachedToWindow$2;

    invoke-direct {v1, p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView$onAttachedToWindow$2;-><init>(Lorg/catrobat/paintroid/colorpicker/ColorPickerView;)V

    check-cast v1, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView$OnColorChangedListener;

    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->setOnColorChangedListener(Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView$OnColorChangedListener;)V

    .line 177
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->rgbSelectorView:Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;

    new-instance v1, Lorg/catrobat/paintroid/colorpicker/ColorPickerView$onAttachedToWindow$3;

    invoke-direct {v1, p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView$onAttachedToWindow$3;-><init>(Lorg/catrobat/paintroid/colorpicker/ColorPickerView;)V

    check-cast v1, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView$OnColorChangedListener;

    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->setOnColorChangedListener(Lorg/catrobat/paintroid/colorpicker/RgbSelectorView$OnColorChangedListener;)V

    .line 180
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->alphaSliderView:Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;->getAlphaSlider()Lorg/catrobat/paintroid/colorpicker/AlphaSlider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 181
    new-instance v1, Lorg/catrobat/paintroid/colorpicker/ColorPickerView$onAttachedToWindow$4;

    invoke-direct {v1, p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView$onAttachedToWindow$4;-><init>(Lorg/catrobat/paintroid/colorpicker/ColorPickerView;)V

    check-cast v1, Lorg/catrobat/paintroid/colorpicker/AlphaSlider$OnColorChangedListener;

    .line 180
    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->setOnColorChangedListener(Lorg/catrobat/paintroid/colorpicker/AlphaSlider$OnColorChangedListener;)V

    .line 187
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 190
    invoke-super {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->onDetachedFromWindow()V

    .line 191
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->preSelectorView:Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;->setOnColorChangedListener(Lorg/catrobat/paintroid/colorpicker/PresetSelectorView$OnColorChangedListener;)V

    .line 192
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->hsvSelectorView:Lorg/catrobat/paintroid/colorpicker/HSVSelectorView;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/colorpicker/HSVSelectorView;->getHsvColorPickerView()Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->setOnColorChangedListener(Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView$OnColorChangedListener;)V

    .line 193
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->rgbSelectorView:Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;

    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->setOnColorChangedListener(Lorg/catrobat/paintroid/colorpicker/RgbSelectorView$OnColorChangedListener;)V

    .line 194
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 197
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->onMeasure(II)V

    .line 198
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->setMeasuredDimension(II)V

    .line 199
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    instance-of v0, p1, Lorg/catrobat/paintroid/colorpicker/ColorPickerView$SavedState;

    if-eqz v0, :cond_0

    .line 162
    move-object v0, p1

    check-cast v0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView$SavedState;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 163
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->tabHost:Landroid/widget/TabHost;

    move-object v1, p1

    check-cast v1, Lorg/catrobat/paintroid/colorpicker/ColorPickerView$SavedState;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView$SavedState;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 166
    :goto_0
    nop

    .line 167
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 156
    invoke-super {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 157
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lorg/catrobat/paintroid/colorpicker/ColorPickerView$SavedState;

    iget-object v2, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/lang/String;)V

    check-cast v1, Landroid/os/Parcelable;

    return-object v1
.end method

.method public final setAlphaSlider(Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;Z)V
    .locals 3
    .param p1, "alphaSliderView"    # Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;
    .param p2, "catroidFlag"    # Z

    const-string v0, "alphaSliderView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iput-object p1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->alphaSliderView:Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;

    .line 96
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->alphaSliderView:Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;

    .local v0, "$this$apply":Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;
    const/4 v1, 0x0

    .line 97
    .local v1, "$i$a$-apply-ColorPickerView$setAlphaSlider$1":I
    invoke-virtual {v0, p2}, Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;->setCatroid(Z)V

    .line 98
    iget-boolean v2, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->isOpenedFromFormulaEditorInCatroid:Z

    invoke-virtual {v0, v2}, Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;->setOpenedFromFormulaEditorInCatroidFlag(Z)V

    .line 99
    nop

    .line 96
    .end local v0    # "$this$apply":Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;
    .end local v1    # "$i$a$-apply-ColorPickerView$setAlphaSlider$1":I
    nop

    .line 100
    return-void
.end method

.method public final setInitialColor(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 45
    iput p1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->initialColor:I

    return-void
.end method

.method public final setOnColorChangedListener(Lorg/catrobat/paintroid/colorpicker/OnColorChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/catrobat/paintroid/colorpicker/OnColorChangedListener;

    .line 152
    iput-object p1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->listener:Lorg/catrobat/paintroid/colorpicker/OnColorChangedListener;

    .line 153
    return-void
.end method

.method public final setOpenedFromFormulaEditorInCatroid(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 46
    iput-boolean p1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->isOpenedFromFormulaEditorInCatroid:Z

    return-void
.end method

.method public final setSelectedColor(ILandroid/view/View;)V
    .locals 2
    .param p1, "color"    # I
    .param p2, "sender"    # Landroid/view/View;

    .line 110
    iget v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->selectedColor:I

    if-ne v0, p1, :cond_0

    .line 111
    return-void

    .line 113
    :cond_0
    iput p1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->selectedColor:I

    .line 114
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->rgbSelectorView:Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->rgbSelectorView:Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;

    iget-boolean v1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->isOpenedFromFormulaEditorInCatroid:Z

    invoke-virtual {v0, p1, v1}, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->setSelectedColor(IZ)V

    .line 117
    :cond_1
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->preSelectorView:Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 118
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->preSelectorView:Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;

    invoke-virtual {v0, p1}, Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;->setSelectedColor(I)V

    .line 120
    :cond_2
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->hsvSelectorView:Lorg/catrobat/paintroid/colorpicker/HSVSelectorView;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 121
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->hsvSelectorView:Lorg/catrobat/paintroid/colorpicker/HSVSelectorView;

    invoke-virtual {v0, p1}, Lorg/catrobat/paintroid/colorpicker/HSVSelectorView;->setSelectedColor(I)V

    .line 123
    :cond_3
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->alphaSliderView:Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    .line 124
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->alphaSliderView:Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;

    invoke-virtual {v0, p1}, Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;->setSelectedColor(I)V

    .line 126
    :cond_4
    invoke-direct {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->onColorChanged()V

    .line 127
    return-void
.end method
