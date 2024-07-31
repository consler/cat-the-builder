.class public final Lorg/catrobat/paintroid/ui/tools/DefaultFillToolOptionsView;
.super Ljava/lang/Object;
.source "DefaultFillToolOptionsView.kt"

# interfaces
.implements Lorg/catrobat/paintroid/tools/options/FillToolOptionsView;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0010\u0010\u0010\u001a\u00020\u000c2\u0006\u0010\u0011\u001a\u00020\u000fH\u0002R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lorg/catrobat/paintroid/ui/tools/DefaultFillToolOptionsView;",
        "Lorg/catrobat/paintroid/tools/options/FillToolOptionsView;",
        "toolSpecificOptionsLayout",
        "Landroid/view/ViewGroup;",
        "(Landroid/view/ViewGroup;)V",
        "callback",
        "Lorg/catrobat/paintroid/tools/options/FillToolOptionsView$Callback;",
        "colorToleranceEditText",
        "Landroidx/appcompat/widget/AppCompatEditText;",
        "colorToleranceSeekBar",
        "Landroidx/appcompat/widget/AppCompatSeekBar;",
        "setCallback",
        "",
        "setColorToleranceText",
        "toleranceInPercent",
        "",
        "updateColorTolerance",
        "colorTolerance",
        "Paintroid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private callback:Lorg/catrobat/paintroid/tools/options/FillToolOptionsView$Callback;

.field private final colorToleranceEditText:Landroidx/appcompat/widget/AppCompatEditText;

.field private final colorToleranceSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 7
    .param p1, "toolSpecificOptionsLayout"    # Landroid/view/ViewGroup;

    const-string v0, "toolSpecificOptionsLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    nop

    .line 47
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 48
    .local v0, "inflater":Landroid/view/LayoutInflater;
    nop

    .line 49
    sget v1, Lorg/catrobat/paintroid/R$layout;->dialog_pocketpaint_fill_tool:I

    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 48
    nop

    .line 50
    .local v1, "fillToolOptionsView":Landroid/view/View;
    nop

    .line 51
    sget v2, Lorg/catrobat/paintroid/R$id;->pocketpaint_color_tolerance_seek_bar:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "fillToolOptionsView.find\u2026color_tolerance_seek_bar)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroidx/appcompat/widget/AppCompatSeekBar;

    iput-object v2, p0, Lorg/catrobat/paintroid/ui/tools/DefaultFillToolOptionsView;->colorToleranceSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 52
    nop

    .line 53
    sget v2, Lorg/catrobat/paintroid/R$id;->pocketpaint_fill_tool_dialog_color_tolerance_input:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "fillToolOptionsView.find\u2026og_color_tolerance_input)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroidx/appcompat/widget/AppCompatEditText;

    iput-object v2, p0, Lorg/catrobat/paintroid/ui/tools/DefaultFillToolOptionsView;->colorToleranceEditText:Landroidx/appcompat/widget/AppCompatEditText;

    .line 54
    nop

    .line 55
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/text/InputFilter;

    new-instance v4, Lorg/catrobat/paintroid/tools/helper/DefaultNumberRangeFilter;

    const/4 v5, 0x0

    const/16 v6, 0x64

    invoke-direct {v4, v5, v6}, Lorg/catrobat/paintroid/tools/helper/DefaultNumberRangeFilter;-><init>(II)V

    check-cast v4, Landroid/text/InputFilter;

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 56
    iget-object v2, p0, Lorg/catrobat/paintroid/ui/tools/DefaultFillToolOptionsView;->colorToleranceSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    new-instance v3, Lorg/catrobat/paintroid/ui/tools/DefaultFillToolOptionsView$1;

    invoke-direct {v3, p0}, Lorg/catrobat/paintroid/ui/tools/DefaultFillToolOptionsView$1;-><init>(Lorg/catrobat/paintroid/ui/tools/DefaultFillToolOptionsView;)V

    check-cast v3, Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 68
    iget-object v2, p0, Lorg/catrobat/paintroid/ui/tools/DefaultFillToolOptionsView;->colorToleranceEditText:Landroidx/appcompat/widget/AppCompatEditText;

    new-instance v3, Lorg/catrobat/paintroid/ui/tools/DefaultFillToolOptionsView$2;

    invoke-direct {v3, p0}, Lorg/catrobat/paintroid/ui/tools/DefaultFillToolOptionsView$2;-><init>(Lorg/catrobat/paintroid/ui/tools/DefaultFillToolOptionsView;)V

    check-cast v3, Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 85
    const/16 v2, 0xc

    invoke-direct {p0, v2}, Lorg/catrobat/paintroid/ui/tools/DefaultFillToolOptionsView;->setColorToleranceText(I)V

    .line 86
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v1    # "fillToolOptionsView":Landroid/view/View;
    return-void
.end method

.method public static final synthetic access$getColorToleranceSeekBar$p(Lorg/catrobat/paintroid/ui/tools/DefaultFillToolOptionsView;)Landroidx/appcompat/widget/AppCompatSeekBar;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/paintroid/ui/tools/DefaultFillToolOptionsView;

    .line 41
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultFillToolOptionsView;->colorToleranceSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    return-object v0
.end method

.method public static final synthetic access$setColorToleranceText(Lorg/catrobat/paintroid/ui/tools/DefaultFillToolOptionsView;I)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/ui/tools/DefaultFillToolOptionsView;
    .param p1, "toleranceInPercent"    # I

    .line 41
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/ui/tools/DefaultFillToolOptionsView;->setColorToleranceText(I)V

    return-void
.end method

.method public static final synthetic access$updateColorTolerance(Lorg/catrobat/paintroid/ui/tools/DefaultFillToolOptionsView;I)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/ui/tools/DefaultFillToolOptionsView;
    .param p1, "colorTolerance"    # I

    .line 41
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/ui/tools/DefaultFillToolOptionsView;->updateColorTolerance(I)V

    return-void
.end method

.method private final setColorToleranceText(I)V
    .locals 6
    .param p1, "toleranceInPercent"    # I

    .line 93
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultFillToolOptionsView;->colorToleranceEditText:Landroidx/appcompat/widget/AppCompatEditText;

    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%d"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.lang.String.format(locale, format, *args)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatEditText;->setText(Ljava/lang/CharSequence;)V

    .line 94
    return-void
.end method

.method private final updateColorTolerance(I)V
    .locals 1
    .param p1, "colorTolerance"    # I

    .line 89
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultFillToolOptionsView;->callback:Lorg/catrobat/paintroid/tools/options/FillToolOptionsView$Callback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/tools/options/FillToolOptionsView$Callback;->onColorToleranceChanged(I)V

    .line 90
    :cond_0
    return-void
.end method


# virtual methods
.method public setCallback(Lorg/catrobat/paintroid/tools/options/FillToolOptionsView$Callback;)V
    .locals 1
    .param p1, "callback"    # Lorg/catrobat/paintroid/tools/options/FillToolOptionsView$Callback;

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iput-object p1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultFillToolOptionsView;->callback:Lorg/catrobat/paintroid/tools/options/FillToolOptionsView$Callback;

    .line 98
    return-void
.end method
