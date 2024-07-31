.class final Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView$ScrollHandler;
.super Landroid/os/Handler;
.source "AutoScrollableRecyclerView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ScrollHandler"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView$ScrollHandler;",
        "Landroid/os/Handler;",
        "autoScrollableRecyclerView",
        "Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView;",
        "(Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView;)V",
        "autoScrollViewPager",
        "Ljava/lang/ref/WeakReference;",
        "handleMessage",
        "",
        "msg",
        "Landroid/os/Message;",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private final autoScrollViewPager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView;)V
    .locals 1
    .param p1, "autoScrollableRecyclerView"    # Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView;

    const-string v0, "autoScrollableRecyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    nop

    .line 113
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 115
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView$ScrollHandler;->autoScrollViewPager:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 119
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView$ScrollHandler;->autoScrollViewPager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView;->scrollNext()V

    .line 120
    :cond_0
    return-void
.end method
