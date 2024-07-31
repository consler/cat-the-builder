.class public final Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;
.super Landroid/widget/LinearLayout;
.source "AlphaSliderView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/colorpicker/AlphaSliderView$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u0019\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007B!\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014J\u000e\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\tR\u001a\u0010\u000b\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\r\"\u0004\u0008\u0012\u0010\u000f\u00a8\u0006\u0019"
    }
    d2 = {
        "Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;",
        "Landroid/widget/LinearLayout;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "isCatroid",
        "",
        "()Z",
        "setCatroid",
        "(Z)V",
        "openedFromFormulaEditorInCatroidFlag",
        "getOpenedFromFormulaEditorInCatroidFlag",
        "setOpenedFromFormulaEditorInCatroidFlag",
        "getAlphaSlider",
        "Lorg/catrobat/paintroid/colorpicker/AlphaSlider;",
        "setSelectedColor",
        "",
        "color",
        "Companion",
        "colorpicker_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final Companion:Lorg/catrobat/paintroid/colorpicker/AlphaSliderView$Companion;

.field private static alphaSlider:Lorg/catrobat/paintroid/colorpicker/AlphaSlider;


# instance fields
.field private isCatroid:Z

.field private openedFromFormulaEditorInCatroidFlag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/paintroid/colorpicker/AlphaSliderView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/paintroid/colorpicker/AlphaSliderView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;->Companion:Lorg/catrobat/paintroid/colorpicker/AlphaSliderView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 42
    nop

    .line 43
    new-instance v1, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;-><init>(Landroid/content/Context;)V

    sput-object v1, Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;->alphaSlider:Lorg/catrobat/paintroid/colorpicker/AlphaSlider;

    .line 44
    if-eqz v1, :cond_0

    .line 45
    if-eqz v1, :cond_0

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 46
    nop

    .line 47
    nop

    .line 45
    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    :cond_0
    sget-object v0, Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;->alphaSlider:Lorg/catrobat/paintroid/colorpicker/AlphaSlider;

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;->addView(Landroid/view/View;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    nop

    .line 43
    new-instance v1, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;-><init>(Landroid/content/Context;)V

    sput-object v1, Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;->alphaSlider:Lorg/catrobat/paintroid/colorpicker/AlphaSlider;

    .line 44
    if-eqz v1, :cond_0

    .line 45
    if-eqz v1, :cond_0

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 46
    nop

    .line 47
    nop

    .line 45
    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    :cond_0
    sget-object v0, Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;->alphaSlider:Lorg/catrobat/paintroid/colorpicker/AlphaSlider;

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;->addView(Landroid/view/View;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    nop

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    nop

    .line 43
    new-instance v1, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;

    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;-><init>(Landroid/content/Context;)V

    sput-object v1, Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;->alphaSlider:Lorg/catrobat/paintroid/colorpicker/AlphaSlider;

    .line 44
    if-eqz v1, :cond_0

    .line 45
    if-eqz v1, :cond_0

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 46
    nop

    .line 47
    nop

    .line 45
    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    :cond_0
    sget-object v0, Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;->alphaSlider:Lorg/catrobat/paintroid/colorpicker/AlphaSlider;

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;->addView(Landroid/view/View;)V

    .line 52
    return-void
.end method


# virtual methods
.method public final getAlphaSlider()Lorg/catrobat/paintroid/colorpicker/AlphaSlider;
    .locals 1

    .line 54
    sget-object v0, Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;->alphaSlider:Lorg/catrobat/paintroid/colorpicker/AlphaSlider;

    return-object v0
.end method

.method public final getOpenedFromFormulaEditorInCatroidFlag()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;->openedFromFormulaEditorInCatroidFlag:Z

    return v0
.end method

.method public final isCatroid()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;->isCatroid:Z

    return v0
.end method

.method public final setCatroid(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 39
    iput-boolean p1, p0, Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;->isCatroid:Z

    return-void
.end method

.method public final setOpenedFromFormulaEditorInCatroidFlag(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 40
    iput-boolean p1, p0, Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;->openedFromFormulaEditorInCatroidFlag:Z

    return-void
.end method

.method public final setSelectedColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 57
    sget-object v0, Lorg/catrobat/paintroid/colorpicker/AlphaSliderView;->alphaSlider:Lorg/catrobat/paintroid/colorpicker/AlphaSlider;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->setSelectedColor(I)V

    .line 58
    :cond_0
    return-void
.end method
