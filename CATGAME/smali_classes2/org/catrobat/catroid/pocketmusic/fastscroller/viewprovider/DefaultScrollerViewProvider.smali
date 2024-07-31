.class public Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/DefaultScrollerViewProvider;
.super Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ScrollerViewProvider;
.source "DefaultScrollerViewProvider.java"


# instance fields
.field private bubble:Landroid/view/View;

.field private handle:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ScrollerViewProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getBubbleOffset()I
    .locals 2

    .line 74
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/DefaultScrollerViewProvider;->getScroller()Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->isVertical()Z

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/DefaultScrollerViewProvider;->handle:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iget-object v1, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/DefaultScrollerViewProvider;->bubble:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/DefaultScrollerViewProvider;->handle:Landroid/view/View;

    .line 75
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iget-object v1, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/DefaultScrollerViewProvider;->bubble:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    :goto_0
    float-to-int v0, v0

    .line 74
    return v0
.end method

.method protected provideBubbleBehavior()Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ViewBehavior;
    .locals 3

    .line 86
    new-instance v0, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/DefaultBubbleBehavior;

    new-instance v1, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager$Builder;

    iget-object v2, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/DefaultScrollerViewProvider;->bubble:Landroid/view/View;

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager$Builder;-><init>(Landroid/view/View;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager$Builder;->withHideDelay(I)Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager$AbsBuilder;

    move-result-object v1

    .line 87
    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager$AbsBuilder;->withPivotX(F)Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager$AbsBuilder;

    move-result-object v1

    .line 88
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager$AbsBuilder;->withPivotY(F)Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager$AbsBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager$AbsBuilder;->build()Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/DefaultBubbleBehavior;-><init>(Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager;)V

    .line 86
    return-object v0
.end method

.method public provideBubbleTextView()Landroid/widget/TextView;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/DefaultScrollerViewProvider;->bubble:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public provideBubbleView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "container"    # Landroid/view/ViewGroup;

    .line 63
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/DefaultScrollerViewProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d01ba

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/DefaultScrollerViewProvider;->bubble:Landroid/view/View;

    .line 64
    return-object v0
.end method

.method protected provideHandleBehavior()Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ViewBehavior;
    .locals 3

    .line 80
    new-instance v0, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/DefaultHandleBehavior;

    new-instance v1, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager$Builder;

    iget-object v2, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/DefaultScrollerViewProvider;->handle:Landroid/view/View;

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager$Builder;-><init>(Landroid/view/View;)V

    const/16 v2, 0x7d0

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager$Builder;->withHideDelay(I)Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager$AbsBuilder;

    move-result-object v1

    .line 81
    const v2, 0x7f020010

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager$AbsBuilder;->withHideAnimator(I)Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager$AbsBuilder;

    move-result-object v1

    const v2, 0x7f02000f

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager$AbsBuilder;->withShowAnimator(I)Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager$AbsBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager$AbsBuilder;->build()Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/DefaultHandleBehavior;-><init>(Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/VisibilityAnimationManager;)V

    .line 80
    return-object v0
.end method

.method public provideHandleView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "container"    # Landroid/view/ViewGroup;

    .line 43
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/DefaultScrollerViewProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/DefaultScrollerViewProvider;->handle:Landroid/view/View;

    .line 45
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/DefaultScrollerViewProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07018a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 46
    .local v0, "verticalInsetTop":I
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/DefaultScrollerViewProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070189

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 48
    .local v1, "verticalInsetBottom":I
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/DefaultScrollerViewProvider;->getScroller()Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->isVertical()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/DefaultScrollerViewProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070188

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_0
    move v4, v2

    .line 49
    .local v4, "horizontalInset":I
    new-instance v8, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/DefaultScrollerViewProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0802bd

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v2, v8

    move v5, v0

    move v6, v4

    move v7, v1

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 51
    .local v2, "handleBg":Landroid/graphics/drawable/InsetDrawable;
    iget-object v3, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/DefaultScrollerViewProvider;->handle:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 53
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/DefaultScrollerViewProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f070185

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 54
    .local v3, "handleWidth":I
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/DefaultScrollerViewProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070187

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 55
    .local v5, "handleHeight":I
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v3, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 56
    .local v6, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v7, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/DefaultScrollerViewProvider;->handle:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    iget-object v7, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/DefaultScrollerViewProvider;->handle:Landroid/view/View;

    return-object v7
.end method
