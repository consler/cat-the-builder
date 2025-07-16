.class public final Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;
.super Ljava/lang/Object;
.source "DefaultTransformToolOptionsView.kt"

# interfaces
.implements Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$Companion;,
        Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$TransformToolSizeTextWatcher;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u001d2\u00020\u0001:\u0002\u001d\u001eB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0011\u001a\u00020\u0012H\u0002J\u0010\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0010\u0010\u001a\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\u0016H\u0016J\u0010\u0010\u001c\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u0019H\u0016R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;",
        "Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView;",
        "rootView",
        "Landroid/view/ViewGroup;",
        "(Landroid/view/ViewGroup;)V",
        "callback",
        "Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView$Callback;",
        "heightEditText",
        "Landroidx/appcompat/widget/AppCompatEditText;",
        "heightTextWatcher",
        "Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$TransformToolSizeTextWatcher;",
        "percentageText",
        "resizeSeekBar",
        "Landroidx/appcompat/widget/AppCompatSeekBar;",
        "root",
        "widthEditText",
        "widthTextWatcher",
        "hideKeyboard",
        "",
        "setCallback",
        "setHeight",
        "height",
        "",
        "setHeightFilter",
        "numberRangeFilter",
        "Lorg/catrobat/paintroid/ui/tools/NumberRangeFilter;",
        "setWidth",
        "width",
        "setWidthFilter",
        "Companion",
        "TransformToolSizeTextWatcher",
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


# static fields
.field public static final Companion:Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private callback:Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView$Callback;

.field private final heightEditText:Landroidx/appcompat/widget/AppCompatEditText;

.field private final heightTextWatcher:Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$TransformToolSizeTextWatcher;

.field private final percentageText:Landroidx/appcompat/widget/AppCompatEditText;

.field private final resizeSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

.field private final root:Landroid/view/ViewGroup;

.field private final widthEditText:Landroidx/appcompat/widget/AppCompatEditText;

.field private final widthTextWatcher:Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$TransformToolSizeTextWatcher;


# direct methods
.method public static synthetic $r8$lambda$2BUJ4mGbbZruyWjvxvJgzsHB2u8(Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->_init_$lambda-0(Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BtoTF_BEA0RF9dw5QXv0gDWQW-U(Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->_init_$lambda-2(Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VTNInfK41oPX_W80L1NHfcfMxiI(Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->_init_$lambda-4(Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XMW0DaReEb16U5XuVZ2EoFngUTM(Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->_init_$lambda-3(Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$e6sTt3wqS7-VBt3w8dtUMhugUFI(Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->_init_$lambda-5(Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jPaOtQkfMS2Enf52oICI8BApxDE(Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->_init_$lambda-6(Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wgO7sDkanKFOcGfbyHJvwV-QXKU(Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->_init_$lambda-1(Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->Companion:Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$Companion;

    const-string v0, "DefaultTransformToolOptionsView"

    .line 56
    sput-object v0, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 7

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->root:Landroid/view/ViewGroup;

    .line 60
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 61
    sget v1, Lorg/catrobat/paintroid/R$layout;->dialog_pocketpaint_transform_tool:I

    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 62
    sget v0, Lorg/catrobat/paintroid/R$id;->pocketpaint_transform_width_value:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "optionsView.findViewById\u2026nt_transform_width_value)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/appcompat/widget/AppCompatEditText;

    iput-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->widthEditText:Landroidx/appcompat/widget/AppCompatEditText;

    .line 63
    sget v1, Lorg/catrobat/paintroid/R$id;->pocketpaint_transform_height_value:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "optionsView.findViewById\u2026t_transform_height_value)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/appcompat/widget/AppCompatEditText;

    iput-object v1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->heightEditText:Landroidx/appcompat/widget/AppCompatEditText;

    .line 64
    sget v2, Lorg/catrobat/paintroid/R$id;->pocketpaint_transform_resize_seekbar:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "optionsView.findViewById\u2026transform_resize_seekbar)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroidx/appcompat/widget/AppCompatSeekBar;

    iput-object v2, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->resizeSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 65
    sget v3, Lorg/catrobat/paintroid/R$id;->pocketpaint_transform_resize_percentage_text:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "optionsView.findViewById\u2026m_resize_percentage_text)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroidx/appcompat/widget/AppCompatEditText;

    iput-object v3, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->percentageText:Landroidx/appcompat/widget/AppCompatEditText;

    .line 66
    new-instance v4, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$1;

    invoke-direct {v4, p0}, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$1;-><init>(Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;)V

    check-cast v4, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$TransformToolSizeTextWatcher;

    iput-object v4, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->widthTextWatcher:Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$TransformToolSizeTextWatcher;

    .line 71
    new-instance v5, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$2;

    invoke-direct {v5, p0}, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$2;-><init>(Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;)V

    check-cast v5, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$TransformToolSizeTextWatcher;

    iput-object v5, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->heightTextWatcher:Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$TransformToolSizeTextWatcher;

    .line 77
    check-cast v4, Landroid/text/TextWatcher;

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/AppCompatEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 78
    check-cast v5, Landroid/text/TextWatcher;

    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/AppCompatEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/text/InputFilter;

    .line 80
    new-instance v4, Lorg/catrobat/paintroid/tools/helper/DefaultNumberRangeFilter;

    const/16 v5, 0x64

    invoke-direct {v4, v0, v5}, Lorg/catrobat/paintroid/tools/helper/DefaultNumberRangeFilter;-><init>(II)V

    check-cast v4, Landroid/text/InputFilter;

    const/4 v5, 0x0

    aput-object v4, v1, v5

    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/AppCompatEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 81
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatSeekBar;->getProgress()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v4, "%d"

    invoke-static {v1, v4, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.String.format(locale, format, *args)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/AppCompatEditText;->setText(Ljava/lang/CharSequence;)V

    .line 82
    new-instance v0, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$3;

    invoke-direct {v0, p0}, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$3;-><init>(Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;)V

    check-cast v0, Landroid/text/TextWatcher;

    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/AppCompatEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 103
    sget v0, Lorg/catrobat/paintroid/R$id;->pocketpaint_transform_auto_crop_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 104
    new-instance v1, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$$ExternalSyntheticLambda0;-><init>(Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    sget v0, Lorg/catrobat/paintroid/R$id;->pocketpaint_transform_set_center_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 108
    new-instance v1, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$$ExternalSyntheticLambda1;-><init>(Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    sget v0, Lorg/catrobat/paintroid/R$id;->pocketpaint_transform_rotate_left_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 112
    new-instance v1, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$$ExternalSyntheticLambda2;-><init>(Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    sget v0, Lorg/catrobat/paintroid/R$id;->pocketpaint_transform_rotate_right_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 116
    new-instance v1, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$$ExternalSyntheticLambda3;-><init>(Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    sget v0, Lorg/catrobat/paintroid/R$id;->pocketpaint_transform_flip_horizontal_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 120
    new-instance v1, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$$ExternalSyntheticLambda4;-><init>(Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    sget v0, Lorg/catrobat/paintroid/R$id;->pocketpaint_transform_flip_vertical_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 124
    new-instance v1, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$$ExternalSyntheticLambda5;-><init>(Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    sget v0, Lorg/catrobat/paintroid/R$id;->pocketpaint_transform_apply_resize_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 128
    new-instance v0, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$$ExternalSyntheticLambda6;-><init>(Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    new-instance p1, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$11;

    invoke-direct {p1, p0}, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$11;-><init>(Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;)V

    check-cast p1, Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v2, p1}, Landroidx/appcompat/widget/AppCompatSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method private static final _init_$lambda-0(Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    iget-object p0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->callback:Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView$Callback;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView$Callback;->autoCropClicked()V

    :goto_0
    return-void
.end method

.method private static final _init_$lambda-1(Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iget-object p0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->callback:Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView$Callback;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView$Callback;->setCenterClicked()V

    :goto_0
    return-void
.end method

.method private static final _init_$lambda-2(Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    iget-object p0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->callback:Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView$Callback;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView$Callback;->rotateCounterClockwiseClicked()V

    :goto_0
    return-void
.end method

.method private static final _init_$lambda-3(Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iget-object p0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->callback:Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView$Callback;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView$Callback;->rotateClockwiseClicked()V

    :goto_0
    return-void
.end method

.method private static final _init_$lambda-4(Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iget-object p0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->callback:Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView$Callback;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView$Callback;->flipHorizontalClicked()V

    :goto_0
    return-void
.end method

.method private static final _init_$lambda-5(Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iget-object p0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->callback:Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView$Callback;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView$Callback;->flipVerticalClicked()V

    :goto_0
    return-void
.end method

.method private static final _init_$lambda-6(Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-direct {p0}, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->hideKeyboard()V

    .line 131
    iget-object p1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->callback:Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView$Callback;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->resizeSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatSeekBar;->getProgress()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView$Callback;->applyResizeClicked(I)V

    .line 132
    :goto_0
    iget-object p1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->callback:Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView$Callback;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView$Callback;->hideToolOptions()V

    .line 133
    :goto_1
    iget-object p0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->resizeSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    const/16 p1, 0x64

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatSeekBar;->setProgress(I)V

    return-void
.end method

.method public static final synthetic access$getCallback$p(Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;)Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView$Callback;
    .locals 0

    .line 45
    iget-object p0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->callback:Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView$Callback;

    return-object p0
.end method

.method public static final synthetic access$getPercentageText$p(Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;)Landroidx/appcompat/widget/AppCompatEditText;
    .locals 0

    .line 45
    iget-object p0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->percentageText:Landroidx/appcompat/widget/AppCompatEditText;

    return-object p0
.end method

.method public static final synthetic access$getResizeSeekBar$p(Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;)Landroidx/appcompat/widget/AppCompatSeekBar;
    .locals 0

    .line 45
    iget-object p0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->resizeSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    return-object p0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private final hideKeyboard()V
    .locals 3

    .line 202
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->root:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 203
    iget-object v1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->root:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void

    .line 202
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public setCallback(Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView$Callback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    iput-object p1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->callback:Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView$Callback;

    return-void
.end method

.method public setHeight(I)V
    .locals 2

    .line 173
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->heightEditText:Landroidx/appcompat/widget/AppCompatEditText;

    .line 174
    iget-object v1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->heightTextWatcher:Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$TransformToolSizeTextWatcher;

    check-cast v1, Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 175
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object p1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->heightTextWatcher:Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$TransformToolSizeTextWatcher;

    check-cast p1, Landroid/text/TextWatcher;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public setHeightFilter(Lorg/catrobat/paintroid/ui/tools/NumberRangeFilter;)V
    .locals 3

    const-string v0, "numberRangeFilter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->heightEditText:Landroidx/appcompat/widget/AppCompatEditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    check-cast p1, Landroid/text/InputFilter;

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatEditText;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public setWidth(I)V
    .locals 2

    .line 165
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->widthEditText:Landroidx/appcompat/widget/AppCompatEditText;

    .line 166
    iget-object v1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->widthTextWatcher:Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$TransformToolSizeTextWatcher;

    check-cast v1, Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 167
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object p1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->widthTextWatcher:Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$TransformToolSizeTextWatcher;

    check-cast p1, Landroid/text/TextWatcher;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public setWidthFilter(Lorg/catrobat/paintroid/ui/tools/NumberRangeFilter;)V
    .locals 3

    const-string v0, "numberRangeFilter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->widthEditText:Landroidx/appcompat/widget/AppCompatEditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    check-cast p1, Landroid/text/InputFilter;

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatEditText;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method
