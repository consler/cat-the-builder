.class public final Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "AutoScrollableRecyclerView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView$ScrollHandler;,
        Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000I\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005*\u0001\u0017\u0018\u0000 \"2\u00020\u0001:\u0002\"#B%\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0015\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0007H\u0002\u00a2\u0006\u0002\u0010\u0019J\u0012\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016J\u0008\u0010\u001e\u001a\u00020\u001fH\u0002J\u0006\u0010 \u001a\u00020\u001fJ\u0006\u0010!\u001a\u00020\u001fR\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001b\u0010\u0010\u001a\u00020\u00118BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006$"
    }
    d2 = {
        "Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView;",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "delayMillis",
        "",
        "itemsCount",
        "getItemsCount",
        "()I",
        "setItemsCount",
        "(I)V",
        "scrollHandler",
        "Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView$ScrollHandler;",
        "getScrollHandler",
        "()Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView$ScrollHandler;",
        "scrollHandler$delegate",
        "Lkotlin/Lazy;",
        "createScroller",
        "org/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView$createScroller$1",
        "position",
        "(I)Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView$createScroller$1;",
        "dispatchTouchEvent",
        "",
        "e",
        "Landroid/view/MotionEvent;",
        "pauseAutoScroll",
        "",
        "resumeAutoScroll",
        "scrollNext",
        "Companion",
        "ScrollHandler",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final Companion:Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView$Companion;

.field private static final DELAY_BETWEEN_SCROLLS:I = 0x1388

.field private static final DURATION_OF_SCROLL:I = 0x1f4

.field private static final WHAT_SCROLL:I = 0x1


# instance fields
.field private final delayMillis:J

.field private itemsCount:I

.field private final scrollHandler$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView;->Companion:Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    nop

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView$scrollHandler$2;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView$scrollHandler$2;-><init>(Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView;->scrollHandler$delegate:Lkotlin/Lazy;

    .line 50
    nop

    .line 51
    nop

    .line 57
    nop

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 52
    nop

    .line 53
    sget-object v1, Lorg/catrobat/catroid/R$styleable;->AutoScrollableRecyclerView:[I

    .line 54
    nop

    .line 55
    nop

    .line 51
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 57
    nop

    .local v0, "$this$apply":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    .line 58
    .local v1, "$i$a$-apply-AutoScrollableRecyclerView$1":I
    nop

    .line 59
    nop

    .line 63
    nop

    .line 59
    nop

    .line 60
    nop

    .line 61
    const/16 v3, 0x1388

    .line 59
    :try_start_0
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 63
    int-to-long v2, v2

    iput-wide v2, p0, Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView;->delayMillis:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 66
    nop

    .line 67
    nop

    .line 57
    .end local v0    # "$this$apply":Landroid/content/res/TypedArray;
    .end local v1    # "$i$a$-apply-AutoScrollableRecyclerView$1":I
    nop

    .line 68
    return-void

    .line 66
    .restart local v0    # "$this$apply":Landroid/content/res/TypedArray;
    .restart local v1    # "$i$a$-apply-AutoScrollableRecyclerView$1":I
    :catchall_0
    move-exception v2

    .line 65
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v2
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 39
    const/4 p2, 0x0

    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 40
    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final createScroller(I)Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView$createScroller$1;
    .locals 3
    .param p1, "position"    # I

    .line 70
    nop

    .line 76
    nop

    .line 70
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView$createScroller$1;

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView$createScroller$1;-><init>(Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView;Landroid/content/Context;)V

    .line 76
    move-object v1, v0

    .local v1, "$this$apply":Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView$createScroller$1;
    const/4 v2, 0x0

    .line 77
    .local v2, "$i$a$-apply-AutoScrollableRecyclerView$createScroller$2":I
    invoke-virtual {v1, p1}, Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView$createScroller$1;->setTargetPosition(I)V

    .line 78
    nop

    .line 76
    .end local v1    # "$this$apply":Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView$createScroller$1;
    .end local v2    # "$i$a$-apply-AutoScrollableRecyclerView$createScroller$2":I
    nop

    .line 78
    return-object v0
.end method

.method private final getScrollHandler()Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView$ScrollHandler;
    .locals 1

    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView;->scrollHandler$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView$ScrollHandler;

    return-object v0
.end method

.method private final pauseAutoScroll()V
    .locals 2

    .line 91
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView;->getScrollHandler()Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView$ScrollHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView$ScrollHandler;->removeMessages(I)V

    .line 92
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 81
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 82
    :goto_0
    const/4 v1, 0x1

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_2

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView;->resumeAutoScroll()V

    goto :goto_2

    .line 83
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView;->pauseAutoScroll()V

    .line 84
    :cond_4
    :goto_2
    nop

    .line 85
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 87
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final getItemsCount()I
    .locals 1

    .line 46
    iget v0, p0, Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView;->itemsCount:I

    return v0
.end method

.method public final resumeAutoScroll()V
    .locals 4

    .line 95
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView;->getScrollHandler()Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView$ScrollHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView$ScrollHandler;->removeMessages(I)V

    .line 96
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView;->getScrollHandler()Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView$ScrollHandler;

    move-result-object v0

    iget-wide v2, p0, Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView;->delayMillis:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView$ScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 97
    return-void
.end method

.method public final scrollNext()V
    .locals 5

    .line 100
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .local v0, "layoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    const/4 v1, 0x0

    .line 101
    .local v1, "$i$a$-let-AutoScrollableRecyclerView$scrollNext$1":I
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 102
    .local v2, "position":I
    iget v4, p0, Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView;->itemsCount:I

    if-lt v2, v4, :cond_0

    .line 103
    const/4 v2, 0x0

    .line 105
    :cond_0
    nop

    .line 106
    invoke-direct {p0, v2}, Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView;->createScroller(I)Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView$createScroller$1;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    .line 105
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    .line 108
    .end local v2    # "position":I
    nop

    .line 100
    .end local v0    # "layoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    .end local v1    # "$i$a$-let-AutoScrollableRecyclerView$scrollNext$1":I
    nop

    .line 109
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView;->getScrollHandler()Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView$ScrollHandler;

    move-result-object v0

    iget-wide v1, p0, Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView;->delayMillis:J

    invoke-virtual {v0, v3, v1, v2}, Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView$ScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 110
    return-void

    .line 100
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setItemsCount(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 46
    iput p1, p0, Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView;->itemsCount:I

    return-void
.end method
