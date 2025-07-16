.class public final Lorg/catrobat/paintroid/ui/tools/DefaultFillToolOptionsView;
.super Ljava/lang/Object;
.source "DefaultFillToolOptionsView.kt"

# interfaces
.implements Lorg/catrobat/paintroid/tools/options/FillToolOptionsView;


# annotations
.annotation runtime Lkotlin/Metadata;
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
        "Paintroid_signedRelease"
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
.field private callback:Lorg/catrobat/paintroid/tools/options/FillToolOptionsView$Callback;

.field private final colorToleranceEditText:Landroidx/appcompat/widget/AppCompatEditText;

.field private final colorToleranceSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 5

    const-string v0, "toolSpecificOptionsLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 49
    sget v1, Lorg/catrobat/paintroid/R$layout;->dialog_pocketpaint_fill_tool:I

    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 51
    sget v0, Lorg/catrobat/paintroid/R$id;->pocketpaint_color_tolerance_seek_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "fillToolOptionsView.find\u2026color_tolerance_seek_bar)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 50
    iput-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultFillToolOptionsView;->colorToleranceSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 53
    sget v1, Lorg/catrobat/paintroid/R$id;->pocketpaint_fill_tool_dialog_color_tolerance_input:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v1, "fillToolOptionsView.find\u2026og_color_tolerance_input)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/appcompat/widget/AppCompatEditText;

    .line 52
    iput-object p1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultFillToolOptionsView;->colorToleranceEditText:Landroidx/appcompat/widget/AppCompatEditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    .line 55
    new-instance v2, Lorg/catrobat/paintroid/tools/helper/DefaultNumberRangeFilter;

    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3}, Lorg/catrobat/paintroid/tools/helper/DefaultNumberRangeFilter;-><init>(II)V

    check-cast v2, Landroid/text/InputFilter;

    aput-object v2, v1, v4

    .line 54
    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/AppCompatEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 56
    new-instance v1, Lorg/catrobat/paintroid/ui/tools/DefaultFillToolOptionsView$1;

    invoke-direct {v1, p0}, Lorg/catrobat/paintroid/ui/tools/DefaultFillToolOptionsView$1;-><init>(Lorg/catrobat/paintroid/ui/tools/DefaultFillToolOptionsView;)V

    check-cast v1, Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 68
    new-instance v0, Lorg/catrobat/paintroid/ui/tools/DefaultFillToolOptionsView$2;

    invoke-direct {v0, p0}, Lorg/catrobat/paintroid/ui/tools/DefaultFillToolOptionsView$2;-><init>(Lorg/catrobat/paintroid/ui/tools/DefaultFillToolOptionsView;)V

    check-cast v0, Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/16 p1, 0xc

    .line 85
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/ui/tools/DefaultFillToolOptionsView;->setColorToleranceText(I)V

    return-void
.end method

.method public static final synthetic access$getColorToleranceSeekBar$p(Lorg/catrobat/paintroid/ui/tools/DefaultFillToolOptionsView;)Landroidx/appcompat/widget/AppCompatSeekBar;
    .locals 0

    .line 41
    iget-object p0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultFillToolOptionsView;->colorToleranceSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    return-object p0
.end method

.method public static final synthetic access$setColorToleranceText(Lorg/catrobat/paintroid/ui/tools/DefaultFillToolOptionsView;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/ui/tools/DefaultFillToolOptionsView;->setColorToleranceText(I)V

    return-void
.end method

.method public static final synthetic access$updateColorTolerance(Lorg/catrobat/paintroid/ui/tools/DefaultFillToolOptionsView;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/ui/tools/DefaultFillToolOptionsView;->updateColorTolerance(I)V

    return-void
.end method

.method private final setColorToleranceText(I)V
    .locals 5

    .line 93
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultFillToolOptionsView;->colorToleranceEditText:Landroidx/appcompat/widget/AppCompatEditText;

    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v2, "%d"

    invoke-static {v1, v2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "java.lang.String.format(locale, format, *args)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final updateColorTolerance(I)V
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultFillToolOptionsView;->callback:Lorg/catrobat/paintroid/tools/options/FillToolOptionsView$Callback;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/tools/options/FillToolOptionsView$Callback;->onColorToleranceChanged(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public setCallback(Lorg/catrobat/paintroid/tools/options/FillToolOptionsView$Callback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iput-object p1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultFillToolOptionsView;->callback:Lorg/catrobat/paintroid/tools/options/FillToolOptionsView$Callback;

    return-void
.end method
