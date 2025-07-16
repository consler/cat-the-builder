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
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0018\u00002\u00020\u0001:\u0002:;B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u0019\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007J\u0018\u0010\"\u001a\u00020#2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010$\u001a\u00020\u000fH\u0002J\u0006\u0010%\u001a\u00020\u000fJ\u0008\u0010&\u001a\u00020\'H\u0002J\u0008\u0010(\u001a\u00020\'H\u0014J\u0008\u0010)\u001a\u00020\'H\u0002J\u0008\u0010*\u001a\u00020\'H\u0014J\u0018\u0010+\u001a\u00020\'2\u0006\u0010,\u001a\u00020\u000f2\u0006\u0010-\u001a\u00020\u000fH\u0014J\u0010\u0010.\u001a\u00020\'2\u0006\u0010/\u001a\u000200H\u0014J\u0008\u00101\u001a\u000200H\u0014J\u0016\u00102\u001a\u00020\'2\u0006\u0010\u0008\u001a\u00020\t2\u0006\u00103\u001a\u00020\u0015J\u0010\u00104\u001a\u00020\'2\u0008\u00105\u001a\u0004\u0018\u00010\u000bJ\u001a\u00106\u001a\u00020\'2\u0006\u00107\u001a\u00020\u000f2\n\u0008\u0002\u00108\u001a\u0004\u0018\u00010#J\u0008\u00109\u001a\u00020\'H\u0002R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u001b\u001a\u00020\u001c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001eR\u000e\u0010\u001f\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020!X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006<"
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
        "colorChangedListener",
        "Lorg/catrobat/paintroid/colorpicker/OnColorChangedListener;",
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
        "listener",
        "setSelectedColor",
        "color",
        "sender",
        "showKeyboard",
        "ColorTabContentFactory",
        "SavedState",
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
.field private alphaSliderView:Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;

.field private colorChangedListener:Lorg/catrobat/paintroid/colorpicker/OnColorChangedListener;

.field private final hsvSelectorView:Lorg/catrobat/paintroid/colorpicker/HSVSelectorView;

.field private initialColor:I

.field private isOpenedFromFormulaEditorInCatroid:Z

.field private final preSelectorView:Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;

.field private final rgbSelectorView:Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;

.field private selectedColor:I

.field private final tabHost:Landroid/widget/TabHost;


# direct methods
.method public static synthetic $r8$lambda$6JbHOEok4GwMcSDT8TFdxLDOPr0(Lorg/catrobat/paintroid/colorpicker/ColorPickerView;I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->onAttachedToWindow$lambda-5(Lorg/catrobat/paintroid/colorpicker/ColorPickerView;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$9mzSEwiJh6N4clZhUoQltjCLtFs(Landroid/widget/TabHost$TabSpec;Lorg/catrobat/paintroid/colorpicker/ColorPickerView;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->lambda-2$lambda-1(Landroid/widget/TabHost$TabSpec;Lorg/catrobat/paintroid/colorpicker/ColorPickerView;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$F5p6Y4ZDIC9aJcG_x85SVjoTHjE(Lorg/catrobat/paintroid/colorpicker/ColorPickerView;I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->onAttachedToWindow$lambda-6(Lorg/catrobat/paintroid/colorpicker/ColorPickerView;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$RoUUjCwWLMKOQsu7NqJB4Q72YzU(Lorg/catrobat/paintroid/colorpicker/ColorPickerView;I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->onAttachedToWindow$lambda-4(Lorg/catrobat/paintroid/colorpicker/ColorPickerView;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;)V

    const/high16 p1, -0x1000000

    .line 44
    iput p1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->selectedColor:I

    .line 54
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lorg/catrobat/paintroid/colorpicker/R$layout;->color_picker_colorselectview:I

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 55
    invoke-virtual {p0, p1}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->addView(Landroid/view/View;)V

    .line 56
    new-instance v1, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->rgbSelectorView:Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;

    .line 57
    new-instance v1, Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->preSelectorView:Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;

    .line 58
    new-instance v1, Lorg/catrobat/paintroid/colorpicker/HSVSelectorView;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/catrobat/paintroid/colorpicker/HSVSelectorView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->hsvSelectorView:Lorg/catrobat/paintroid/colorpicker/HSVSelectorView;

    .line 59
    new-instance v1, Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->alphaSliderView:Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;

    .line 60
    sget v1, Lorg/catrobat/paintroid/colorpicker/R$id;->color_picker_colorview_tabColors:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v1, "tabView.findViewById(R.i\u2026cker_colorview_tabColors)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TabHost;

    iput-object p1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->tabHost:Landroid/widget/TabHost;

    .line 61
    invoke-virtual {p1}, Landroid/widget/TabHost;->setup()V

    .line 62
    new-instance v1, Lorg/catrobat/paintroid/colorpicker/ColorPickerView$ColorTabContentFactory;

    invoke-direct {v1, p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView$ColorTabContentFactory;-><init>(Lorg/catrobat/paintroid/colorpicker/ColorPickerView;)V

    .line 63
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lorg/catrobat/paintroid/colorpicker/R$drawable;->ic_color_picker_tab_preset:I

    invoke-direct {p0, v2, v3}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->createTabView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v2

    const-string v3, "PRE"

    .line 64
    invoke-virtual {p1, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    .line 65
    invoke-virtual {v3, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 66
    check-cast v1, Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v2, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 67
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v4, Lorg/catrobat/paintroid/colorpicker/R$drawable;->ic_color_picker_tab_hsv:I

    invoke-direct {p0, v3, v4}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->createTabView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v3

    const-string v4, "HSV"

    .line 68
    invoke-virtual {p1, v4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    .line 69
    invoke-virtual {v4, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    .line 70
    invoke-virtual {v3, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    .line 71
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lorg/catrobat/paintroid/colorpicker/R$drawable;->ic_color_picker_tab_rgba:I

    invoke-direct {p0, v4, v0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->createTabView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    const-string v4, "RGB"

    .line 72
    invoke-virtual {p1, v4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    .line 73
    invoke-virtual {v4, v0}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 74
    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 76
    invoke-virtual {p1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 77
    invoke-virtual {p1, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 78
    invoke-virtual {p1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 79
    new-instance v1, Lorg/catrobat/paintroid/colorpicker/ColorPickerView$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView$$ExternalSyntheticLambda0;-><init>(Landroid/widget/TabHost$TabSpec;Lorg/catrobat/paintroid/colorpicker/ColorPickerView;)V

    invoke-virtual {p1, v1}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, -0x1000000

    .line 44
    iput p1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->selectedColor:I

    .line 54
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lorg/catrobat/paintroid/colorpicker/R$layout;->color_picker_colorselectview:I

    const/4 v1, 0x0

    invoke-static {p1, p2, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 55
    invoke-virtual {p0, p1}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->addView(Landroid/view/View;)V

    .line 56
    new-instance p2, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v1}, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->rgbSelectorView:Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;

    .line 57
    new-instance p2, Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v1}, Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->preSelectorView:Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;

    .line 58
    new-instance p2, Lorg/catrobat/paintroid/colorpicker/HSVSelectorView;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v1}, Lorg/catrobat/paintroid/colorpicker/HSVSelectorView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->hsvSelectorView:Lorg/catrobat/paintroid/colorpicker/HSVSelectorView;

    .line 59
    new-instance p2, Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v1}, Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->alphaSliderView:Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;

    .line 60
    sget p2, Lorg/catrobat/paintroid/colorpicker/R$id;->color_picker_colorview_tabColors:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "tabView.findViewById(R.i\u2026cker_colorview_tabColors)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TabHost;

    iput-object p1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->tabHost:Landroid/widget/TabHost;

    .line 61
    invoke-virtual {p1}, Landroid/widget/TabHost;->setup()V

    .line 62
    new-instance p2, Lorg/catrobat/paintroid/colorpicker/ColorPickerView$ColorTabContentFactory;

    invoke-direct {p2, p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView$ColorTabContentFactory;-><init>(Lorg/catrobat/paintroid/colorpicker/ColorPickerView;)V

    .line 63
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lorg/catrobat/paintroid/colorpicker/R$drawable;->ic_color_picker_tab_preset:I

    invoke-direct {p0, v1, v2}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->createTabView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v1

    const-string v2, "PRE"

    .line 64
    invoke-virtual {p1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 65
    invoke-virtual {v2, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 66
    check-cast p2, Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v1, p2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 67
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lorg/catrobat/paintroid/colorpicker/R$drawable;->ic_color_picker_tab_hsv:I

    invoke-direct {p0, v2, v3}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->createTabView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v2

    const-string v3, "HSV"

    .line 68
    invoke-virtual {p1, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    .line 69
    invoke-virtual {v3, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 70
    invoke-virtual {v2, p2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 71
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lorg/catrobat/paintroid/colorpicker/R$drawable;->ic_color_picker_tab_rgba:I

    invoke-direct {p0, v3, v0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->createTabView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    const-string v3, "RGB"

    .line 72
    invoke-virtual {p1, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    .line 73
    invoke-virtual {v3, v0}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 74
    invoke-virtual {v0, p2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object p2

    .line 76
    invoke-virtual {p1, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 77
    invoke-virtual {p1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 78
    invoke-virtual {p1, p2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 79
    new-instance v0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView$$ExternalSyntheticLambda0;-><init>(Landroid/widget/TabHost$TabSpec;Lorg/catrobat/paintroid/colorpicker/ColorPickerView;)V

    invoke-virtual {p1, v0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    return-void
.end method

.method public static final synthetic access$getAlphaSliderView$p(Lorg/catrobat/paintroid/colorpicker/ColorPickerView;)Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;
    .locals 0

    .line 38
    iget-object p0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->alphaSliderView:Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;

    return-object p0
.end method

.method public static final synthetic access$getHsvSelectorView$p(Lorg/catrobat/paintroid/colorpicker/ColorPickerView;)Lorg/catrobat/paintroid/colorpicker/HSVSelectorView;
    .locals 0

    .line 38
    iget-object p0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->hsvSelectorView:Lorg/catrobat/paintroid/colorpicker/HSVSelectorView;

    return-object p0
.end method

.method public static final synthetic access$getPreSelectorView$p(Lorg/catrobat/paintroid/colorpicker/ColorPickerView;)Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;
    .locals 0

    .line 38
    iget-object p0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->preSelectorView:Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;

    return-object p0
.end method

.method private final createTabView(Landroid/content/Context;I)Landroid/view/View;
    .locals 2

    .line 103
    sget v0, Lorg/catrobat/paintroid/colorpicker/R$layout;->color_picker_tab_image_only:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 104
    sget v0, Lorg/catrobat/paintroid/colorpicker/R$id;->color_picker_tab_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    .line 105
    invoke-virtual {v0, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundResource(I)V

    const-string p2, "tabView"

    .line 106
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final hideKeyboard()V
    .locals 3

    .line 133
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 134
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void

    .line 133
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final lambda-2$lambda-1(Landroid/widget/TabHost$TabSpec;Lorg/catrobat/paintroid/colorpicker/ColorPickerView;Ljava/lang/String;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Landroid/widget/TabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const/16 p2, 0x8

    if-eqz p0, :cond_0

    .line 81
    iget-object p0, p1, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->alphaSliderView:Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;

    invoke-virtual {p0, p2}, Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;->setVisibility(I)V

    .line 82
    invoke-direct {p1}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->showKeyboard()V

    goto :goto_1

    .line 84
    :cond_0
    iget-object p0, p1, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->alphaSliderView:Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;

    .line 86
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;->isCatroid()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;->getOpenedFromFormulaEditorInCatroidFlag()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 85
    :goto_0
    invoke-virtual {p0, p2}, Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;->setVisibility(I)V

    .line 88
    invoke-direct {p1}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->hideKeyboard()V

    :goto_1
    return-void
.end method

.method private static final onAttachedToWindow$lambda-4(Lorg/catrobat/paintroid/colorpicker/ColorPickerView;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->preSelectorView:Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->setSelectedColor(ILandroid/view/View;)V

    return-void
.end method

.method private static final onAttachedToWindow$lambda-5(Lorg/catrobat/paintroid/colorpicker/ColorPickerView;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->hsvSelectorView:Lorg/catrobat/paintroid/colorpicker/HSVSelectorView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->setSelectedColor(ILandroid/view/View;)V

    return-void
.end method

.method private static final onAttachedToWindow$lambda-6(Lorg/catrobat/paintroid/colorpicker/ColorPickerView;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->getRgbSelectorView()Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->setSelectedColor(ILandroid/view/View;)V

    return-void
.end method

.method private final onColorChanged()V
    .locals 2

    .line 148
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->colorChangedListener:Lorg/catrobat/paintroid/colorpicker/OnColorChangedListener;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->selectedColor:I

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/colorpicker/OnColorChangedListener;->colorChanged(I)V

    :goto_0
    return-void
.end method

.method public static synthetic setSelectedColor$default(Lorg/catrobat/paintroid/colorpicker/ColorPickerView;ILandroid/view/View;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 109
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->setSelectedColor(ILandroid/view/View;)V

    return-void
.end method

.method private final showKeyboard()V
    .locals 4

    .line 139
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 141
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 140
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInputFromWindow(Landroid/os/IBinder;II)V

    return-void

    .line 139
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

    new-instance v1, Lorg/catrobat/paintroid/colorpicker/ColorPickerView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView$$ExternalSyntheticLambda1;-><init>(Lorg/catrobat/paintroid/colorpicker/ColorPickerView;)V

    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;->setOnColorChangedListener(Lorg/catrobat/paintroid/colorpicker/PresetSelectorView$OnColorChangedListener;)V

    .line 174
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->hsvSelectorView:Lorg/catrobat/paintroid/colorpicker/HSVSelectorView;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/colorpicker/HSVSelectorView;->getHsvColorPickerView()Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;

    move-result-object v0

    new-instance v1, Lorg/catrobat/paintroid/colorpicker/ColorPickerView$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView$$ExternalSyntheticLambda2;-><init>(Lorg/catrobat/paintroid/colorpicker/ColorPickerView;)V

    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView;->setOnColorChangedListener(Lorg/catrobat/paintroid/colorpicker/HSVColorPickerView$OnColorChangedListener;)V

    .line 177
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->rgbSelectorView:Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;

    new-instance v1, Lorg/catrobat/paintroid/colorpicker/ColorPickerView$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView$$ExternalSyntheticLambda3;-><init>(Lorg/catrobat/paintroid/colorpicker/ColorPickerView;)V

    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->setOnColorChangedListener(Lorg/catrobat/paintroid/colorpicker/RgbSelectorView$OnColorChangedListener;)V

    .line 180
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->alphaSliderView:Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;->getAlphaSlider()Lorg/catrobat/paintroid/colorpicker/AlphaSlider;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 181
    :cond_0
    new-instance v1, Lorg/catrobat/paintroid/colorpicker/ColorPickerView$onAttachedToWindow$4;

    invoke-direct {v1, p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView$onAttachedToWindow$4;-><init>(Lorg/catrobat/paintroid/colorpicker/ColorPickerView;)V

    check-cast v1, Lorg/catrobat/paintroid/colorpicker/AlphaSlider$OnColorChangedListener;

    .line 180
    invoke-virtual {v0, v1}, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->setOnColorChangedListener(Lorg/catrobat/paintroid/colorpicker/AlphaSlider$OnColorChangedListener;)V

    :goto_0
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

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 197
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->onMeasure(II)V

    .line 198
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    instance-of v0, p1, Lorg/catrobat/paintroid/colorpicker/ColorPickerView$SavedState;

    if-eqz v0, :cond_0

    .line 162
    check-cast p1, Lorg/catrobat/paintroid/colorpicker/ColorPickerView$SavedState;

    invoke-virtual {p1}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 163
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {p1}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView$SavedState;->getCurrentTabTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 156
    invoke-super {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 157
    new-instance v1, Lorg/catrobat/paintroid/colorpicker/ColorPickerView$SavedState;

    iget-object v2, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/lang/String;)V

    check-cast v1, Landroid/os/Parcelable;

    return-object v1
.end method

.method public final setAlphaSlider(Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;Z)V
    .locals 1

    const-string v0, "alphaSliderView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iput-object p1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->alphaSliderView:Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;

    .line 97
    invoke-virtual {p1, p2}, Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;->setCatroid(Z)V

    .line 98
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->isOpenedFromFormulaEditorInCatroid()Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;->setOpenedFromFormulaEditorInCatroidFlag(Z)V

    return-void
.end method

.method public final setInitialColor(I)V
    .locals 0

    .line 45
    iput p1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->initialColor:I

    return-void
.end method

.method public final setOnColorChangedListener(Lorg/catrobat/paintroid/colorpicker/OnColorChangedListener;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->colorChangedListener:Lorg/catrobat/paintroid/colorpicker/OnColorChangedListener;

    return-void
.end method

.method public final setOpenedFromFormulaEditorInCatroid(Z)V
    .locals 0

    .line 46
    iput-boolean p1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->isOpenedFromFormulaEditorInCatroid:Z

    return-void
.end method

.method public final setSelectedColor(ILandroid/view/View;)V
    .locals 2

    .line 110
    iget v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->selectedColor:I

    if-ne v0, p1, :cond_0

    return-void

    .line 113
    :cond_0
    iput p1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->selectedColor:I

    .line 114
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->rgbSelectorView:Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 115
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->rgbSelectorView:Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;

    iget-boolean v1, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->isOpenedFromFormulaEditorInCatroid:Z

    invoke-virtual {v0, p1, v1}, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->setSelectedColor(IZ)V

    .line 117
    :cond_1
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->preSelectorView:Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 118
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->preSelectorView:Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;

    invoke-virtual {v0, p1}, Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;->setSelectedColor(I)V

    .line 120
    :cond_2
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->hsvSelectorView:Lorg/catrobat/paintroid/colorpicker/HSVSelectorView;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 121
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->hsvSelectorView:Lorg/catrobat/paintroid/colorpicker/HSVSelectorView;

    invoke-virtual {v0, p1}, Lorg/catrobat/paintroid/colorpicker/HSVSelectorView;->setSelectedColor(I)V

    .line 123
    :cond_3
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->alphaSliderView:Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 124
    iget-object p2, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->alphaSliderView:Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;

    invoke-virtual {p2, p1}, Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;->setSelectedColor(I)V

    .line 126
    :cond_4
    invoke-direct {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerView;->onColorChanged()V

    return-void
.end method
