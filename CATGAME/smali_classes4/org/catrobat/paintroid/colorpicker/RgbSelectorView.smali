.class public final Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;
.super Landroidx/appcompat/widget/LinearLayoutCompat;
.source "RgbSelectorView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/colorpicker/RgbSelectorView$OnColorChangedListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001:\u00013B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u0019\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\"\u001a\u00020#H\u0014J\u0010\u0010$\u001a\u00020#2\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0008\u0010%\u001a\u00020#H\u0014J\u0010\u0010&\u001a\u00020\u00172\u0006\u0010\'\u001a\u00020(H\u0002J\u0008\u0010)\u001a\u00020#H\u0002J\u0016\u0010*\u001a\u00020#2\u0006\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020,J\u0010\u0010.\u001a\u00020#2\u0008\u0010/\u001a\u0004\u0018\u00010\u000cJ\u0018\u0010\u001b\u001a\u00020#2\u0006\u0010\u0016\u001a\u00020\u00172\u0008\u0008\u0002\u00100\u001a\u00020,J\u0010\u00101\u001a\u00020#2\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0008\u00102\u001a\u00020#H\u0002R\u000e\u0010\u0008\u001a\u00020\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u00178F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u001eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u001eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u001eX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00064"
    }
    d2 = {
        "Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;",
        "Landroidx/appcompat/widget/LinearLayoutCompat;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "alphaRow",
        "editTextHex",
        "Landroidx/appcompat/widget/AppCompatEditText;",
        "onColorChangedListener",
        "Lorg/catrobat/paintroid/colorpicker/RgbSelectorView$OnColorChangedListener;",
        "seekBarAlpha",
        "Landroid/widget/SeekBar;",
        "getSeekBarAlpha",
        "()Landroid/widget/SeekBar;",
        "setSeekBarAlpha",
        "(Landroid/widget/SeekBar;)V",
        "seekBarBlue",
        "seekBarGreen",
        "seekBarRed",
        "color",
        "",
        "selectedColor",
        "getSelectedColor",
        "()I",
        "setSelectedColor",
        "(I)V",
        "textViewAlpha",
        "Landroidx/appcompat/widget/AppCompatTextView;",
        "textViewBlue",
        "textViewGreen",
        "textViewRed",
        "onAttachedToWindow",
        "",
        "onColorChanged",
        "onDetachedFromWindow",
        "parseInputToCheckIfHEX",
        "newText",
        "",
        "resetTextColor",
        "setAlphaRow",
        "catroidFlag",
        "",
        "openedFromFormulaEditorInCatroidFlag",
        "setOnColorChangedListener",
        "listener",
        "isOpenedFromFormulaEditorInCatroid",
        "setSelectedColorText",
        "setTextColorToRed",
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
.field private alphaRow:Landroidx/appcompat/widget/LinearLayoutCompat;

.field private editTextHex:Landroidx/appcompat/widget/AppCompatEditText;

.field private onColorChangedListener:Lorg/catrobat/paintroid/colorpicker/RgbSelectorView$OnColorChangedListener;

.field private seekBarAlpha:Landroid/widget/SeekBar;

.field private seekBarBlue:Landroid/widget/SeekBar;

.field private seekBarGreen:Landroid/widget/SeekBar;

.field private seekBarRed:Landroid/widget/SeekBar;

.field private textViewAlpha:Landroidx/appcompat/widget/AppCompatTextView;

.field private textViewBlue:Landroidx/appcompat/widget/AppCompatTextView;

.field private textViewGreen:Landroidx/appcompat/widget/AppCompatTextView;

.field private textViewRed:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;)V

    .line 89
    nop

    .line 90
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lorg/catrobat/paintroid/colorpicker/R$layout;->color_picker_layout_rgbview:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 91
    .local v0, "rgbView":Landroid/view/View;
    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->addView(Landroid/view/View;)V

    .line 92
    move-object v1, v0

    .local v1, "$this$with":Landroid/view/View;
    const/4 v2, 0x0

    .line 93
    .local v2, "$i$a$-with-RgbSelectorView$1":I
    sget v3, Lorg/catrobat/paintroid/colorpicker/R$id;->color_picker_color_rgb_seekbar_red:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "findViewById(R.id.color_\u2026er_color_rgb_seekbar_red)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->seekBarRed:Landroid/widget/SeekBar;

    .line 94
    sget v3, Lorg/catrobat/paintroid/colorpicker/R$id;->color_picker_color_rgb_seekbar_green:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "findViewById(R.id.color_\u2026_color_rgb_seekbar_green)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->seekBarGreen:Landroid/widget/SeekBar;

    .line 95
    sget v3, Lorg/catrobat/paintroid/colorpicker/R$id;->color_picker_color_rgb_seekbar_blue:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "findViewById(R.id.color_\u2026r_color_rgb_seekbar_blue)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->seekBarBlue:Landroid/widget/SeekBar;

    .line 96
    sget v3, Lorg/catrobat/paintroid/colorpicker/R$id;->color_picker_color_rgb_seekbar_alpha:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "findViewById(R.id.color_\u2026_color_rgb_seekbar_alpha)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->seekBarAlpha:Landroid/widget/SeekBar;

    .line 97
    sget v3, Lorg/catrobat/paintroid/colorpicker/R$id;->color_picker_rgb_red_value:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "findViewById(R.id.color_picker_rgb_red_value)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v3, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->textViewRed:Landroidx/appcompat/widget/AppCompatTextView;

    .line 98
    sget v3, Lorg/catrobat/paintroid/colorpicker/R$id;->color_picker_rgb_blue_value:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "findViewById(R.id.color_picker_rgb_blue_value)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v3, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->textViewBlue:Landroidx/appcompat/widget/AppCompatTextView;

    .line 99
    sget v3, Lorg/catrobat/paintroid/colorpicker/R$id;->color_picker_color_rgb_hex:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "findViewById(R.id.color_picker_color_rgb_hex)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroidx/appcompat/widget/AppCompatEditText;

    iput-object v3, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->editTextHex:Landroidx/appcompat/widget/AppCompatEditText;

    .line 100
    sget v3, Lorg/catrobat/paintroid/colorpicker/R$id;->color_picker_rgb_green_value:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "findViewById(R.id.color_picker_rgb_green_value)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v3, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->textViewGreen:Landroidx/appcompat/widget/AppCompatTextView;

    .line 101
    sget v3, Lorg/catrobat/paintroid/colorpicker/R$id;->color_picker_rgb_alpha_value:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "findViewById(R.id.color_picker_rgb_alpha_value)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v3, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->textViewAlpha:Landroidx/appcompat/widget/AppCompatTextView;

    .line 102
    sget v3, Lorg/catrobat/paintroid/colorpicker/R$id;->color_picker_alpha_row:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "findViewById(R.id.color_picker_alpha_row)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroidx/appcompat/widget/LinearLayoutCompat;

    iput-object v3, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->alphaRow:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 103
    nop

    .line 92
    .end local v1    # "$this$with":Landroid/view/View;
    .end local v2    # "$i$a$-with-RgbSelectorView$1":I
    nop

    .line 104
    invoke-direct {p0}, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->resetTextColor()V

    .line 105
    const/high16 v1, -0x1000000

    invoke-virtual {p0, v1}, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->setSelectedColor(I)V

    .line 106
    .end local v0    # "rgbView":Landroid/view/View;
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    nop

    .line 90
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lorg/catrobat/paintroid/colorpicker/R$layout;->color_picker_layout_rgbview:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 91
    .local v0, "rgbView":Landroid/view/View;
    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->addView(Landroid/view/View;)V

    .line 92
    move-object v1, v0

    .local v1, "$this$with":Landroid/view/View;
    const/4 v2, 0x0

    .line 93
    .local v2, "$i$a$-with-RgbSelectorView$1":I
    sget v3, Lorg/catrobat/paintroid/colorpicker/R$id;->color_picker_color_rgb_seekbar_red:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "findViewById(R.id.color_\u2026er_color_rgb_seekbar_red)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->seekBarRed:Landroid/widget/SeekBar;

    .line 94
    sget v3, Lorg/catrobat/paintroid/colorpicker/R$id;->color_picker_color_rgb_seekbar_green:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "findViewById(R.id.color_\u2026_color_rgb_seekbar_green)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->seekBarGreen:Landroid/widget/SeekBar;

    .line 95
    sget v3, Lorg/catrobat/paintroid/colorpicker/R$id;->color_picker_color_rgb_seekbar_blue:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "findViewById(R.id.color_\u2026r_color_rgb_seekbar_blue)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->seekBarBlue:Landroid/widget/SeekBar;

    .line 96
    sget v3, Lorg/catrobat/paintroid/colorpicker/R$id;->color_picker_color_rgb_seekbar_alpha:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "findViewById(R.id.color_\u2026_color_rgb_seekbar_alpha)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->seekBarAlpha:Landroid/widget/SeekBar;

    .line 97
    sget v3, Lorg/catrobat/paintroid/colorpicker/R$id;->color_picker_rgb_red_value:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "findViewById(R.id.color_picker_rgb_red_value)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v3, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->textViewRed:Landroidx/appcompat/widget/AppCompatTextView;

    .line 98
    sget v3, Lorg/catrobat/paintroid/colorpicker/R$id;->color_picker_rgb_blue_value:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "findViewById(R.id.color_picker_rgb_blue_value)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v3, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->textViewBlue:Landroidx/appcompat/widget/AppCompatTextView;

    .line 99
    sget v3, Lorg/catrobat/paintroid/colorpicker/R$id;->color_picker_color_rgb_hex:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "findViewById(R.id.color_picker_color_rgb_hex)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroidx/appcompat/widget/AppCompatEditText;

    iput-object v3, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->editTextHex:Landroidx/appcompat/widget/AppCompatEditText;

    .line 100
    sget v3, Lorg/catrobat/paintroid/colorpicker/R$id;->color_picker_rgb_green_value:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "findViewById(R.id.color_picker_rgb_green_value)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v3, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->textViewGreen:Landroidx/appcompat/widget/AppCompatTextView;

    .line 101
    sget v3, Lorg/catrobat/paintroid/colorpicker/R$id;->color_picker_rgb_alpha_value:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "findViewById(R.id.color_picker_rgb_alpha_value)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v3, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->textViewAlpha:Landroidx/appcompat/widget/AppCompatTextView;

    .line 102
    sget v3, Lorg/catrobat/paintroid/colorpicker/R$id;->color_picker_alpha_row:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "findViewById(R.id.color_picker_alpha_row)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroidx/appcompat/widget/LinearLayoutCompat;

    iput-object v3, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->alphaRow:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 103
    nop

    .line 92
    .end local v1    # "$this$with":Landroid/view/View;
    .end local v2    # "$i$a$-with-RgbSelectorView$1":I
    nop

    .line 104
    invoke-direct {p0}, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->resetTextColor()V

    .line 105
    const/high16 v1, -0x1000000

    invoke-virtual {p0, v1}, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->setSelectedColor(I)V

    .line 106
    .end local v0    # "rgbView":Landroid/view/View;
    return-void
.end method

.method public static final synthetic access$getEditTextHex$p(Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;)Landroidx/appcompat/widget/AppCompatEditText;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;

    .line 41
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->editTextHex:Landroidx/appcompat/widget/AppCompatEditText;

    return-object v0
.end method

.method public static final synthetic access$onColorChanged(Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;I)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;
    .param p1, "color"    # I

    .line 41
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->onColorChanged(I)V

    return-void
.end method

.method public static final synthetic access$parseInputToCheckIfHEX(Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;Ljava/lang/String;)I
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;
    .param p1, "newText"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->parseInputToCheckIfHEX(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$resetTextColor(Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;

    .line 41
    invoke-direct {p0}, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->resetTextColor()V

    return-void
.end method

.method public static final synthetic access$setEditTextHex$p(Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;Landroidx/appcompat/widget/AppCompatEditText;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;
    .param p1, "<set-?>"    # Landroidx/appcompat/widget/AppCompatEditText;

    .line 41
    iput-object p1, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->editTextHex:Landroidx/appcompat/widget/AppCompatEditText;

    return-void
.end method

.method public static final synthetic access$setTextColorToRed(Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;

    .line 41
    invoke-direct {p0}, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->setTextColorToRed()V

    return-void
.end method

.method private final onColorChanged(I)V
    .locals 1
    .param p1, "color"    # I

    .line 177
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->onColorChangedListener:Lorg/catrobat/paintroid/colorpicker/RgbSelectorView$OnColorChangedListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView$OnColorChangedListener;->colorChanged(I)V

    .line 178
    :cond_0
    return-void
.end method

.method private final parseInputToCheckIfHEX(Ljava/lang/String;)I
    .locals 4
    .param p1, "newText"    # Ljava/lang/String;

    .line 110
    nop

    .line 111
    nop

    .line 112
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->alphaRow:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 111
    const/16 v1, 0x9

    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    :goto_0
    const v2, 0x1312d00

    if-ne v0, v1, :cond_3

    .line 112
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v3, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "#"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    goto :goto_2

    .line 116
    :cond_1
    nop

    .line 117
    :try_start_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v0

    goto :goto_1

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    nop

    .line 116
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    goto :goto_3

    .line 112
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_3
    :goto_2
    nop

    .line 110
    :goto_3
    nop

    .line 121
    return v2
.end method

.method private final resetTextColor()V
    .locals 3

    .line 124
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->editTextHex:Landroidx/appcompat/widget/AppCompatEditText;

    .line 125
    nop

    .line 126
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 127
    sget v2, Lorg/catrobat/paintroid/colorpicker/R$color;->pocketpaint_color_picker_hex_correct_black:I

    .line 125
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 124
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatEditText;->setTextColor(I)V

    .line 130
    return-void
.end method

.method public static synthetic setSelectedColor$default(Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;IZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 141
    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->setSelectedColor(IZ)V

    return-void
.end method

.method private final setSelectedColorText(I)V
    .locals 12
    .param p1, "color"    # I

    .line 166
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 167
    .local v0, "colorRed":I
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 168
    .local v1, "colorGreen":I
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 169
    .local v2, "colorBlue":I
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x40233333    # 2.55f

    div-float/2addr v3, v4

    float-to-int v3, v3

    .line 170
    .local v3, "alphaToPercent":I
    iget-object v4, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->textViewRed:Landroidx/appcompat/widget/AppCompatTextView;

    sget-object v5, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {v7, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    const-string v8, "%d"

    invoke-static {v5, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "java.lang.String.format(locale, format, *args)"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v4, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->textViewGreen:Landroidx/appcompat/widget/AppCompatTextView;

    sget-object v5, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    new-array v10, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v9

    invoke-static {v10, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    invoke-static {v5, v8, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v4, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->textViewBlue:Landroidx/appcompat/widget/AppCompatTextView;

    sget-object v5, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    new-array v10, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v9

    invoke-static {v10, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    invoke-static {v5, v8, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v4, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->textViewAlpha:Landroidx/appcompat/widget/AppCompatTextView;

    sget-object v5, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    new-array v10, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v9

    invoke-static {v10, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v8, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    return-void
.end method

.method private final setTextColorToRed()V
    .locals 3

    .line 133
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->editTextHex:Landroidx/appcompat/widget/AppCompatEditText;

    .line 134
    nop

    .line 135
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 136
    sget v2, Lorg/catrobat/paintroid/colorpicker/R$color;->pocketpaint_color_picker_hex_wrong_value_red:I

    .line 134
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 133
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatEditText;->setTextColor(I)V

    .line 139
    return-void
.end method


# virtual methods
.method public final getSeekBarAlpha()Landroid/widget/SeekBar;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->seekBarAlpha:Landroid/widget/SeekBar;

    return-object v0
.end method

.method public final getSelectedColor()I
    .locals 4

    .line 55
    nop

    .line 56
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->seekBarAlpha:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 57
    iget-object v1, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->seekBarRed:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    .line 58
    iget-object v2, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->seekBarGreen:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    .line 59
    iget-object v3, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->seekBarBlue:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    .line 55
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 60
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 185
    invoke-super {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->onAttachedToWindow()V

    .line 186
    new-instance v0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView$onAttachedToWindow$seekBarListener$1;

    invoke-direct {v0, p0}, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView$onAttachedToWindow$seekBarListener$1;-><init>(Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;)V

    check-cast v0, Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 199
    .local v0, "seekBarListener":Landroid/widget/SeekBar$OnSeekBarChangeListener;
    iget-object v1, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->seekBarRed:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 200
    iget-object v1, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->seekBarGreen:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 201
    iget-object v1, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->seekBarBlue:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 202
    iget-object v1, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->seekBarAlpha:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 203
    iget-object v1, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->editTextHex:Landroidx/appcompat/widget/AppCompatEditText;

    new-instance v2, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView$onAttachedToWindow$1;

    invoke-direct {v2, p0}, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView$onAttachedToWindow$1;-><init>(Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;)V

    check-cast v2, Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 224
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 227
    invoke-super {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->onDetachedFromWindow()V

    .line 228
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->seekBarRed:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 229
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->seekBarGreen:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 230
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->seekBarBlue:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 231
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->seekBarAlpha:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 232
    return-void
.end method

.method public final setAlphaRow(ZZ)V
    .locals 2
    .param p1, "catroidFlag"    # Z
    .param p2, "openedFromFormulaEditorInCatroidFlag"    # Z

    .line 239
    nop

    .line 240
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->alphaRow:Landroidx/appcompat/widget/LinearLayoutCompat;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->setVisibility(I)V

    .line 241
    return-void
.end method

.method public final setOnColorChangedListener(Lorg/catrobat/paintroid/colorpicker/RgbSelectorView$OnColorChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/catrobat/paintroid/colorpicker/RgbSelectorView$OnColorChangedListener;

    .line 181
    iput-object p1, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->onColorChangedListener:Lorg/catrobat/paintroid/colorpicker/RgbSelectorView$OnColorChangedListener;

    .line 182
    return-void
.end method

.method public final setSeekBarAlpha(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "<set-?>"    # Landroid/widget/SeekBar;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iput-object p1, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->seekBarAlpha:Landroid/widget/SeekBar;

    return-void
.end method

.method public final setSelectedColor(I)V
    .locals 13
    .param p1, "color"    # I

    .line 62
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 63
    .local v0, "colorRed":I
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 64
    .local v1, "colorGreen":I
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 65
    .local v2, "colorBlue":I
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    .line 66
    .local v3, "colorAlpha":I
    iget-object v4, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->seekBarAlpha:Landroid/widget/SeekBar;

    invoke-virtual {v4, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 67
    iget-object v4, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->seekBarRed:Landroid/widget/SeekBar;

    invoke-virtual {v4, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 68
    iget-object v4, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->seekBarGreen:Landroid/widget/SeekBar;

    invoke-virtual {v4, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 69
    iget-object v4, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->seekBarBlue:Landroid/widget/SeekBar;

    invoke-virtual {v4, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 70
    iget-object v4, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->editTextHex:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v4}, Landroidx/appcompat/widget/AppCompatEditText;->getSelectionStart()I

    move-result v4

    .line 71
    .local v4, "currentCursorPosition":I
    iget-object v5, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->editTextHex:Landroidx/appcompat/widget/AppCompatEditText;

    const-string v6, "changed programmatically"

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/AppCompatEditText;->setTag(Ljava/lang/Object;)V

    .line 72
    iget-object v5, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->alphaRow:Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVisibility()I

    move-result v5

    const-string v6, "java.lang.String.format(format, *args)"

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x3

    if-nez v5, :cond_0

    .line 73
    sget-object v5, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v5, 0x4

    new-array v11, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v11, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v11, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v11, v10

    invoke-static {v11, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    const-string v7, "#%02X%02X%02X%02X"

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_0
    sget-object v5, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v5, v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v5, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    const-string v7, "#%02X%02X%02X"

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    :goto_0
    nop

    .line 77
    .local v5, "colorRGB":Ljava/lang/String;
    iget-object v6, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->editTextHex:Landroidx/appcompat/widget/AppCompatEditText;

    move-object v7, v5

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/AppCompatEditText;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v6, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->editTextHex:Landroidx/appcompat/widget/AppCompatEditText;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/AppCompatEditText;->setTag(Ljava/lang/Object;)V

    .line 79
    iget-object v6, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->editTextHex:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v6}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    .line 80
    .local v6, "editTextHexLength":I
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 81
    iget-object v7, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->editTextHex:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v7, v4}, Landroidx/appcompat/widget/AppCompatEditText;->setSelection(I)V

    .line 82
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->setSelectedColorText(I)V

    .line 83
    .end local v0    # "colorRed":I
    .end local v1    # "colorGreen":I
    .end local v2    # "colorBlue":I
    .end local v3    # "colorAlpha":I
    .end local v4    # "currentCursorPosition":I
    .end local v5    # "colorRGB":Ljava/lang/String;
    .end local v6    # "editTextHexLength":I
    return-void
.end method

.method public final setSelectedColor(IZ)V
    .locals 13
    .param p1, "color"    # I
    .param p2, "isOpenedFromFormulaEditorInCatroid"    # Z

    .line 142
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 143
    .local v0, "colorRed":I
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 144
    .local v1, "colorGreen":I
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 145
    .local v2, "colorBlue":I
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    .line 146
    .local v3, "colorAlpha":I
    iget-object v4, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->seekBarAlpha:Landroid/widget/SeekBar;

    invoke-virtual {v4, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 147
    iget-object v4, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->seekBarRed:Landroid/widget/SeekBar;

    invoke-virtual {v4, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 148
    iget-object v4, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->seekBarGreen:Landroid/widget/SeekBar;

    invoke-virtual {v4, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 149
    iget-object v4, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->seekBarBlue:Landroid/widget/SeekBar;

    invoke-virtual {v4, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 150
    iget-object v4, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->editTextHex:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v4}, Landroidx/appcompat/widget/AppCompatEditText;->getSelectionStart()I

    move-result v4

    .line 151
    .local v4, "currentCursorPosition":I
    iget-object v5, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->editTextHex:Landroidx/appcompat/widget/AppCompatEditText;

    const-string v6, "changed programmatically"

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/AppCompatEditText;->setTag(Ljava/lang/Object;)V

    .line 152
    const-string v5, "java.lang.String.format(format, *args)"

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x3

    if-nez p2, :cond_0

    .line 153
    sget-object v10, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v10, 0x4

    new-array v11, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v11, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v11, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v11, v9

    invoke-static {v11, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    const-string v7, "#%02X%02X%02X%02X"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :cond_0
    sget-object v10, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v10, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v10, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v10, v6

    invoke-static {v10, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    const-string v7, "#%02X%02X%02X"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    :goto_0
    move-object v5, v6

    .line 157
    .local v5, "colorRGB":Ljava/lang/String;
    iget-object v6, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->editTextHex:Landroidx/appcompat/widget/AppCompatEditText;

    move-object v7, v5

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/AppCompatEditText;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v6, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->editTextHex:Landroidx/appcompat/widget/AppCompatEditText;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/AppCompatEditText;->setTag(Ljava/lang/Object;)V

    .line 159
    iget-object v6, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->editTextHex:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v6}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    .line 160
    .local v6, "editTextHexLength":I
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 161
    iget-object v7, p0, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->editTextHex:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v7, v4}, Landroidx/appcompat/widget/AppCompatEditText;->setSelection(I)V

    .line 162
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/colorpicker/RgbSelectorView;->setSelectedColorText(I)V

    .line 163
    return-void
.end method
