.class public final Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;
.super Ljava/lang/Object;
.source "DefaultSprayToolOptionsView.kt"

# interfaces
.implements Lorg/catrobat/paintroid/tools/options/SprayToolOptionsView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u000b\u001a\u00020\u000cH\u0002J\u0012\u0010\r\u001a\u00020\u000c2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u0010\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0010\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\u0012\u001a\u00020\u0013H\u0016R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;",
        "Lorg/catrobat/paintroid/tools/options/SprayToolOptionsView;",
        "rootView",
        "Landroid/view/ViewGroup;",
        "(Landroid/view/ViewGroup;)V",
        "callback",
        "Lorg/catrobat/paintroid/tools/options/SprayToolOptionsView$Callback;",
        "radiusSeekBar",
        "Landroid/widget/SeekBar;",
        "radiusText",
        "Lcom/google/android/material/textfield/TextInputEditText;",
        "initializeListeners",
        "",
        "setCallback",
        "setCurrentPaint",
        "paint",
        "Landroid/graphics/Paint;",
        "setRadius",
        "radius",
        "",
        "Companion",
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
.field public static final Companion:Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private callback:Lorg/catrobat/paintroid/tools/options/SprayToolOptionsView$Callback;

.field private final radiusSeekBar:Landroid/widget/SeekBar;

.field private final radiusText:Lcom/google/android/material/textfield/TextInputEditText;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;->Companion:Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView$Companion;

    .line 46
    const-class v0, Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "rootView"    # Landroid/view/ViewGroup;

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    nop

    .line 50
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 51
    .local v0, "inflater":Landroid/view/LayoutInflater;
    nop

    .line 52
    sget v1, Lorg/catrobat/paintroid/R$layout;->dialog_pocketpaint_spray_tool:I

    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const-string v2, "inflater.inflate(R.layou\u2026int_spray_tool, rootView)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    nop

    .line 53
    .local v1, "sprayToolOptionsView":Landroid/view/View;
    sget v2, Lorg/catrobat/paintroid/R$id;->pocketpaint_radius_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "sprayToolOptionsView.fin\u2026.pocketpaint_radius_text)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v2, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;->radiusText:Lcom/google/android/material/textfield/TextInputEditText;

    .line 54
    sget v2, Lorg/catrobat/paintroid/R$id;->pocketpaint_spray_radius_seek_bar:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "sprayToolOptionsView.fin\u2026nt_spray_radius_seek_bar)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;->radiusSeekBar:Landroid/widget/SeekBar;

    .line 55
    invoke-direct {p0}, Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;->initializeListeners()V

    .line 56
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v1    # "sprayToolOptionsView":Landroid/view/View;
    return-void
.end method

.method public static final synthetic access$getCallback$p(Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;)Lorg/catrobat/paintroid/tools/options/SprayToolOptionsView$Callback;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;

    .line 39
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;->callback:Lorg/catrobat/paintroid/tools/options/SprayToolOptionsView$Callback;

    return-object v0
.end method

.method public static final synthetic access$getRadiusSeekBar$p(Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;

    .line 39
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;->radiusSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method public static final synthetic access$getRadiusText$p(Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;)Lcom/google/android/material/textfield/TextInputEditText;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;

    .line 39
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;->radiusText:Lcom/google/android/material/textfield/TextInputEditText;

    return-object v0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 39
    sget-object v0, Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$setCallback$p(Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;Lorg/catrobat/paintroid/tools/options/SprayToolOptionsView$Callback;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;
    .param p1, "<set-?>"    # Lorg/catrobat/paintroid/tools/options/SprayToolOptionsView$Callback;

    .line 39
    iput-object p1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;->callback:Lorg/catrobat/paintroid/tools/options/SprayToolOptionsView$Callback;

    return-void
.end method

.method private final initializeListeners()V
    .locals 5

    .line 59
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;->radiusSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 60
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;->radiusText:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;->radiusSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;->radiusText:Lcom/google/android/material/textfield/TextInputEditText;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/text/InputFilter;

    new-instance v3, Lorg/catrobat/paintroid/tools/helper/DefaultNumberRangeFilter;

    const/16 v4, 0x64

    invoke-direct {v3, v1, v4}, Lorg/catrobat/paintroid/tools/helper/DefaultNumberRangeFilter;-><init>(II)V

    check-cast v3, Landroid/text/InputFilter;

    const/4 v1, 0x0

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 62
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;->radiusText:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v1, Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView$initializeListeners$1;

    invoke-direct {v1, p0}, Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView$initializeListeners$1;-><init>(Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;)V

    check-cast v1, Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 82
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;->radiusSeekBar:Landroid/widget/SeekBar;

    new-instance v1, Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView$initializeListeners$2;

    invoke-direct {v1, p0}, Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView$initializeListeners$2;-><init>(Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;)V

    check-cast v1, Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 102
    return-void
.end method


# virtual methods
.method public setCallback(Lorg/catrobat/paintroid/tools/options/SprayToolOptionsView$Callback;)V
    .locals 0
    .param p1, "callback"    # Lorg/catrobat/paintroid/tools/options/SprayToolOptionsView$Callback;

    .line 105
    iput-object p1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;->callback:Lorg/catrobat/paintroid/tools/options/SprayToolOptionsView$Callback;

    .line 106
    return-void
.end method

.method public setCurrentPaint(Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "paint"    # Landroid/graphics/Paint;

    const-string v0, "paint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;->setRadius(I)V

    .line 114
    return-void
.end method

.method public setRadius(I)V
    .locals 1
    .param p1, "radius"    # I

    .line 109
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;->radiusSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 110
    return-void
.end method
