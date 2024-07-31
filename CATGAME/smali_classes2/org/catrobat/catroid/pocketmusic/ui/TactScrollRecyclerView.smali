.class public Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "TactScrollRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView$TactSnapper;,
        Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView$TactAdapter;
    }
.end annotation


# static fields
.field private static final EMPTY_END_VIEW_TYPE:I = 0x66

.field private static final PLUS_VIEW_TYPE:I = 0x65

.field private static final TACTS_PER_SCREEN:I = 0x2

.field private static final TACT_VIEW_TYPE:I = 0x64


# instance fields
.field private animatorUpdateCallback:Lorg/catrobat/catroid/pocketmusic/ui/AnimatorUpdateCallback;

.field private isPlaying:Z

.field private tactCount:I

.field private tactSnapper:Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView$TactSnapper;

.field private tactViewParams:Landroid/view/ViewGroup$LayoutParams;

.field private trackGrid:Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->tactViewParams:Landroid/view/ViewGroup$LayoutParams;

    .line 76
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p1, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 77
    new-instance v0, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView$TactAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView$TactAdapter;-><init>(Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView$1;)V

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 78
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->setHorizontalScrollBarEnabled(Z)V

    .line 79
    const/high16 v0, 0x2000000

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->setScrollBarStyle(I)V

    .line 80
    new-instance v0, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;

    sget-object v1, Lorg/catrobat/catroid/pocketmusic/note/MusicalKey;->VIOLIN:Lorg/catrobat/catroid/pocketmusic/note/MusicalKey;

    sget-object v2, Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;->ACCORDION:Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;

    sget-object v3, Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;->BEAT_4_4:Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;-><init>(Lorg/catrobat/catroid/pocketmusic/note/MusicalKey;Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;Ljava/util/List;)V

    iput-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->trackGrid:Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;

    .line 83
    new-instance v0, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView$TactSnapper;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView$TactSnapper;-><init>(Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;)V

    iput-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->tactSnapper:Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView$TactSnapper;

    .line 84
    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 85
    return-void
.end method

.method static synthetic access$100(Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;)I
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;

    .line 51
    iget v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->tactCount:I

    return v0
.end method

.method static synthetic access$108(Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;)I
    .locals 2
    .param p0, "x0"    # Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;

    .line 51
    iget v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->tactCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->tactCount:I

    return v0
.end method

.method static synthetic access$200(Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;

    .line 51
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->tactViewParams:Landroid/view/ViewGroup$LayoutParams;

    return-object v0
.end method

.method static synthetic access$300(Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;)Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;

    .line 51
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->trackGrid:Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;

    return-object v0
.end method

.method static synthetic access$400(Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;)Lorg/catrobat/catroid/pocketmusic/ui/AnimatorUpdateCallback;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;

    .line 51
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->animatorUpdateCallback:Lorg/catrobat/catroid/pocketmusic/ui/AnimatorUpdateCallback;

    return-object v0
.end method

.method static synthetic access$500(Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;

    .line 51
    iget-boolean v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->isPlaying:Z

    return v0
.end method


# virtual methods
.method public getNotesPerScreen()I
    .locals 1

    .line 129
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->trackGrid:Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;

    invoke-virtual {v0}, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;->getBeat()Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;->getTopNumber()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getTactCount()I
    .locals 1

    .line 125
    iget v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->tactCount:I

    return v0
.end method

.method public getTactViewWidth()I
    .locals 1

    .line 148
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->tactViewParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    return v0
.end method

.method public getTrackGrid()Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->trackGrid:Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;

    return-object v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 116
    iget-boolean v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->isPlaying:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 93
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->isPlaying:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .line 134
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->tactViewParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 137
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->tactViewParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 138
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->animatorUpdateCallback:Lorg/catrobat/catroid/pocketmusic/ui/AnimatorUpdateCallback;

    iget v1, p0, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->tactCount:I

    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lorg/catrobat/catroid/pocketmusic/ui/AnimatorUpdateCallback;->updateCallback(II)V

    .line 140
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 141
    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->tactViewParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 142
    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->tactViewParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    .end local v0    # "i":I
    :cond_1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onMeasure(II)V

    .line 145
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 98
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->tactSnapper:Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView$TactSnapper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView$TactSnapper;->setScrollStartedByUser(Z)V

    .line 100
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 102
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setPlaying(Z)V
    .locals 1
    .param p1, "playing"    # Z

    .line 120
    iput-boolean p1, p0, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->isPlaying:Z

    .line 121
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 122
    return-void
.end method

.method public setTrack(Lorg/catrobat/catroid/pocketmusic/note/Track;I)V
    .locals 2
    .param p1, "track"    # Lorg/catrobat/catroid/pocketmusic/note/Track;
    .param p2, "beatsPerMinute"    # I

    .line 106
    sget-object v0, Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;->BEAT_4_4:Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;

    invoke-static {p1, v0, p2}, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackToTrackGridConverter;->convertTrackToTrackGrid(Lorg/catrobat/catroid/pocketmusic/note/Track;Lorg/catrobat/catroid/pocketmusic/note/MusicalBeat;I)Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->trackGrid:Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;

    .line 108
    invoke-virtual {v0}, Lorg/catrobat/catroid/pocketmusic/note/trackgrid/TrackGrid;->getTactCount()I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->tactCount:I

    .line 109
    return-void
.end method

.method public setUpdateAnimatorCallback(Lorg/catrobat/catroid/pocketmusic/ui/AnimatorUpdateCallback;)V
    .locals 0
    .param p1, "callback"    # Lorg/catrobat/catroid/pocketmusic/ui/AnimatorUpdateCallback;

    .line 88
    iput-object p1, p0, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->animatorUpdateCallback:Lorg/catrobat/catroid/pocketmusic/ui/AnimatorUpdateCallback;

    .line 89
    return-void
.end method
