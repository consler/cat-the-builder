.class public Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;
.super Landroid/widget/LinearLayout;
.source "FastScroller.java"


# static fields
.field private static final STYLE_NONE:I = -0x1


# instance fields
.field private bubble:Landroid/view/View;

.field private bubbleColor:I

.field private bubbleOffset:I

.field private bubbleTextAppearance:I

.field private bubbleTextView:Landroid/widget/TextView;

.field private handle:Landroid/view/View;

.field private handleColor:I

.field private manuallyChangingPosition:Z

.field private recyclerView:Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;

.field private final scrollListener:Lorg/catrobat/catroid/pocketmusic/fastscroller/RecyclerViewScrollListener;

.field private scrollerOrientation:I

.field private titleProvider:Lorg/catrobat/catroid/pocketmusic/fastscroller/SectionTitleProvider;

.field private viewProvider:Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ScrollerViewProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    new-instance v0, Lorg/catrobat/catroid/pocketmusic/fastscroller/RecyclerViewScrollListener;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/RecyclerViewScrollListener;-><init>(Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;)V

    iput-object v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->scrollListener:Lorg/catrobat/catroid/pocketmusic/fastscroller/RecyclerViewScrollListener;

    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->setClipChildren(Z)V

    .line 76
    sget-object v1, Lorg/catrobat/catroid/R$styleable;->FastScroller:[I

    const/high16 v2, 0x7f040000

    invoke-virtual {p1, p2, v1, v2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 79
    .local v1, "style":Landroid/content/res/TypedArray;
    const/4 v2, -0x1

    :try_start_0
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->bubbleColor:I

    .line 80
    const/4 v0, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->handleColor:I

    .line 81
    const/4 v0, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->bubbleTextAppearance:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 84
    nop

    .line 85
    new-instance v0, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/DefaultScrollerViewProvider;

    invoke-direct {v0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/DefaultScrollerViewProvider;-><init>()V

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->setViewProvider(Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ScrollerViewProvider;)V

    .line 86
    return-void

    .line 83
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 84
    throw v0
.end method

.method static synthetic access$000(Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;)Lorg/catrobat/catroid/pocketmusic/fastscroller/SectionTitleProvider;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;

    .line 44
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->titleProvider:Lorg/catrobat/catroid/pocketmusic/fastscroller/SectionTitleProvider;

    return-object v0
.end method

.method static synthetic access$100(Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;)Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ScrollerViewProvider;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;

    .line 44
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->viewProvider:Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ScrollerViewProvider;

    return-object v0
.end method

.method static synthetic access$202(Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;
    .param p1, "x1"    # Z

    .line 44
    iput-boolean p1, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->manuallyChangingPosition:Z

    return p1
.end method

.method static synthetic access$300(Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;Landroid/view/MotionEvent;)F
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .line 44
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->getRelativeTouchPosition(Landroid/view/MotionEvent;)F

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;F)V
    .locals 0
    .param p0, "x0"    # Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;
    .param p1, "x1"    # F

    .line 44
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->setRecyclerViewPosition(F)V

    return-void
.end method

.method private applyStyling()V
    .locals 3

    .line 129
    iget v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->bubbleColor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 130
    iget-object v2, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->bubbleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v2, v0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->setBackgroundTint(Landroid/view/View;I)V

    .line 132
    :cond_0
    iget v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->handleColor:I

    if-eq v0, v1, :cond_1

    .line 133
    iget-object v2, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->handle:Landroid/view/View;

    invoke-direct {p0, v2, v0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->setBackgroundTint(Landroid/view/View;I)V

    .line 135
    :cond_1
    iget v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->bubbleTextAppearance:I

    if-eq v0, v1, :cond_2

    .line 136
    iget-object v1, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->bubbleTextView:Landroid/widget/TextView;

    invoke-static {v1, v0}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 138
    :cond_2
    return-void
.end method

.method private getRelativeTouchPosition(Landroid/view/MotionEvent;)F
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 175
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget-object v1, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->handle:Landroid/view/View;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->getViewRawCoordinate(Landroid/view/View;I)F

    move-result v1

    sub-float/2addr v0, v1

    .line 177
    .local v0, "yInParent":F
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->getHeight()I

    move-result v1

    iget-object v2, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->handle:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float v1, v0, v1

    return v1

    .line 179
    .end local v0    # "yInParent":F
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v1, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->handle:Landroid/view/View;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->getViewRawCoordinate(Landroid/view/View;I)F

    move-result v1

    sub-float/2addr v0, v1

    .line 180
    .local v0, "xInParent":F
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->getWidth()I

    move-result v1

    iget-object v2, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->handle:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float v1, v0, v1

    return v1
.end method

.method private getValueInRange(FFF)F
    .locals 2
    .param p1, "min"    # F
    .param p2, "max"    # F
    .param p3, "value"    # F

    .line 247
    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 248
    .local v0, "minimum":F
    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    return v1
.end method

.method private getViewRawCoordinate(Landroid/view/View;I)F
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "vectorIndex"    # I

    .line 185
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 186
    .local v0, "location":[I
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, p2

    .line 187
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 188
    aget v1, v0, p2

    int-to-float v1, v1

    return v1
.end method

.method private initHandleMovement()V
    .locals 2

    .line 150
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->handle:Landroid/view/View;

    new-instance v1, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller$1;

    invoke-direct {v1, p0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller$1;-><init>(Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 172
    return-void
.end method

.method private setBackgroundTint(Landroid/view/View;I)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "color"    # I

    .line 141
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 142
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 143
    return-void

    .line 145
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1, p2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 146
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 147
    return-void
.end method

.method private setRecyclerViewPosition(F)V
    .locals 7
    .param p1, "relativePos"    # F

    .line 192
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->recyclerView:Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;

    if-nez v0, :cond_0

    .line 193
    return-void

    .line 195
    :cond_0
    invoke-virtual {v0}, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    .line 196
    .local v0, "itemCount":I
    const/4 v1, 0x0

    add-int/lit8 v2, v0, -0x2

    int-to-float v2, v2

    int-to-float v3, v0

    mul-float/2addr v3, p1

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-direct {p0, v1, v2, v3}, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->getValueInRange(FFF)F

    move-result v1

    float-to-int v1, v1

    .line 198
    .local v1, "targetPos":I
    iget-object v2, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->recyclerView:Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;

    invoke-virtual {v2}, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 199
    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v2

    .line 200
    .local v2, "currentLeftViewPosition":I
    sub-int v3, v1, v2

    .line 201
    .local v3, "scrollByPositionX":I
    iget-object v4, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->recyclerView:Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;

    invoke-virtual {v4}, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->getTactViewWidth()I

    move-result v5

    mul-int/2addr v5, v3

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->scrollBy(II)V

    .line 203
    iget-object v4, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->titleProvider:Lorg/catrobat/catroid/pocketmusic/fastscroller/SectionTitleProvider;

    if-eqz v4, :cond_1

    iget-object v5, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->bubbleTextView:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    .line 204
    invoke-interface {v4, v1}, Lorg/catrobat/catroid/pocketmusic/fastscroller/SectionTitleProvider;->getSectionTitle(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    :cond_1
    return-void
.end method


# virtual methods
.method getViewProvider()Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ScrollerViewProvider;
    .locals 1

    .line 243
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->viewProvider:Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ScrollerViewProvider;

    return-object v0
.end method

.method public isVertical()Z
    .locals 2

    .line 235
    iget v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->scrollerOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 116
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 118
    invoke-direct {p0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->initHandleMovement()V

    .line 119
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->viewProvider:Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ScrollerViewProvider;

    invoke-virtual {v0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ScrollerViewProvider;->getBubbleOffset()I

    move-result v0

    iput v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->bubbleOffset:I

    .line 121
    invoke-direct {p0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->applyStyling()V

    .line 123
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->scrollListener:Lorg/catrobat/catroid/pocketmusic/fastscroller/RecyclerViewScrollListener;

    iget-object v1, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->recyclerView:Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/pocketmusic/fastscroller/RecyclerViewScrollListener;->updateHandlePosition(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 126
    :cond_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .line 110
    iput p1, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->scrollerOrientation:I

    .line 111
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 112
    return-void
.end method

.method public setRecyclerView(Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;

    .line 100
    iput-object p1, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->recyclerView:Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;

    .line 102
    invoke-virtual {p1}, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Lorg/catrobat/catroid/pocketmusic/fastscroller/SectionTitleProvider;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p1}, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/pocketmusic/fastscroller/SectionTitleProvider;

    iput-object v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->titleProvider:Lorg/catrobat/catroid/pocketmusic/fastscroller/SectionTitleProvider;

    .line 105
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->scrollListener:Lorg/catrobat/catroid/pocketmusic/fastscroller/RecyclerViewScrollListener;

    invoke-virtual {p1, v0}, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 106
    return-void
.end method

.method setScrollerPosition(F)V
    .locals 5
    .param p1, "relativePos"    # F

    .line 209
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->isVertical()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->bubble:Landroid/view/View;

    .line 212
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->getHeight()I

    move-result v2

    iget-object v3, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->bubble:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 213
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->getHeight()I

    move-result v3

    iget-object v4, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->handle:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p1

    iget v4, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->bubbleOffset:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 210
    invoke-direct {p0, v1, v2, v3}, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->getValueInRange(FFF)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setY(F)V

    .line 215
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->handle:Landroid/view/View;

    .line 217
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->getHeight()I

    move-result v2

    iget-object v3, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->handle:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 218
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->getHeight()I

    move-result v3

    iget-object v4, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->handle:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p1

    .line 215
    invoke-direct {p0, v1, v2, v3}, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->getValueInRange(FFF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    goto :goto_0

    .line 221
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->bubble:Landroid/view/View;

    .line 223
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->getWidth()I

    move-result v2

    iget-object v3, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->bubble:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 224
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->getWidth()I

    move-result v3

    iget-object v4, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->handle:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p1

    iget v4, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->bubbleOffset:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 221
    invoke-direct {p0, v1, v2, v3}, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->getValueInRange(FFF)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setX(F)V

    .line 226
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->handle:Landroid/view/View;

    .line 228
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->getWidth()I

    move-result v2

    iget-object v3, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->handle:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 229
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->getWidth()I

    move-result v3

    iget-object v4, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->handle:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p1

    .line 226
    invoke-direct {p0, v1, v2, v3}, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->getValueInRange(FFF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 232
    :goto_0
    return-void
.end method

.method public setViewProvider(Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ScrollerViewProvider;)V
    .locals 1
    .param p1, "viewProvider"    # Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ScrollerViewProvider;

    .line 89
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->removeAllViews()V

    .line 90
    iput-object p1, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->viewProvider:Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ScrollerViewProvider;

    .line 91
    invoke-virtual {p1, p0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ScrollerViewProvider;->setFastScroller(Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;)V

    .line 92
    invoke-virtual {p1, p0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ScrollerViewProvider;->provideBubbleView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->bubble:Landroid/view/View;

    .line 93
    invoke-virtual {p1, p0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ScrollerViewProvider;->provideHandleView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->handle:Landroid/view/View;

    .line 94
    invoke-virtual {p1}, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ScrollerViewProvider;->provideBubbleTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->bubbleTextView:Landroid/widget/TextView;

    .line 95
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->bubble:Landroid/view/View;

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->addView(Landroid/view/View;)V

    .line 96
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->handle:Landroid/view/View;

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->addView(Landroid/view/View;)V

    .line 97
    return-void
.end method

.method shouldUpdateHandlePosition()Z
    .locals 1

    .line 239
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->handle:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->manuallyChangingPosition:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->recyclerView:Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;

    invoke-virtual {v0}, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
