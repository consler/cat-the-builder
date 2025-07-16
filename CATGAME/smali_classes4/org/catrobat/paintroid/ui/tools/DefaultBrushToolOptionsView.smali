.class public final Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;
.super Ljava/lang/Object;
.source "DefaultBrushToolOptionsView.kt"

# interfaces
.implements Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView$Companion;,
        Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView$OnBrushChangedWidthSeekBarListener;,
        Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0018\u0000 .2\u00020\u0001:\u0002./B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u0016\u001a\u00020\u0017J\u0008\u0010\u0018\u001a\u00020\u0006H\u0016J\u0008\u0010\u0019\u001a\u00020\u0006H\u0016J\u0008\u0010\u001a\u001a\u00020\u0017H\u0016J\u0008\u0010\u001b\u001a\u00020\u0017H\u0016J\u0008\u0010\u001c\u001a\u00020\u0017H\u0002J\u0008\u0010\u001d\u001a\u00020\u0017H\u0002J\u0010\u0010\u001e\u001a\u00020\u00172\u0006\u0010\u001f\u001a\u00020\u0008H\u0016J\u0010\u0010 \u001a\u00020\u00172\u0006\u0010!\u001a\u00020\"H\u0016J\u0010\u0010#\u001a\u00020\u00172\u0006\u0010$\u001a\u00020%H\u0016J\u0010\u0010&\u001a\u00020\u00172\u0006\u0010\'\u001a\u00020(H\u0016J\u0010\u0010)\u001a\u00020\u00172\u0006\u0010*\u001a\u00020(H\u0002J\u0010\u0010+\u001a\u00020\u00172\u0006\u0010,\u001a\u00020-H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00060"
    }
    d2 = {
        "Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;",
        "Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;",
        "rootView",
        "Landroid/view/ViewGroup;",
        "(Landroid/view/ViewGroup;)V",
        "bottomLayout",
        "Landroid/view/View;",
        "brushChangedListener",
        "Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushChangedListener;",
        "brushSizeText",
        "Landroid/widget/EditText;",
        "brushToolPreview",
        "Lorg/catrobat/paintroid/tools/options/BrushToolPreview;",
        "brushWidthSeekBar",
        "Landroid/widget/SeekBar;",
        "buttonCircle",
        "Lcom/google/android/material/chip/Chip;",
        "buttonRect",
        "currentView",
        "strokeCapButtonsGroup",
        "Lcom/google/android/material/chip/ChipGroup;",
        "topLayout",
        "adjustOptionsView",
        "",
        "getBottomToolOptions",
        "getTopToolOptions",
        "hideCaps",
        "invalidate",
        "onCircleButtonClicked",
        "onRectButtonClicked",
        "setBrushChangedListener",
        "onBrushChangedListener",
        "setBrushPreviewListener",
        "onBrushPreviewListener",
        "Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushPreviewListener;",
        "setCurrentPaint",
        "paint",
        "Landroid/graphics/Paint;",
        "setStrokeCapButtonChecked",
        "strokeCap",
        "Landroid/graphics/Paint$Cap;",
        "updateStrokeCap",
        "cap",
        "updateStrokeWidthChange",
        "strokeWidth",
        "",
        "Companion",
        "OnBrushChangedWidthSeekBarListener",
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
.field public static final Companion:Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final bottomLayout:Landroid/view/View;

.field private brushChangedListener:Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushChangedListener;

.field private brushSizeText:Landroid/widget/EditText;

.field private brushToolPreview:Lorg/catrobat/paintroid/tools/options/BrushToolPreview;

.field private brushWidthSeekBar:Landroid/widget/SeekBar;

.field private buttonCircle:Lcom/google/android/material/chip/Chip;

.field private final buttonRect:Lcom/google/android/material/chip/Chip;

.field private currentView:Landroid/view/ViewGroup;

.field private strokeCapButtonsGroup:Lcom/google/android/material/chip/ChipGroup;

.field private final topLayout:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$C2vMZ66ENnDkFrdSLqHu8m5NcpI(Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->_init_$lambda-1(Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EfoISfD4EUeVkz_RUimMpmIDAG4(Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->_init_$lambda-2(Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->Companion:Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView$Companion;

    const-string v0, "DefaultBrushToolOptionsView"

    .line 61
    sput-object v0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 5

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->currentView:Landroid/view/ViewGroup;

    .line 65
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 66
    sget v1, Lorg/catrobat/paintroid/R$layout;->dialog_pocketpaint_stroke:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 68
    sget v0, Lorg/catrobat/paintroid/R$id;->pocketpaint_stroke_types:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.pocketpaint_stroke_types)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/android/material/chip/ChipGroup;

    iput-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->strokeCapButtonsGroup:Lcom/google/android/material/chip/ChipGroup;

    .line 69
    sget v0, Lorg/catrobat/paintroid/R$id;->pocketpaint_stroke_ibtn_circle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.pocketpaint_stroke_ibtn_circle)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/android/material/chip/Chip;

    iput-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->buttonCircle:Lcom/google/android/material/chip/Chip;

    .line 70
    sget v0, Lorg/catrobat/paintroid/R$id;->pocketpaint_stroke_ibtn_rect:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.pocketpaint_stroke_ibtn_rect)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/android/material/chip/Chip;

    iput-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->buttonRect:Lcom/google/android/material/chip/Chip;

    .line 71
    sget v1, Lorg/catrobat/paintroid/R$id;->pocketpaint_stroke_width_seek_bar:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v3, "findViewById(R.id.pocket\u2026nt_stroke_width_seek_bar)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->brushWidthSeekBar:Landroid/widget/SeekBar;

    .line 72
    new-instance v3, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView$OnBrushChangedWidthSeekBarListener;

    invoke-direct {v3, p0}, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView$OnBrushChangedWidthSeekBarListener;-><init>(Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;)V

    check-cast v3, Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 73
    sget v1, Lorg/catrobat/paintroid/R$id;->pocketpaint_stroke_width_width_text:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v3, "findViewById(R.id.pocket\u2026_stroke_width_width_text)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->brushSizeText:Landroid/widget/EditText;

    .line 74
    sget v1, Lorg/catrobat/paintroid/R$id;->pocketpaint_brush_tool_preview:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v3, "findViewById(R.id.pocketpaint_brush_tool_preview)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lorg/catrobat/paintroid/tools/options/BrushToolPreview;

    iput-object v1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->brushToolPreview:Lorg/catrobat/paintroid/tools/options/BrushToolPreview;

    .line 75
    sget v1, Lorg/catrobat/paintroid/R$id;->pocketpaint_stroke_top_layout:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v3, "findViewById(R.id.pocketpaint_stroke_top_layout)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->topLayout:Landroid/view/View;

    .line 76
    sget v1, Lorg/catrobat/paintroid/R$id;->pocketpaint_stroke_bottom_layout:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v1, "findViewById(R.id.pocket\u2026int_stroke_bottom_layout)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->bottomLayout:Landroid/view/View;

    .line 78
    iget-object p1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->brushSizeText:Landroid/widget/EditText;

    new-array v1, v2, [Landroid/text/InputFilter;

    new-instance v3, Lorg/catrobat/paintroid/tools/helper/DefaultNumberRangeFilter;

    const/16 v4, 0x64

    invoke-direct {v3, v2, v4}, Lorg/catrobat/paintroid/tools/helper/DefaultNumberRangeFilter;-><init>(II)V

    check-cast v3, Landroid/text/InputFilter;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 79
    iget-object p1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->buttonCircle:Lcom/google/android/material/chip/Chip;

    new-instance v1, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView$$ExternalSyntheticLambda0;-><init>(Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;)V

    invoke-virtual {p1, v1}, Lcom/google/android/material/chip/Chip;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    new-instance p1, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView$$ExternalSyntheticLambda1;-><init>(Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;)V

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/Chip;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object p1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->brushSizeText:Landroid/widget/EditText;

    new-instance v0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView$4;

    invoke-direct {v0, p0}, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView$4;-><init>(Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;)V

    check-cast v0, Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private static final _init_$lambda-1(Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-direct {p0}, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->onCircleButtonClicked()V

    return-void
.end method

.method private static final _init_$lambda-2(Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-direct {p0}, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->onRectButtonClicked()V

    return-void
.end method

.method public static final synthetic access$getBrushSizeText$p(Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;)Landroid/widget/EditText;
    .locals 0

    .line 48
    iget-object p0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->brushSizeText:Landroid/widget/EditText;

    return-object p0
.end method

.method public static final synthetic access$getBrushToolPreview$p(Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;)Lorg/catrobat/paintroid/tools/options/BrushToolPreview;
    .locals 0

    .line 48
    iget-object p0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->brushToolPreview:Lorg/catrobat/paintroid/tools/options/BrushToolPreview;

    return-object p0
.end method

.method public static final synthetic access$getBrushWidthSeekBar$p(Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;)Landroid/widget/SeekBar;
    .locals 0

    .line 48
    iget-object p0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->brushWidthSeekBar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 48
    sget-object v0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$updateStrokeWidthChange(Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->updateStrokeWidthChange(I)V

    return-void
.end method

.method private final onCircleButtonClicked()V
    .locals 2

    .line 114
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-direct {p0, v0}, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->updateStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 115
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->buttonCircle:Lcom/google/android/material/chip/Chip;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    .line 116
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->buttonRect:Lcom/google/android/material/chip/Chip;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    .line 117
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->invalidate()V

    return-void
.end method

.method private final onRectButtonClicked()V
    .locals 2

    .line 103
    sget-object v0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-direct {p0, v0}, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->updateStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 104
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->buttonRect:Lcom/google/android/material/chip/Chip;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    .line 105
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->buttonCircle:Lcom/google/android/material/chip/Chip;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    .line 106
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->invalidate()V

    return-void
.end method

.method private final updateStrokeCap(Landroid/graphics/Paint$Cap;)V
    .locals 1

    .line 170
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->brushChangedListener:Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushChangedListener;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushChangedListener;->setCap(Landroid/graphics/Paint$Cap;)V

    :goto_0
    return-void
.end method

.method private final updateStrokeWidthChange(I)V
    .locals 1

    .line 166
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->brushChangedListener:Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushChangedListener;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushChangedListener;->setStrokeWidth(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final adjustOptionsView()V
    .locals 4

    .line 121
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->currentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 122
    sget v1, Lorg/catrobat/paintroid/R$layout;->dialog_pocketpaint_stroke:I

    iget-object v2, p0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->currentView:Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 124
    sget v1, Lorg/catrobat/paintroid/R$id;->pocketpaint_stroke_width_seek_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "findViewById(R.id.pocket\u2026nt_stroke_width_seek_bar)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->brushWidthSeekBar:Landroid/widget/SeekBar;

    .line 125
    new-instance v2, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView$OnBrushChangedWidthSeekBarListener;

    invoke-direct {v2, p0}, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView$OnBrushChangedWidthSeekBarListener;-><init>(Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;)V

    check-cast v2, Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 126
    sget v1, Lorg/catrobat/paintroid/R$id;->pocketpaint_stroke_width_width_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "findViewById(R.id.pocket\u2026_stroke_width_width_text)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->brushSizeText:Landroid/widget/EditText;

    .line 127
    sget v1, Lorg/catrobat/paintroid/R$id;->pocketpaint_brush_tool_preview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.pocketpaint_brush_tool_preview)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lorg/catrobat/paintroid/tools/options/BrushToolPreview;

    iput-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->brushToolPreview:Lorg/catrobat/paintroid/tools/options/BrushToolPreview;

    return-void
.end method

.method public getBottomToolOptions()Landroid/view/View;
    .locals 1

    .line 200
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->bottomLayout:Landroid/view/View;

    return-object v0
.end method

.method public getTopToolOptions()Landroid/view/View;
    .locals 1

    .line 198
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->topLayout:Landroid/view/View;

    return-object v0
.end method

.method public hideCaps()V
    .locals 2

    .line 110
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->strokeCapButtonsGroup:Lcom/google/android/material/chip/ChipGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/ChipGroup;->setVisibility(I)V

    return-void
.end method

.method public invalidate()V
    .locals 1

    .line 174
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->brushToolPreview:Lorg/catrobat/paintroid/tools/options/BrushToolPreview;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/BrushToolPreview;->invalidate()V

    return-void
.end method

.method public setBrushChangedListener(Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushChangedListener;)V
    .locals 1

    const-string v0, "onBrushChangedListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    iput-object p1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->brushChangedListener:Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushChangedListener;

    return-void
.end method

.method public setBrushPreviewListener(Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushPreviewListener;)V
    .locals 1

    const-string v0, "onBrushPreviewListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->brushToolPreview:Lorg/catrobat/paintroid/tools/options/BrushToolPreview;

    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/tools/options/BrushToolPreview;->setListener(Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushPreviewListener;)V

    .line 162
    iget-object p1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->brushToolPreview:Lorg/catrobat/paintroid/tools/options/BrushToolPreview;

    invoke-interface {p1}, Lorg/catrobat/paintroid/tools/options/BrushToolPreview;->invalidate()V

    return-void
.end method

.method public setCurrentPaint(Landroid/graphics/Paint;)V
    .locals 5

    const-string v0, "paint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeCap()Landroid/graphics/Paint$Cap;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 133
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->buttonCircle:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0, v2}, Lcom/google/android/material/chip/Chip;->setSelected(Z)V

    .line 134
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->buttonRect:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0, v3}, Lcom/google/android/material/chip/Chip;->setSelected(Z)V

    goto :goto_0

    .line 136
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->buttonCircle:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0, v3}, Lcom/google/android/material/chip/Chip;->setSelected(Z)V

    .line 137
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->buttonRect:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0, v2}, Lcom/google/android/material/chip/Chip;->setSelected(Z)V

    .line 139
    :goto_0
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->brushWidthSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 140
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->brushSizeText:Landroid/widget/EditText;

    .line 141
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 142
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Object;

    .line 143
    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p1

    float-to-int p1, p1

    .line 144
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v3

    .line 141
    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v2, "%d"

    invoke-static {v1, v2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "java.lang.String.format(locale, format, *args)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    .line 140
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setStrokeCapButtonChecked(Landroid/graphics/Paint$Cap;)V
    .locals 1

    const-string v0, "strokeCap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    sget-object v0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Landroid/graphics/Paint$Cap;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    iget-object p1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->strokeCapButtonsGroup:Lcom/google/android/material/chip/ChipGroup;

    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->buttonRect:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/chip/ChipGroup;->check(I)V

    goto :goto_0

    .line 151
    :cond_1
    iget-object p1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->strokeCapButtonsGroup:Lcom/google/android/material/chip/ChipGroup;

    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->buttonCircle:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/chip/ChipGroup;->check(I)V

    :goto_0
    return-void
.end method
