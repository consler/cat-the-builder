.class public abstract Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ScrollerViewProvider;
.super Ljava/lang/Object;
.source "ScrollerViewProvider.java"


# instance fields
.field private bubbleBehavior:Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ViewBehavior;

.field private handleBehavior:Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ViewBehavior;

.field private scroller:Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getBubbleBehavior()Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ViewBehavior;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ScrollerViewProvider;->bubbleBehavior:Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ViewBehavior;

    if-nez v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ScrollerViewProvider;->provideBubbleBehavior()Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ViewBehavior;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ScrollerViewProvider;->bubbleBehavior:Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ViewBehavior;

    .line 78
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ScrollerViewProvider;->bubbleBehavior:Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ViewBehavior;

    return-object v0
.end method

.method public abstract getBubbleOffset()I
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ScrollerViewProvider;->scroller:Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;

    invoke-virtual {v0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected getHandleBehavior()Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ViewBehavior;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ScrollerViewProvider;->handleBehavior:Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ViewBehavior;

    if-nez v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ScrollerViewProvider;->provideHandleBehavior()Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ViewBehavior;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ScrollerViewProvider;->handleBehavior:Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ViewBehavior;

    .line 71
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ScrollerViewProvider;->handleBehavior:Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ViewBehavior;

    return-object v0
.end method

.method protected getScroller()Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ScrollerViewProvider;->scroller:Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;

    return-object v0
.end method

.method public onHandleGrabbed()V
    .locals 1

    .line 82
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ScrollerViewProvider;->getHandleBehavior()Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ViewBehavior;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ScrollerViewProvider;->getHandleBehavior()Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ViewBehavior;

    move-result-object v0

    invoke-interface {v0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ViewBehavior;->onHandleGrabbed()V

    .line 85
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ScrollerViewProvider;->getBubbleBehavior()Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ViewBehavior;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ScrollerViewProvider;->getBubbleBehavior()Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ViewBehavior;

    move-result-object v0

    invoke-interface {v0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ViewBehavior;->onHandleGrabbed()V

    .line 88
    :cond_1
    return-void
.end method

.method public onHandleReleased()V
    .locals 1

    .line 91
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ScrollerViewProvider;->getHandleBehavior()Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ViewBehavior;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ScrollerViewProvider;->getHandleBehavior()Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ViewBehavior;

    move-result-object v0

    invoke-interface {v0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ViewBehavior;->onHandleReleased()V

    .line 94
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ScrollerViewProvider;->getBubbleBehavior()Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ViewBehavior;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 95
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ScrollerViewProvider;->getBubbleBehavior()Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ViewBehavior;

    move-result-object v0

    invoke-interface {v0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ViewBehavior;->onHandleReleased()V

    .line 97
    :cond_1
    return-void
.end method

.method public onScrollFinished()V
    .locals 1

    .line 109
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ScrollerViewProvider;->getHandleBehavior()Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ViewBehavior;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ScrollerViewProvider;->getHandleBehavior()Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ViewBehavior;

    move-result-object v0

    invoke-interface {v0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ViewBehavior;->onScrollFinished()V

    .line 112
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ScrollerViewProvider;->getBubbleBehavior()Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ViewBehavior;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 113
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ScrollerViewProvider;->getBubbleBehavior()Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ViewBehavior;

    move-result-object v0

    invoke-interface {v0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ViewBehavior;->onScrollFinished()V

    .line 115
    :cond_1
    return-void
.end method

.method public onScrollStarted()V
    .locals 1

    .line 100
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ScrollerViewProvider;->getHandleBehavior()Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ViewBehavior;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ScrollerViewProvider;->getHandleBehavior()Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ViewBehavior;

    move-result-object v0

    invoke-interface {v0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ViewBehavior;->onScrollStarted()V

    .line 103
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ScrollerViewProvider;->getBubbleBehavior()Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ViewBehavior;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ScrollerViewProvider;->getBubbleBehavior()Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ViewBehavior;

    move-result-object v0

    invoke-interface {v0}, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ViewBehavior;->onScrollStarted()V

    .line 106
    :cond_1
    return-void
.end method

.method protected abstract provideBubbleBehavior()Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ViewBehavior;
.end method

.method public abstract provideBubbleTextView()Landroid/widget/TextView;
.end method

.method public abstract provideBubbleView(Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected abstract provideHandleBehavior()Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ViewBehavior;
.end method

.method public abstract provideHandleView(Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public setFastScroller(Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;)V
    .locals 0
    .param p1, "scroller"    # Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;

    .line 42
    iput-object p1, p0, Lorg/catrobat/catroid/pocketmusic/fastscroller/viewprovider/ScrollerViewProvider;->scroller:Lorg/catrobat/catroid/pocketmusic/fastscroller/FastScroller;

    .line 43
    return-void
.end method
