.class public final Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;
.super Ljava/lang/Object;
.source "DefaultSmudgeToolOptionsView.kt"

# interfaces
.implements Lorg/catrobat/paintroid/tools/options/SmudgeToolOptionsView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView$Companion;,
        Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView$OnBrushChangedWidthSeekBarListener;,
        Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView$OnPressureChangedSeekBarListener;,
        Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView$OnDragChangedSeekBarListener;,
        Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\r\u0018\u0000 ;2\u00020\u0001:\u0004;<=>B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u001b\u001a\u00020\u0006H\u0016J\u0008\u0010\u001c\u001a\u00020\u0006H\u0016J\u0008\u0010\u001d\u001a\u00020\u001eH\u0016J\u0008\u0010\u001f\u001a\u00020\u001eH\u0016J\u0008\u0010 \u001a\u00020\u001eH\u0002J\u0008\u0010!\u001a\u00020\u001eH\u0002J\u0010\u0010\"\u001a\u00020\u001e2\u0006\u0010#\u001a\u00020\u0008H\u0016J\u0010\u0010$\u001a\u00020\u001e2\u0006\u0010%\u001a\u00020&H\u0016J\u0010\u0010\'\u001a\u00020\u001e2\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0010\u0010(\u001a\u00020\u001e2\u0006\u0010)\u001a\u00020*H\u0016J\u0010\u0010+\u001a\u00020\u001e2\u0006\u0010,\u001a\u00020-H\u0002J\u0010\u0010.\u001a\u00020\u001e2\u0006\u0010/\u001a\u00020-H\u0002J\u0010\u00100\u001a\u00020\u001e2\u0006\u00101\u001a\u000202H\u0016J\u0010\u00103\u001a\u00020\u001e2\u0006\u00104\u001a\u00020-H\u0002J\u0010\u00105\u001a\u00020\u001e2\u0006\u00106\u001a\u00020-H\u0002J\u0010\u00107\u001a\u00020\u001e2\u0006\u00108\u001a\u000202H\u0002J\u0010\u00109\u001a\u00020\u001e2\u0006\u0010:\u001a\u00020-H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006?"
    }
    d2 = {
        "Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;",
        "Lorg/catrobat/paintroid/tools/options/SmudgeToolOptionsView;",
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
        "callback",
        "Lorg/catrobat/paintroid/tools/options/SmudgeToolOptionsView$Callback;",
        "dragSeekBar",
        "dragText",
        "pressureSeekBar",
        "pressureText",
        "strokeButtonsGroup",
        "Lcom/google/android/material/chip/ChipGroup;",
        "topLayout",
        "getBottomToolOptions",
        "getTopToolOptions",
        "hideCaps",
        "",
        "invalidate",
        "onCircleButtonClicked",
        "onRectButtonClicked",
        "setBrushChangedListener",
        "onBrushChangedListener",
        "setBrushPreviewListener",
        "onBrushPreviewListener",
        "Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushPreviewListener;",
        "setCallback",
        "setCurrentPaint",
        "paint",
        "Landroid/graphics/Paint;",
        "setDragText",
        "dragInPercent",
        "",
        "setPressureText",
        "pressureInPercent",
        "setStrokeCapButtonChecked",
        "strokeCap",
        "Landroid/graphics/Paint$Cap;",
        "updateDrag",
        "drag",
        "updatePressure",
        "pressure",
        "updateStrokeCap",
        "cap",
        "updateStrokeWidthChange",
        "strokeWidth",
        "Companion",
        "OnBrushChangedWidthSeekBarListener",
        "OnDragChangedSeekBarListener",
        "OnPressureChangedSeekBarListener",
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
.field public static final Companion:Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final bottomLayout:Landroid/view/View;

.field private brushChangedListener:Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushChangedListener;

.field private final brushSizeText:Landroid/widget/EditText;

.field private final brushToolPreview:Lorg/catrobat/paintroid/tools/options/BrushToolPreview;

.field private final brushWidthSeekBar:Landroid/widget/SeekBar;

.field private final buttonCircle:Lcom/google/android/material/chip/Chip;

.field private final buttonRect:Lcom/google/android/material/chip/Chip;

.field private callback:Lorg/catrobat/paintroid/tools/options/SmudgeToolOptionsView$Callback;

.field private final dragSeekBar:Landroid/widget/SeekBar;

.field private final dragText:Landroid/widget/EditText;

.field private final pressureSeekBar:Landroid/widget/SeekBar;

.field private final pressureText:Landroid/widget/EditText;

.field private strokeButtonsGroup:Lcom/google/android/material/chip/ChipGroup;

.field private final topLayout:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$DqnNjkssrYu5jUuWNdfx8lndUes(Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;->_init_$lambda-2(Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hMr1-C5hcO-EStRPYkbbEVLFO8g(Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;->_init_$lambda-1(Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;->Companion:Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView$Companion;

    const-string v0, "DefaultSmudgeToolOptionsView"

    .line 69
    sput-object v0, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 9

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 74
    sget v1, Lorg/catrobat/paintroid/R$layout;->dialog_pocketpaint_smudge_tool:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 76
    sget v0, Lorg/catrobat/paintroid/R$id;->pocketpaint_stroke_types:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.pocketpaint_stroke_types)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/android/material/chip/ChipGroup;

    iput-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;->strokeButtonsGroup:Lcom/google/android/material/chip/ChipGroup;

    .line 77
    sget v0, Lorg/catrobat/paintroid/R$id;->pocketpaint_stroke_ibtn_circle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.pocketpaint_stroke_ibtn_circle)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/android/material/chip/Chip;

    iput-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;->buttonCircle:Lcom/google/android/material/chip/Chip;

    .line 78
    sget v1, Lorg/catrobat/paintroid/R$id;->pocketpaint_stroke_ibtn_rect:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v3, "findViewById(R.id.pocketpaint_stroke_ibtn_rect)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/google/android/material/chip/Chip;

    iput-object v1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;->buttonRect:Lcom/google/android/material/chip/Chip;

    .line 79
    sget v3, Lorg/catrobat/paintroid/R$id;->pocketpaint_stroke_width_seek_bar:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "findViewById(R.id.pocket\u2026nt_stroke_width_seek_bar)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;->brushWidthSeekBar:Landroid/widget/SeekBar;

    .line 80
    new-instance v4, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView$OnBrushChangedWidthSeekBarListener;

    invoke-direct {v4, p0}, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView$OnBrushChangedWidthSeekBarListener;-><init>(Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;)V

    check-cast v4, Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 81
    sget v3, Lorg/catrobat/paintroid/R$id;->pocketpaint_stroke_width_width_text:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "findViewById(R.id.pocket\u2026_stroke_width_width_text)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;->brushSizeText:Landroid/widget/EditText;

    .line 82
    sget v4, Lorg/catrobat/paintroid/R$id;->pocketpaint_brush_tool_preview:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const-string v5, "findViewById(R.id.pocketpaint_brush_tool_preview)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lorg/catrobat/paintroid/tools/options/BrushToolPreview;

    iput-object v4, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;->brushToolPreview:Lorg/catrobat/paintroid/tools/options/BrushToolPreview;

    .line 83
    sget v4, Lorg/catrobat/paintroid/R$id;->pocketpaint_smudge_tool_dialog_pressure_input:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const-string v5, "findViewById(R.id.pocket\u2026ol_dialog_pressure_input)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;->pressureText:Landroid/widget/EditText;

    .line 84
    sget v5, Lorg/catrobat/paintroid/R$id;->pocketpaint_pressure_seek_bar:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const-string v6, "findViewById(R.id.pocketpaint_pressure_seek_bar)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/widget/SeekBar;

    iput-object v5, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;->pressureSeekBar:Landroid/widget/SeekBar;

    .line 85
    new-instance v6, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView$OnPressureChangedSeekBarListener;

    invoke-direct {v6, p0}, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView$OnPressureChangedSeekBarListener;-><init>(Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;)V

    check-cast v6, Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 86
    sget v5, Lorg/catrobat/paintroid/R$id;->pocketpaint_smudge_tool_dialog_drag_input:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const-string v6, "findViewById(R.id.pocket\u2026e_tool_dialog_drag_input)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;->dragText:Landroid/widget/EditText;

    .line 87
    sget v6, Lorg/catrobat/paintroid/R$id;->pocketpaint_drag_seek_bar:I

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const-string v7, "findViewById(R.id.pocketpaint_drag_seek_bar)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/widget/SeekBar;

    iput-object v6, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;->dragSeekBar:Landroid/widget/SeekBar;

    .line 88
    new-instance v7, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView$OnDragChangedSeekBarListener;

    invoke-direct {v7, p0}, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView$OnDragChangedSeekBarListener;-><init>(Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;)V

    check-cast v7, Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 89
    sget v6, Lorg/catrobat/paintroid/R$id;->pocketpaint_smudge_top_layout:I

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const-string v7, "findViewById(R.id.pocketpaint_smudge_top_layout)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v6, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;->topLayout:Landroid/view/View;

    .line 90
    sget v6, Lorg/catrobat/paintroid/R$id;->pocketpaint_smudge_bottom_layout:I

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v6, "findViewById(R.id.pocket\u2026int_smudge_bottom_layout)"

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;->bottomLayout:Landroid/view/View;

    new-array p1, v2, [Landroid/text/InputFilter;

    .line 92
    new-instance v6, Lorg/catrobat/paintroid/tools/helper/DefaultNumberRangeFilter;

    const/16 v7, 0x64

    invoke-direct {v6, v2, v7}, Lorg/catrobat/paintroid/tools/helper/DefaultNumberRangeFilter;-><init>(II)V

    check-cast v6, Landroid/text/InputFilter;

    const/4 v8, 0x0

    aput-object v6, p1, v8

    invoke-virtual {v3, p1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    new-array p1, v2, [Landroid/text/InputFilter;

    .line 93
    new-instance v6, Lorg/catrobat/paintroid/tools/helper/DefaultNumberRangeFilter;

    invoke-direct {v6, v2, v7}, Lorg/catrobat/paintroid/tools/helper/DefaultNumberRangeFilter;-><init>(II)V

    check-cast v6, Landroid/text/InputFilter;

    aput-object v6, p1, v8

    invoke-virtual {v4, p1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    new-array p1, v2, [Landroid/text/InputFilter;

    .line 94
    new-instance v6, Lorg/catrobat/paintroid/tools/helper/DefaultNumberRangeFilter;

    invoke-direct {v6, v2, v7}, Lorg/catrobat/paintroid/tools/helper/DefaultNumberRangeFilter;-><init>(II)V

    check-cast v6, Landroid/text/InputFilter;

    aput-object v6, p1, v8

    invoke-virtual {v5, p1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 95
    new-instance p1, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView$$ExternalSyntheticLambda0;-><init>(Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;)V

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/Chip;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    new-instance p1, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView$$ExternalSyntheticLambda1;-><init>(Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;)V

    invoke-virtual {v1, p1}, Lcom/google/android/material/chip/Chip;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    new-instance p1, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView$4;

    invoke-direct {p1, p0}, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView$4;-><init>(Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;)V

    check-cast p1, Landroid/text/TextWatcher;

    invoke-virtual {v3, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 116
    new-instance p1, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView$5;

    invoke-direct {p1, p0}, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView$5;-><init>(Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;)V

    check-cast p1, Landroid/text/TextWatcher;

    invoke-virtual {v4, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 134
    new-instance p1, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView$6;

    invoke-direct {p1, p0}, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView$6;-><init>(Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;)V

    check-cast p1, Landroid/text/TextWatcher;

    invoke-virtual {v5, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/16 p1, 0x32

    .line 153
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;->setPressureText(I)V

    .line 154
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;->setDragText(I)V

    return-void
.end method

.method private static final _init_$lambda-1(Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-direct {p0}, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;->onCircleButtonClicked()V

    return-void
.end method

.method private static final _init_$lambda-2(Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-direct {p0}, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;->onRectButtonClicked()V

    return-void
.end method

.method public static final synthetic access$getBrushSizeText$p(Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;)Landroid/widget/EditText;
    .locals 0

    .line 50
    iget-object p0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;->brushSizeText:Landroid/widget/EditText;

    return-object p0
.end method

.method public static final synthetic access$getBrushToolPreview$p(Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;)Lorg/catrobat/paintroid/tools/options/BrushToolPreview;
    .locals 0

    .line 50
    iget-object p0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;->brushToolPreview:Lorg/catrobat/paintroid/tools/options/BrushToolPreview;

    return-object p0
.end method

.method public static final synthetic access$getBrushWidthSeekBar$p(Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;)Landroid/widget/SeekBar;
    .locals 0

    .line 50
    iget-object p0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;->brushWidthSeekBar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method public static final synthetic access$getDragSeekBar$p(Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;)Landroid/widget/SeekBar;
    .locals 0

    .line 50
    iget-object p0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;->dragSeekBar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method public static final synthetic access$getDragText$p(Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;)Landroid/widget/EditText;
    .locals 0

    .line 50
    iget-object p0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;->dragText:Landroid/widget/EditText;

    return-object p0
.end method

.method public static final synthetic access$getPressureSeekBar$p(Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;)Landroid/widget/SeekBar;
    .locals 0

    .line 50
    iget-object p0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;->pressureSeekBar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method public static final synthetic access$getPressureText$p(Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;)Landroid/widget/EditText;
    .locals 0

    .line 50
    iget-object p0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;->pressureText:Landroid/widget/EditText;

    return-object p0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 50
    sget-object v0, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$setDragText(Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;->setDragText(I)V

    return-void
.end method

.method public static final synthetic access$setPressureText(Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;->setPressureText(I)V

    return-void
.end method

.method public static final synthetic access$updateDrag(Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;->updateDrag(I)V

    return-void
.end method

.method public static final synthetic access$updatePressure(Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;->updatePressure(I)V

    return-void
.end method

.method public static final synthetic access$updateStrokeWidthChange(Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;->updateStrokeWidthChange(I)V

    return-void
.end method

.method private final onCircleButtonClicked()V
    .locals 2

    .line 165
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-direct {p0, v0}, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;->updateStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 166
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;->buttonCircle:Lcom/google/android/material/chip/Chip;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    .line 167
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;->buttonRect:Lcom/google/android/material/chip/Chip;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    .line 168
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;->invalidate()V

    return-void
.end method

.method private final onRectButtonClicked()V
    .locals 2

    .line 158
    sget-object v0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-direct {p0, v0}, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;->updateStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 159
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;->buttonRect:Lcom/google/android/material/chip/Chip;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    .line 160
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;->buttonCircle:Lcom/google/android/material/chip/Chip;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    .line 161
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;->invalidate()V

    return-void
.end method

.method private final setDragText(I)V
    .locals 5

    .line 237
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;->dragText:Landroid/widget/EditText;

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

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final setPressureText(I)V
    .locals 5

    .line 233
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;->pressureText:Landroid/widget/EditText;

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

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final updateDrag(I)V
    .locals 1

    .line 229
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;->callback:Lorg/catrobat/paintroid/tools/options/SmudgeToolOptionsView$Callback;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/tools/options/SmudgeToolOptionsView$Callback;->onDragChanged(I)V

    :goto_0
    return-void
.end method

.method private final updatePressure(I)V
    .locals 1

    .line 225
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;->callback:Lorg/catrobat/paintroid/tools/options/SmudgeToolOptionsView$Callback;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/tools/options/SmudgeToolOptionsView$Callback;->onPressureChanged(I)V

    :goto_0
    return-void
.end method

.method private final updateStrokeCap(Landroid/graphics/Paint$Cap;)V
    .locals 1

    .line 213
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;->brushChangedListener:Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushChangedListener;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushChangedListener;->setCap(Landroid/graphics/Paint$Cap;)V

    :goto_0
    return-void
.end method

.method private final updateStrokeWidthChange(I)V
    .locals 1

    .line 209
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;->brushChangedListener:Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushChangedListener;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushChangedListener;->setStrokeWidth(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getBottomToolOptions()Landroid/view/View;
    .locals 1

    .line 301
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;->bottomLayout:Landroid/view/View;

    return-object v0
.end method

.method public getTopToolOptions()Landroid/view/View;
    .locals 1

    .line 303
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;->topLayout:Landroid/view/View;

    return-object v0
.end method

.method public hideCaps()V
    .locals 0

    return-void
.end method

.method public invalidate()V
    .locals 1

    .line 217
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;->brushToolPreview:Lorg/catrobat/paintroid/tools/options/BrushToolPreview;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/BrushToolPreview;->invalidate()V

    return-void
.end method

.method public setBrushChangedListener(Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushChangedListener;)V
    .locals 1

    const-string v0, "onBrushChangedListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    iput-object p1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;->brushChangedListener:Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushChangedListener;

    return-void
.end method

.method public setBrushPreviewListener(Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushPreviewListener;)V
    .locals 1

    const-string v0, "onBrushPreviewListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;->brushToolPreview:Lorg/catrobat/paintroid/tools/options/BrushToolPreview;

    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/tools/options/BrushToolPreview;->setListener(Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushPreviewListener;)V

    .line 201
    iget-object p1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;->brushToolPreview:Lorg/catrobat/paintroid/tools/options/BrushToolPreview;

    invoke-interface {p1}, Lorg/catrobat/paintroid/tools/options/BrushToolPreview;->invalidate()V

    return-void
.end method

.method public setCallback(Lorg/catrobat/paintroid/tools/options/SmudgeToolOptionsView$Callback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    iput-object p1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;->callback:Lorg/catrobat/paintroid/tools/options/SmudgeToolOptionsView$Callback;

    return-void
.end method

.method public setCurrentPaint(Landroid/graphics/Paint;)V
    .locals 5

    const-string v0, "paint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeCap()Landroid/graphics/Paint$Cap;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 173
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;->buttonCircle:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0, v2}, Lcom/google/android/material/chip/Chip;->setSelected(Z)V

    .line 174
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;->buttonRect:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0, v3}, Lcom/google/android/material/chip/Chip;->setSelected(Z)V

    goto :goto_0

    .line 176
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;->buttonCircle:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0, v3}, Lcom/google/android/material/chip/Chip;->setSelected(Z)V

    .line 177
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;->buttonRect:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0, v2}, Lcom/google/android/material/chip/Chip;->setSelected(Z)V

    .line 179
    :goto_0
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;->brushWidthSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 180
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;->brushSizeText:Landroid/widget/EditText;

    .line 181
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 182
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Object;

    .line 183
    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p1

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v3

    .line 181
    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v2, "%d"

    invoke-static {v1, v2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "java.lang.String.format(locale, format, *args)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    .line 180
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setStrokeCapButtonChecked(Landroid/graphics/Paint$Cap;)V
    .locals 1

    const-string v0, "strokeCap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    sget-object v0, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Landroid/graphics/Paint$Cap;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 191
    :cond_0
    iget-object p1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;->strokeButtonsGroup:Lcom/google/android/material/chip/ChipGroup;

    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;->buttonRect:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/chip/ChipGroup;->check(I)V

    goto :goto_0

    .line 190
    :cond_1
    iget-object p1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;->strokeButtonsGroup:Lcom/google/android/material/chip/ChipGroup;

    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;->buttonCircle:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/chip/ChipGroup;->check(I)V

    :goto_0
    return-void
.end method
