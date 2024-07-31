.class public final Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;
.super Ljava/lang/Object;
.source "DefaultTransformToolOptionsView.kt"

# interfaces
.implements Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$TransformToolSizeTextWatcher;,
        Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u001c2\u00020\u0001:\u0002\u001c\u001dB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0010\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0010\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u0015H\u0016J\u0010\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u0018H\u0016R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
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
        "Landroidx/appcompat/widget/AppCompatTextView;",
        "resizeSeekBar",
        "Landroidx/appcompat/widget/AppCompatSeekBar;",
        "widthEditText",
        "widthTextWatcher",
        "setCallback",
        "",
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
        "Paintroid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final Companion:Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private callback:Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView$Callback;

.field private final heightEditText:Landroidx/appcompat/widget/AppCompatEditText;

.field private final heightTextWatcher:Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$TransformToolSizeTextWatcher;

.field private final percentageText:Landroidx/appcompat/widget/AppCompatTextView;

.field private final resizeSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

.field private final widthEditText:Landroidx/appcompat/widget/AppCompatEditText;

.field private final widthTextWatcher:Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$TransformToolSizeTextWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->Companion:Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$Companion;

    .line 51
    const-class v0, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "rootView"    # Landroid/view/ViewGroup;

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    nop

    .line 55
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 56
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lorg/catrobat/paintroid/R$layout;->dialog_pocketpaint_transform_tool:I

    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 57
    .local v1, "optionsView":Landroid/view/View;
    sget v2, Lorg/catrobat/paintroid/R$id;->pocketpaint_transform_width_value:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "optionsView.findViewById\u2026nt_transform_width_value)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroidx/appcompat/widget/AppCompatEditText;

    iput-object v2, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->widthEditText:Landroidx/appcompat/widget/AppCompatEditText;

    .line 58
    sget v2, Lorg/catrobat/paintroid/R$id;->pocketpaint_transform_height_value:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "optionsView.findViewById\u2026t_transform_height_value)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroidx/appcompat/widget/AppCompatEditText;

    iput-object v2, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->heightEditText:Landroidx/appcompat/widget/AppCompatEditText;

    .line 59
    sget v2, Lorg/catrobat/paintroid/R$id;->pocketpaint_transform_resize_seekbar:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "optionsView.findViewById\u2026transform_resize_seekbar)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroidx/appcompat/widget/AppCompatSeekBar;

    iput-object v2, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->resizeSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 60
    sget v2, Lorg/catrobat/paintroid/R$id;->pocketpaint_transform_resize_percentage_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "optionsView.findViewById\u2026m_resize_percentage_text)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v2, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->percentageText:Landroidx/appcompat/widget/AppCompatTextView;

    .line 61
    new-instance v2, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$1;

    invoke-direct {v2, p0}, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$1;-><init>(Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;)V

    check-cast v2, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$TransformToolSizeTextWatcher;

    iput-object v2, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->widthTextWatcher:Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$TransformToolSizeTextWatcher;

    .line 66
    new-instance v2, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$2;

    invoke-direct {v2, p0}, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$2;-><init>(Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;)V

    check-cast v2, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$TransformToolSizeTextWatcher;

    iput-object v2, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->heightTextWatcher:Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$TransformToolSizeTextWatcher;

    .line 71
    iget-object v2, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->widthEditText:Landroidx/appcompat/widget/AppCompatEditText;

    iget-object v3, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->widthTextWatcher:Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$TransformToolSizeTextWatcher;

    check-cast v3, Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 72
    iget-object v2, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->heightEditText:Landroidx/appcompat/widget/AppCompatEditText;

    iget-object v3, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->heightTextWatcher:Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$TransformToolSizeTextWatcher;

    check-cast v3, Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 73
    nop

    .line 74
    nop

    .line 73
    sget v2, Lorg/catrobat/paintroid/R$id;->pocketpaint_transform_auto_crop_btn:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 74
    new-instance v3, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$3;

    invoke-direct {v3, p0}, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$3;-><init>(Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;)V

    check-cast v3, Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    nop

    .line 78
    nop

    .line 77
    sget v2, Lorg/catrobat/paintroid/R$id;->pocketpaint_transform_set_center_btn:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 78
    new-instance v3, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$4;

    invoke-direct {v3, p0}, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$4;-><init>(Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;)V

    check-cast v3, Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    nop

    .line 82
    nop

    .line 81
    sget v2, Lorg/catrobat/paintroid/R$id;->pocketpaint_transform_rotate_left_btn:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 82
    new-instance v3, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$5;

    invoke-direct {v3, p0}, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$5;-><init>(Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;)V

    check-cast v3, Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    nop

    .line 86
    nop

    .line 85
    sget v2, Lorg/catrobat/paintroid/R$id;->pocketpaint_transform_rotate_right_btn:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 86
    new-instance v3, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$6;

    invoke-direct {v3, p0}, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$6;-><init>(Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;)V

    check-cast v3, Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    nop

    .line 90
    nop

    .line 89
    sget v2, Lorg/catrobat/paintroid/R$id;->pocketpaint_transform_flip_horizontal_btn:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 90
    new-instance v3, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$7;

    invoke-direct {v3, p0}, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$7;-><init>(Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;)V

    check-cast v3, Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    nop

    .line 94
    nop

    .line 93
    sget v2, Lorg/catrobat/paintroid/R$id;->pocketpaint_transform_flip_vertical_btn:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 94
    new-instance v3, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$8;

    invoke-direct {v3, p0}, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$8;-><init>(Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;)V

    check-cast v3, Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    nop

    .line 98
    nop

    .line 97
    sget v2, Lorg/catrobat/paintroid/R$id;->pocketpaint_transform_apply_resize_btn:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 98
    new-instance v3, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$9;

    invoke-direct {v3, p0}, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$9;-><init>(Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;)V

    check-cast v3, Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v2, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->resizeSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    new-instance v3, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$10;

    invoke-direct {v3, p0}, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$10;-><init>(Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;)V

    check-cast v3, Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 116
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v1    # "optionsView":Landroid/view/View;
    return-void
.end method

.method public static final synthetic access$getCallback$p(Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;)Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView$Callback;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;

    .line 41
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->callback:Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView$Callback;

    return-object v0
.end method

.method public static final synthetic access$getPercentageText$p(Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;)Landroidx/appcompat/widget/AppCompatTextView;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;

    .line 41
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->percentageText:Landroidx/appcompat/widget/AppCompatTextView;

    return-object v0
.end method

.method public static final synthetic access$getResizeSeekBar$p(Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;)Landroidx/appcompat/widget/AppCompatSeekBar;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;

    .line 41
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->resizeSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    return-object v0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 41
    sget-object v0, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$setCallback$p(Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView$Callback;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;
    .param p1, "<set-?>"    # Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView$Callback;

    .line 41
    iput-object p1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->callback:Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView$Callback;

    return-void
.end method


# virtual methods
.method public setCallback(Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView$Callback;)V
    .locals 1
    .param p1, "callback"    # Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView$Callback;

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    iput-object p1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->callback:Lorg/catrobat/paintroid/tools/options/TransformToolOptionsView$Callback;

    .line 128
    return-void
.end method

.method public setHeight(I)V
    .locals 3
    .param p1, "height"    # I

    .line 139
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->heightEditText:Landroidx/appcompat/widget/AppCompatEditText;

    .local v0, "$this$apply":Landroidx/appcompat/widget/AppCompatEditText;
    const/4 v1, 0x0

    .line 140
    .local v1, "$i$a$-apply-DefaultTransformToolOptionsView$setHeight$1":I
    iget-object v2, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->heightTextWatcher:Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$TransformToolSizeTextWatcher;

    check-cast v2, Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 141
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatEditText;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v2, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->heightTextWatcher:Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$TransformToolSizeTextWatcher;

    check-cast v2, Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 143
    nop

    .line 139
    .end local v0    # "$this$apply":Landroidx/appcompat/widget/AppCompatEditText;
    .end local v1    # "$i$a$-apply-DefaultTransformToolOptionsView$setHeight$1":I
    nop

    .line 144
    return-void
.end method

.method public setHeightFilter(Lorg/catrobat/paintroid/ui/tools/NumberRangeFilter;)V
    .locals 4
    .param p1, "numberRangeFilter"    # Lorg/catrobat/paintroid/ui/tools/NumberRangeFilter;

    const-string v0, "numberRangeFilter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->heightEditText:Landroidx/appcompat/widget/AppCompatEditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    move-object v2, p1

    check-cast v2, Landroid/text/InputFilter;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 124
    return-void
.end method

.method public setWidth(I)V
    .locals 3
    .param p1, "width"    # I

    .line 131
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->widthEditText:Landroidx/appcompat/widget/AppCompatEditText;

    .local v0, "$this$apply":Landroidx/appcompat/widget/AppCompatEditText;
    const/4 v1, 0x0

    .line 132
    .local v1, "$i$a$-apply-DefaultTransformToolOptionsView$setWidth$1":I
    iget-object v2, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->widthTextWatcher:Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$TransformToolSizeTextWatcher;

    check-cast v2, Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 133
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatEditText;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v2, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->widthTextWatcher:Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView$TransformToolSizeTextWatcher;

    check-cast v2, Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 135
    nop

    .line 131
    .end local v0    # "$this$apply":Landroidx/appcompat/widget/AppCompatEditText;
    .end local v1    # "$i$a$-apply-DefaultTransformToolOptionsView$setWidth$1":I
    nop

    .line 136
    return-void
.end method

.method public setWidthFilter(Lorg/catrobat/paintroid/ui/tools/NumberRangeFilter;)V
    .locals 4
    .param p1, "numberRangeFilter"    # Lorg/catrobat/paintroid/ui/tools/NumberRangeFilter;

    const-string v0, "numberRangeFilter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTransformToolOptionsView;->widthEditText:Landroidx/appcompat/widget/AppCompatEditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    move-object v2, p1

    check-cast v2, Landroid/text/InputFilter;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 120
    return-void
.end method
