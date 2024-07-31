.class public Lorg/catrobat/catroid/pocketmusic/ScrollController;
.super Ljava/lang/Object;
.source "ScrollController.java"


# instance fields
.field private final beatsPerMinute:I

.field private oldScrollPosition:I

.field private final pianoView:Lorg/catrobat/catroid/pocketmusic/ui/PianoView;

.field private final playButton:Landroid/widget/ImageButton;

.field private final playLine:Landroid/view/View;

.field private scrollingAnimator:Landroid/animation/ObjectAnimator;

.field private final scrollingView:Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;I)V
    .locals 1
    .param p1, "pocketmusicMainLayout"    # Landroid/view/ViewGroup;
    .param p2, "tactScrollRecyclerView"    # Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;
    .param p3, "beatsPerMinute"    # I

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lorg/catrobat/catroid/pocketmusic/ScrollController;->oldScrollPosition:I

    .line 52
    iput p3, p0, Lorg/catrobat/catroid/pocketmusic/ScrollController;->beatsPerMinute:I

    .line 53
    iput-object p2, p0, Lorg/catrobat/catroid/pocketmusic/ScrollController;->scrollingView:Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;

    .line 54
    const v0, 0x7f0a04ad

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ScrollController;->playLine:Landroid/view/View;

    .line 55
    const v0, 0x7f0a04ac

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ScrollController;->playButton:Landroid/widget/ImageButton;

    .line 56
    const v0, 0x7f0a047a

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;

    iput-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ScrollController;->pianoView:Lorg/catrobat/catroid/pocketmusic/ui/PianoView;

    .line 57
    invoke-direct {p0}, Lorg/catrobat/catroid/pocketmusic/ScrollController;->init()V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lorg/catrobat/catroid/pocketmusic/ScrollController;)I
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/pocketmusic/ScrollController;

    .line 41
    iget v0, p0, Lorg/catrobat/catroid/pocketmusic/ScrollController;->beatsPerMinute:I

    return v0
.end method

.method static synthetic access$100(Lorg/catrobat/catroid/pocketmusic/ScrollController;)Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/pocketmusic/ScrollController;

    .line 41
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ScrollController;->scrollingView:Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;

    return-object v0
.end method

.method static synthetic access$200(Lorg/catrobat/catroid/pocketmusic/ScrollController;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/pocketmusic/ScrollController;

    .line 41
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ScrollController;->scrollingAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$300(Lorg/catrobat/catroid/pocketmusic/ScrollController;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/pocketmusic/ScrollController;

    .line 41
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ScrollController;->playButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$400(Lorg/catrobat/catroid/pocketmusic/ScrollController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/pocketmusic/ScrollController;

    .line 41
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ScrollController;->playLine:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lorg/catrobat/catroid/pocketmusic/ScrollController;)Lorg/catrobat/catroid/pocketmusic/ui/PianoView;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/pocketmusic/ScrollController;

    .line 41
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ScrollController;->pianoView:Lorg/catrobat/catroid/pocketmusic/ui/PianoView;

    return-object v0
.end method

.method private init()V
    .locals 2

    .line 61
    invoke-direct {p0}, Lorg/catrobat/catroid/pocketmusic/ScrollController;->initializePlayLine()V

    .line 62
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/ScrollController;->initializeAnimator()V

    .line 63
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ScrollController;->scrollingView:Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;

    new-instance v1, Lorg/catrobat/catroid/pocketmusic/ScrollController$1;

    invoke-direct {v1, p0}, Lorg/catrobat/catroid/pocketmusic/ScrollController$1;-><init>(Lorg/catrobat/catroid/pocketmusic/ScrollController;)V

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->setUpdateAnimatorCallback(Lorg/catrobat/catroid/pocketmusic/ui/AnimatorUpdateCallback;)V

    .line 73
    return-void
.end method

.method private initializePlayLine()V
    .locals 2

    .line 109
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ScrollController;->scrollingView:Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;

    new-instance v1, Lorg/catrobat/catroid/pocketmusic/ScrollController$3;

    invoke-direct {v1, p0}, Lorg/catrobat/catroid/pocketmusic/ScrollController$3;-><init>(Lorg/catrobat/catroid/pocketmusic/ScrollController;)V

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 117
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ScrollController;->playButton:Landroid/widget/ImageButton;

    new-instance v1, Lorg/catrobat/catroid/pocketmusic/ScrollController$4;

    invoke-direct {v1, p0}, Lorg/catrobat/catroid/pocketmusic/ScrollController$4;-><init>(Lorg/catrobat/catroid/pocketmusic/ScrollController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    return-void
.end method

.method private setGlobalPlayPosition(I)V
    .locals 3
    .param p1, "xPosition"    # I

    .line 77
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ScrollController;->scrollingView:Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;

    iget v1, p0, Lorg/catrobat/catroid/pocketmusic/ScrollController;->oldScrollPosition:I

    sub-int v1, p1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/catroid/pocketmusic/ui/TactScrollRecyclerView;->scrollBy(II)V

    .line 78
    iput p1, p0, Lorg/catrobat/catroid/pocketmusic/ScrollController;->oldScrollPosition:I

    .line 79
    return-void
.end method


# virtual methods
.method public initializeAnimator()V
    .locals 2

    .line 82
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    const-string v1, "globalPlayPosition"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ScrollController;->scrollingAnimator:Landroid/animation/ObjectAnimator;

    .line 84
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 86
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ScrollController;->scrollingAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lorg/catrobat/catroid/pocketmusic/ScrollController$2;

    invoke-direct {v1, p0}, Lorg/catrobat/catroid/pocketmusic/ScrollController$2;-><init>(Lorg/catrobat/catroid/pocketmusic/ScrollController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 105
    return-void
.end method
