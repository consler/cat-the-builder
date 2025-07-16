.class public final Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;
.super Landroid/widget/LinearLayout;
.source "PresetSelectorView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/colorpicker/PresetSelectorView$OnColorChangedListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001:\u0001\u0015B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u0019\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u000e\u001a\u00020\u000bH\u0002J\u0008\u0010\u000f\u001a\u00020\u0010H\u0002J\u0010\u0010\u0011\u001a\u00020\u00102\u0008\u0010\u0012\u001a\u0004\u0018\u00010\tJ\u000e\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u000bR\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;",
        "Landroid/widget/LinearLayout;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "onColorChangedListener",
        "Lorg/catrobat/paintroid/colorpicker/PresetSelectorView$OnColorChangedListener;",
        "selectedColor",
        "",
        "tableLayout",
        "Landroid/widget/TableLayout;",
        "getSelectedColor",
        "onColorChanged",
        "",
        "setOnColorChangedListener",
        "listener",
        "setSelectedColor",
        "color",
        "OnColorChangedListener",
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
.field private onColorChangedListener:Lorg/catrobat/paintroid/colorpicker/PresetSelectorView$OnColorChangedListener;

.field private selectedColor:I

.field private tableLayout:Landroid/widget/TableLayout;


# direct methods
.method public static synthetic $r8$lambda$ydC6mS1CVoYoh7U5HIpuzi2GzaE(Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;->_init_$lambda-1(Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0}, Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 39
    invoke-virtual {p0, p1}, Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;->setWillNotDraw(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;->setWillNotDraw(Z)V

    .line 44
    new-instance v1, Landroid/widget/TableLayout;

    invoke-direct {v1, p1, p2}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p2, 0x30

    .line 45
    invoke-virtual {v1, p2}, Landroid/widget/TableLayout;->setGravity(I)V

    const/4 p2, 0x1

    .line 46
    invoke-virtual {v1, p2}, Landroid/widget/TableLayout;->setOrientation(I)V

    .line 47
    invoke-virtual {v1, p2}, Landroid/widget/TableLayout;->setStretchAllColumns(Z)V

    .line 48
    invoke-virtual {v1, p2}, Landroid/widget/TableLayout;->setShrinkAllColumns(Z)V

    .line 49
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 44
    iput-object v1, p0, Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;->tableLayout:Landroid/widget/TableLayout;

    .line 50
    new-instance p2, Lorg/catrobat/paintroid/colorpicker/PresetSelectorView$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/catrobat/paintroid/colorpicker/PresetSelectorView$$ExternalSyntheticLambda0;-><init>(Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;)V

    .line 55
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/catrobat/paintroid/colorpicker/R$array;->pocketpaint_color_picker_preset_colors:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    const-string v2, "resources.obtainTypedArr\u2026lor_picker_preset_colors)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    new-instance v2, Landroid/widget/TableRow;

    invoke-direct {v2, p1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 57
    new-instance v3, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v3}, Landroid/widget/TableRow$LayoutParams;-><init>()V

    const/4 v4, 0x2

    .line 58
    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/widget/TableRow$LayoutParams;->setMargins(IIII)V

    .line 64
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v4

    if-lez v4, :cond_2

    move v5, v0

    :goto_0
    add-int/lit8 v6, v5, 0x1

    .line 65
    invoke-virtual {v1, v5, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    .line 66
    new-instance v7, Lorg/catrobat/paintroid/colorpicker/ColorPickerPresetColorButton;

    invoke-direct {v7, p1, v5}, Lorg/catrobat/paintroid/colorpicker/ColorPickerPresetColorButton;-><init>(Landroid/content/Context;I)V

    check-cast v7, Landroid/view/View;

    .line 67
    invoke-virtual {v7, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    move-object v5, v3

    check-cast v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v2, v7, v5}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    rem-int/lit8 v5, v6, 0x4

    if-nez v5, :cond_0

    .line 70
    iget-object v5, p0, Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;->tableLayout:Landroid/widget/TableLayout;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 71
    new-instance v2, Landroid/widget/TableRow;

    invoke-direct {v2, p1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    :cond_0
    if-lt v6, v4, :cond_1

    goto :goto_1

    :cond_1
    move v5, v6

    goto :goto_0

    .line 74
    :cond_2
    :goto_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 75
    iget-object p1, p0, Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;->tableLayout:Landroid/widget/TableLayout;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private static final _init_$lambda-1(Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;Landroid/view/View;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 51
    check-cast p1, Lorg/catrobat/paintroid/colorpicker/ColorPickerPresetColorButton;

    invoke-virtual {p1}, Lorg/catrobat/paintroid/colorpicker/ColorPickerPresetColorButton;->getColor()I

    move-result p1

    iput p1, p0, Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;->selectedColor:I

    .line 52
    invoke-direct {p0}, Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;->onColorChanged()V

    return-void

    .line 51
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type org.catrobat.paintroid.colorpicker.ColorPickerPresetColorButton"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final getSelectedColor()I
    .locals 1

    .line 78
    iget v0, p0, Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;->selectedColor:I

    return v0
.end method

.method private final onColorChanged()V
    .locals 2

    .line 85
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;->onColorChangedListener:Lorg/catrobat/paintroid/colorpicker/PresetSelectorView$OnColorChangedListener;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;->getSelectedColor()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/colorpicker/PresetSelectorView$OnColorChangedListener;->colorChanged(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final setOnColorChangedListener(Lorg/catrobat/paintroid/colorpicker/PresetSelectorView$OnColorChangedListener;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;->onColorChangedListener:Lorg/catrobat/paintroid/colorpicker/PresetSelectorView$OnColorChangedListener;

    return-void
.end method

.method public final setSelectedColor(I)V
    .locals 0

    .line 81
    iput p1, p0, Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;->selectedColor:I

    return-void
.end method
