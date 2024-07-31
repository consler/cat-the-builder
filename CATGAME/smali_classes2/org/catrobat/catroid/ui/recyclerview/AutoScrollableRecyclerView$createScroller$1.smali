.class public final Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView$createScroller$1;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "AutoScrollableRecyclerView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView;->createScroller(I)Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView$createScroller$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\u0014J\u0008\u0010\u0005\u001a\u00020\u0003H\u0014\u00a8\u0006\u0006"
    }
    d2 = {
        "org/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView$createScroller$1",
        "Landroidx/recyclerview/widget/LinearSmoothScroller;",
        "calculateTimeForScrolling",
        "",
        "dx",
        "getHorizontalSnapPreference",
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
.field final synthetic this$0:Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView;
    .param p2, "$super_call_param$1"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView$createScroller$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/AutoScrollableRecyclerView;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected calculateTimeForScrolling(I)I
    .locals 1
    .param p1, "dx"    # I

    .line 75
    const/16 v0, 0x1f4

    return v0
.end method

.method protected getHorizontalSnapPreference()I
    .locals 1

    .line 72
    const/4 v0, 0x1

    return v0
.end method
