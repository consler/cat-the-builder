.class public final Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;
.super Ljava/lang/Object;
.source "DefaultBrushToolOptionsView.kt"

# interfaces
.implements Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView$OnBrushChangedWidthSeekBarListener;,
        Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0018\u0000 \"2\u00020\u0001:\u0002\"#B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\u0011H\u0002J\u0008\u0010\u0013\u001a\u00020\u0011H\u0002J\u0010\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u0006H\u0016J\u0010\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0010\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0010\u0010\u001c\u001a\u00020\u00112\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J\u0010\u0010\u001f\u001a\u00020\u00112\u0006\u0010 \u001a\u00020!H\u0002R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;",
        "Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView;",
        "rootView",
        "Landroid/view/ViewGroup;",
        "(Landroid/view/ViewGroup;)V",
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
        "invalidate",
        "",
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
        "updateStrokeCap",
        "cap",
        "Landroid/graphics/Paint$Cap;",
        "updateStrokeWidthChange",
        "strokeWidth",
        "",
        "Companion",
        "OnBrushChangedWidthSeekBarListener",
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
.field public static final Companion:Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private brushChangedListener:Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushChangedListener;

.field private final brushSizeText:Landroid/widget/EditText;

.field private final brushToolPreview:Lorg/catrobat/paintroid/tools/options/BrushToolPreview;

.field private final brushWidthSeekBar:Landroid/widget/SeekBar;

.field private final buttonCircle:Lcom/google/android/material/chip/Chip;

.field private final buttonRect:Lcom/google/android/material/chip/Chip;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->Companion:Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView$Companion;

    .line 55
    const-class v0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 7
    .param p1, "rootView"    # Landroid/view/ViewGroup;

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    nop

    .line 59
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 60
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lorg/catrobat/paintroid/R$layout;->dialog_pocketpaint_stroke:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 61
    .local v1, "brushPickerView":Landroid/view/View;
    move-object v3, v1

    .local v3, "$this$apply":Landroid/view/View;
    const/4 v4, 0x0

    .line 62
    .local v4, "$i$a$-apply-DefaultBrushToolOptionsView$1":I
    sget v5, Lorg/catrobat/paintroid/R$id;->pocketpaint_stroke_ibtn_circle:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const-string v6, "findViewById(R.id.pocketpaint_stroke_ibtn_circle)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/google/android/material/chip/Chip;

    iput-object v5, p0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->buttonCircle:Lcom/google/android/material/chip/Chip;

    .line 63
    sget v5, Lorg/catrobat/paintroid/R$id;->pocketpaint_stroke_ibtn_rect:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const-string v6, "findViewById(R.id.pocketpaint_stroke_ibtn_rect)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/google/android/material/chip/Chip;

    iput-object v5, p0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->buttonRect:Lcom/google/android/material/chip/Chip;

    .line 64
    sget v5, Lorg/catrobat/paintroid/R$id;->pocketpaint_stroke_width_seek_bar:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const-string v6, "findViewById(R.id.pocket\u2026nt_stroke_width_seek_bar)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/widget/SeekBar;

    iput-object v5, p0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->brushWidthSeekBar:Landroid/widget/SeekBar;

    .line 65
    new-instance v6, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView$OnBrushChangedWidthSeekBarListener;

    invoke-direct {v6, p0}, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView$OnBrushChangedWidthSeekBarListener;-><init>(Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;)V

    check-cast v6, Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 66
    sget v5, Lorg/catrobat/paintroid/R$id;->pocketpaint_stroke_width_width_text:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const-string v6, "findViewById(R.id.pocket\u2026_stroke_width_width_text)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->brushSizeText:Landroid/widget/EditText;

    .line 67
    sget v5, Lorg/catrobat/paintroid/R$id;->pocketpaint_brush_tool_preview:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const-string v6, "findViewById(R.id.pocketpaint_brush_tool_preview)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lorg/catrobat/paintroid/tools/options/BrushToolPreview;

    iput-object v5, p0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->brushToolPreview:Lorg/catrobat/paintroid/tools/options/BrushToolPreview;

    .line 68
    nop

    .line 61
    .end local v3    # "$this$apply":Landroid/view/View;
    .end local v4    # "$i$a$-apply-DefaultBrushToolOptionsView$1":I
    nop

    .line 69
    iget-object v3, p0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->brushSizeText:Landroid/widget/EditText;

    new-array v4, v2, [Landroid/text/InputFilter;

    new-instance v5, Lorg/catrobat/paintroid/tools/helper/DefaultNumberRangeFilter;

    const/16 v6, 0x64

    invoke-direct {v5, v2, v6}, Lorg/catrobat/paintroid/tools/helper/DefaultNumberRangeFilter;-><init>(II)V

    check-cast v5, Landroid/text/InputFilter;

    const/4 v2, 0x0

    aput-object v5, v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 70
    iget-object v2, p0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->buttonCircle:Lcom/google/android/material/chip/Chip;

    new-instance v3, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView$2;

    invoke-direct {v3, p0}, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView$2;-><init>(Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;)V

    check-cast v3, Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/Chip;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v2, p0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->buttonRect:Lcom/google/android/material/chip/Chip;

    new-instance v3, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView$3;

    invoke-direct {v3, p0}, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView$3;-><init>(Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;)V

    check-cast v3, Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/google/android/material/chip/Chip;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v2, p0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->brushSizeText:Landroid/widget/EditText;

    new-instance v3, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView$4;

    invoke-direct {v3, p0}, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView$4;-><init>(Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;)V

    check-cast v3, Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 91
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v1    # "brushPickerView":Landroid/view/View;
    return-void
.end method

.method public static final synthetic access$getBrushSizeText$p(Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;)Landroid/widget/EditText;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;

    .line 46
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->brushSizeText:Landroid/widget/EditText;

    return-object v0
.end method

.method public static final synthetic access$getBrushToolPreview$p(Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;)Lorg/catrobat/paintroid/tools/options/BrushToolPreview;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;

    .line 46
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->brushToolPreview:Lorg/catrobat/paintroid/tools/options/BrushToolPreview;

    return-object v0
.end method

.method public static final synthetic access$getBrushWidthSeekBar$p(Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;

    .line 46
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->brushWidthSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 46
    sget-object v0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$onCircleButtonClicked(Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;

    .line 46
    invoke-direct {p0}, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->onCircleButtonClicked()V

    return-void
.end method

.method public static final synthetic access$onRectButtonClicked(Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;

    .line 46
    invoke-direct {p0}, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->onRectButtonClicked()V

    return-void
.end method

.method public static final synthetic access$updateStrokeWidthChange(Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;I)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;
    .param p1, "strokeWidth"    # I

    .line 46
    invoke-direct {p0, p1}, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->updateStrokeWidthChange(I)V

    return-void
.end method

.method private final onCircleButtonClicked()V
    .locals 2

    .line 101
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-direct {p0, v0}, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->updateStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 102
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->buttonCircle:Lcom/google/android/material/chip/Chip;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setSelected(Z)V

    .line 103
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->buttonRect:Lcom/google/android/material/chip/Chip;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setSelected(Z)V

    .line 104
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->invalidate()V

    .line 105
    return-void
.end method

.method private final onRectButtonClicked()V
    .locals 2

    .line 94
    sget-object v0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-direct {p0, v0}, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->updateStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 95
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->buttonRect:Lcom/google/android/material/chip/Chip;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setSelected(Z)V

    .line 96
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->buttonCircle:Lcom/google/android/material/chip/Chip;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setSelected(Z)V

    .line 97
    invoke-virtual {p0}, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->invalidate()V

    .line 98
    return-void
.end method

.method private final updateStrokeCap(Landroid/graphics/Paint$Cap;)V
    .locals 1
    .param p1, "cap"    # Landroid/graphics/Paint$Cap;

    .line 139
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->brushChangedListener:Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushChangedListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushChangedListener;->setCap(Landroid/graphics/Paint$Cap;)V

    .line 140
    :cond_0
    return-void
.end method

.method private final updateStrokeWidthChange(I)V
    .locals 1
    .param p1, "strokeWidth"    # I

    .line 135
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->brushChangedListener:Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushChangedListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushChangedListener;->setStrokeWidth(I)V

    .line 136
    :cond_0
    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->brushToolPreview:Lorg/catrobat/paintroid/tools/options/BrushToolPreview;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/BrushToolPreview;->invalidate()V

    .line 144
    return-void
.end method

.method public setBrushChangedListener(Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushChangedListener;)V
    .locals 1
    .param p1, "onBrushChangedListener"    # Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushChangedListener;

    const-string v0, "onBrushChangedListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    iput-object p1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->brushChangedListener:Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushChangedListener;

    .line 127
    return-void
.end method

.method public setBrushPreviewListener(Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushPreviewListener;)V
    .locals 1
    .param p1, "onBrushPreviewListener"    # Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushPreviewListener;

    const-string v0, "onBrushPreviewListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->brushToolPreview:Lorg/catrobat/paintroid/tools/options/BrushToolPreview;

    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/tools/options/BrushToolPreview;->setListener(Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushPreviewListener;)V

    .line 131
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->brushToolPreview:Lorg/catrobat/paintroid/tools/options/BrushToolPreview;

    invoke-interface {v0}, Lorg/catrobat/paintroid/tools/options/BrushToolPreview;->invalidate()V

    .line 132
    return-void
.end method

.method public setCurrentPaint(Landroid/graphics/Paint;)V
    .locals 6
    .param p1, "paint"    # Landroid/graphics/Paint;

    const-string v0, "paint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeCap()Landroid/graphics/Paint$Cap;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 109
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->buttonCircle:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0, v2}, Lcom/google/android/material/chip/Chip;->setSelected(Z)V

    .line 110
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->buttonRect:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0, v3}, Lcom/google/android/material/chip/Chip;->setSelected(Z)V

    goto :goto_0

    .line 112
    :cond_0
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->buttonCircle:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0, v3}, Lcom/google/android/material/chip/Chip;->setSelected(Z)V

    .line 113
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->buttonRect:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0, v2}, Lcom/google/android/material/chip/Chip;->setSelected(Z)V

    .line 114
    :goto_0
    nop

    .line 115
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->brushWidthSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 116
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultBrushToolOptionsView;->brushSizeText:Landroid/widget/EditText;

    .line 117
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 118
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Object;

    .line 119
    nop

    .line 120
    nop

    .line 119
    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v5

    .line 120
    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    .line 117
    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%d"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.lang.String.format(locale, format, *args)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    .line 116
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 123
    return-void
.end method
