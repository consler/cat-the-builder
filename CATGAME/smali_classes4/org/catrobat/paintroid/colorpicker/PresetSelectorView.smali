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
    bv = {
        0x1,
        0x0,
        0x3
    }
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
.field private onColorChangedListener:Lorg/catrobat/paintroid/colorpicker/PresetSelectorView$OnColorChangedListener;

.field private selectedColor:I

.field private tableLayout:Landroid/widget/TableLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;->setWillNotDraw(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;->setWillNotDraw(Z)V

    .line 44
    new-instance v1, Landroid/widget/TableLayout;

    invoke-direct {v1, p1, p2}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v2, v1

    .local v2, "$this$apply":Landroid/widget/TableLayout;
    const/4 v3, 0x0

    .line 45
    .local v3, "$i$a$-apply-PresetSelectorView$1":I
    const/16 v4, 0x30

    invoke-virtual {v2, v4}, Landroid/widget/TableLayout;->setGravity(I)V

    .line 46
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/TableLayout;->setOrientation(I)V

    .line 47
    invoke-virtual {v2, v4}, Landroid/widget/TableLayout;->setStretchAllColumns(Z)V

    .line 48
    invoke-virtual {v2, v4}, Landroid/widget/TableLayout;->setShrinkAllColumns(Z)V

    .line 49
    nop

    .end local v2    # "$this$apply":Landroid/widget/TableLayout;
    .end local v3    # "$i$a$-apply-PresetSelectorView$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 44
    iput-object v1, p0, Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;->tableLayout:Landroid/widget/TableLayout;

    .line 50
    new-instance v1, Lorg/catrobat/paintroid/colorpicker/PresetSelectorView$presetButtonListener$1;

    invoke-direct {v1, p0}, Lorg/catrobat/paintroid/colorpicker/PresetSelectorView$presetButtonListener$1;-><init>(Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    .line 54
    .local v1, "presetButtonListener":Landroid/view/View$OnClickListener;
    nop

    .line 55
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lorg/catrobat/paintroid/colorpicker/R$array;->pocketpaint_color_picker_preset_colors:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    const-string v3, "resources.obtainTypedArr\u2026lor_picker_preset_colors)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    nop

    .line 56
    .local v2, "presetColors":Landroid/content/res/TypedArray;
    new-instance v3, Landroid/widget/TableRow;

    invoke-direct {v3, p1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 57
    .local v3, "colorButtonsTableRow":Landroid/widget/TableRow;
    new-instance v4, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v4}, Landroid/widget/TableRow$LayoutParams;-><init>()V

    .line 58
    .local v4, "colorButtonLayoutParameters":Landroid/widget/TableRow$LayoutParams;
    nop

    .line 59
    nop

    .line 60
    nop

    .line 61
    nop

    .line 62
    nop

    .line 58
    const/4 v5, 0x2

    invoke-virtual {v4, v5, v5, v5, v5}, Landroid/widget/TableRow$LayoutParams;->setMargins(IIII)V

    .line 64
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v5

    move v6, v0

    :goto_0
    if-ge v6, v5, :cond_1

    .line 65
    .local v6, "colorButtonIndexInRow":I
    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    .line 66
    .local v7, "color":I
    new-instance v8, Lorg/catrobat/paintroid/colorpicker/ColorPickerPresetColorButton;

    invoke-direct {v8, p1, v7}, Lorg/catrobat/paintroid/colorpicker/ColorPickerPresetColorButton;-><init>(Landroid/content/Context;I)V

    check-cast v8, Landroid/view/View;

    .line 67
    .local v8, "colorButton":Landroid/view/View;
    invoke-virtual {v8, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    move-object v9, v4

    check-cast v9, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v3, v8, v9}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    add-int/lit8 v9, v6, 0x1

    rem-int/lit8 v9, v9, 0x4

    if-nez v9, :cond_0

    .line 70
    iget-object v9, p0, Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;->tableLayout:Landroid/widget/TableLayout;

    move-object v10, v3

    check-cast v10, Landroid/view/View;

    invoke-virtual {v9, v10}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 71
    new-instance v9, Landroid/widget/TableRow;

    invoke-direct {v9, p1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    move-object v3, v9

    .line 64
    .end local v7    # "color":I
    .end local v8    # "colorButton":Landroid/view/View;
    :cond_0
    nop

    .end local v6    # "colorButtonIndexInRow":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 75
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;->tableLayout:Landroid/widget/TableLayout;

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;->addView(Landroid/view/View;)V

    .end local v1    # "presetButtonListener":Landroid/view/View$OnClickListener;
    .end local v2    # "presetColors":Landroid/content/res/TypedArray;
    .end local v3    # "colorButtonsTableRow":Landroid/widget/TableRow;
    .end local v4    # "colorButtonLayoutParameters":Landroid/widget/TableRow$LayoutParams;
    return-void
.end method

.method public static final synthetic access$getSelectedColor$p(Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;)I
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;

    .line 33
    iget v0, p0, Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;->selectedColor:I

    return v0
.end method

.method public static final synthetic access$onColorChanged(Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;

    .line 33
    invoke-direct {p0}, Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;->onColorChanged()V

    return-void
.end method

.method public static final synthetic access$setSelectedColor$p(Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;I)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;
    .param p1, "<set-?>"    # I

    .line 33
    iput p1, p0, Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;->selectedColor:I

    return-void
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

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;->getSelectedColor()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/catrobat/paintroid/colorpicker/PresetSelectorView$OnColorChangedListener;->colorChanged(I)V

    .line 86
    :cond_0
    return-void
.end method


# virtual methods
.method public final setOnColorChangedListener(Lorg/catrobat/paintroid/colorpicker/PresetSelectorView$OnColorChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/catrobat/paintroid/colorpicker/PresetSelectorView$OnColorChangedListener;

    .line 89
    iput-object p1, p0, Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;->onColorChangedListener:Lorg/catrobat/paintroid/colorpicker/PresetSelectorView$OnColorChangedListener;

    .line 90
    return-void
.end method

.method public final setSelectedColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 81
    iput p1, p0, Lorg/catrobat/paintroid/colorpicker/PresetSelectorView;->selectedColor:I

    .line 82
    return-void
.end method
