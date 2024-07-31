.class public Lorg/catrobat/catroid/pocketmusic/fastscroller/RecyclerViewScrollListener;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "RecyclerViewScrollListener.java"


# instance fields
.field private oldScrollState:I

.field private final scroller:Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;


# direct methods
.method public constructor <init>(Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;)V
    .locals 1
    .param p1, "scroller"    # Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;

    .line 33
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/RecyclerViewScrollListener;->oldScrollState:I

    .line 34
    iput-object p1, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/RecyclerViewScrollListener;->scroller:Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;

    .line 35
    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "newScrollState"    # I

    .line 39
    if-nez p2, :cond_0

    iget v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/RecyclerViewScrollListener;->oldScrollState:I

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/RecyclerViewScrollListener;->scroller:Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;

    invoke-virtual {v0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->getViewProvider()Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ScrollerViewProvider;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ScrollerViewProvider;->onScrollFinished()V

    goto :goto_0

    .line 41
    :cond_0
    if-eqz p2, :cond_1

    iget v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/RecyclerViewScrollListener;->oldScrollState:I

    if-nez v0, :cond_1

    .line 43
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/RecyclerViewScrollListener;->scroller:Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;

    invoke-virtual {v0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->getViewProvider()Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ScrollerViewProvider;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ScrollerViewProvider;->onScrollStarted()V

    .line 45
    :cond_1
    :goto_0
    iput p2, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/RecyclerViewScrollListener;->oldScrollState:I

    .line 46
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 47
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1
    .param p1, "rv"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .line 51
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/RecyclerViewScrollListener;->scroller:Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;

    invoke-virtual {v0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->shouldUpdateHandlePosition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/pocketmusic/fastscroller/RecyclerViewScrollListener;->updateHandlePosition(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 54
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 55
    return-void
.end method

.method updateHandlePosition(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 5
    .param p1, "rv"    # Landroidx/recyclerview/widget/RecyclerView;

    .line 59
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/RecyclerViewScrollListener;->scroller:Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;

    invoke-virtual {v0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v0

    .line 61
    .local v0, "offset":I
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollExtent()I

    move-result v1

    .line 62
    .local v1, "extent":I
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v2

    .line 63
    .local v2, "range":I
    int-to-float v3, v0

    sub-int v4, v2, v1

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 64
    .end local v0    # "offset":I
    .end local v1    # "extent":I
    .end local v2    # "range":I
    .local v3, "relativePos":F
    goto :goto_0

    .line 65
    .end local v3    # "relativePos":F
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v0

    .line 66
    .restart local v0    # "offset":I
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollExtent()I

    move-result v1

    .line 67
    .restart local v1    # "extent":I
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v2

    .line 68
    .restart local v2    # "range":I
    int-to-float v3, v0

    sub-int v4, v2, v1

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 70
    .end local v0    # "offset":I
    .end local v1    # "extent":I
    .end local v2    # "range":I
    .restart local v3    # "relativePos":F
    :goto_0
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/RecyclerViewScrollListener;->scroller:Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;

    invoke-virtual {v0, v3}, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->setScrollerPosition(F)V

    .line 71
    return-void
.end method
