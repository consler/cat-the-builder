.class public final Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment$MultiViewTouchHelperCallback;
.super Lorg/catrobat/catroid/ui/recyclerview/adapter/draganddrop/TouchHelperCallback;
.source "SpriteListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MultiViewTouchHelperCallback"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u0080\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u001a\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment$MultiViewTouchHelperCallback;",
        "Lorg/catrobat/catroid/ui/recyclerview/adapter/draganddrop/TouchHelperCallback;",
        "adapterInterface",
        "Lorg/catrobat/catroid/ui/recyclerview/adapter/draganddrop/TouchHelperAdapterInterface;",
        "(Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;Lorg/catrobat/catroid/ui/recyclerview/adapter/draganddrop/TouchHelperAdapterInterface;)V",
        "onSelectedChanged",
        "",
        "viewHolder",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "actionState",
        "",
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
.field final synthetic this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;


# direct methods
.method public constructor <init>(Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;Lorg/catrobat/catroid/ui/recyclerview/adapter/draganddrop/TouchHelperAdapterInterface;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;
    .param p2, "adapterInterface"    # Lorg/catrobat/catroid/ui/recyclerview/adapter/draganddrop/TouchHelperAdapterInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/catroid/ui/recyclerview/adapter/draganddrop/TouchHelperAdapterInterface;",
            ")V"
        }
    .end annotation

    .line 77
    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment$MultiViewTouchHelperCallback;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;

    .line 78
    invoke-direct {p0, p2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/draganddrop/TouchHelperCallback;-><init>(Lorg/catrobat/catroid/ui/recyclerview/adapter/draganddrop/TouchHelperAdapterInterface;)V

    return-void
.end method


# virtual methods
.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5
    .param p1, "viewHolder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "actionState"    # I

    .line 81
    invoke-super {p0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/draganddrop/TouchHelperCallback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 82
    if-eqz p2, :cond_0

    goto :goto_3

    .line 84
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment$MultiViewTouchHelperCallback;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;

    iget-object v0, v0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    const-string v1, "adapter"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    .line 85
    .local v0, "items":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/content/Sprite;

    .line 86
    .local v2, "sprite":Lorg/catrobat/catroid/content/Sprite;
    instance-of v3, v2, Lorg/catrobat/catroid/content/GroupSprite;

    if-eqz v3, :cond_1

    .line 87
    goto :goto_1

    .line 89
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Sprite;->toBeConverted()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 90
    iget-object v3, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment$MultiViewTouchHelperCallback;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;

    invoke-static {v3}, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->access$getSpriteController$p(Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;)Lorg/catrobat/catroid/ui/recyclerview/controller/SpriteController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/catrobat/catroid/ui/recyclerview/controller/SpriteController;->convert(Lorg/catrobat/catroid/content/Sprite;)Lorg/catrobat/catroid/content/Sprite;

    move-result-object v3

    .line 91
    .local v3, "convertedSprite":Lorg/catrobat/catroid/content/Sprite;
    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {v0, v4, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 85
    .end local v2    # "sprite":Lorg/catrobat/catroid/content/Sprite;
    .end local v3    # "convertedSprite":Lorg/catrobat/catroid/content/Sprite;
    :cond_2
    :goto_1
    goto :goto_0

    .line 94
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/content/Sprite;

    .line 95
    .local v2, "item":Lorg/catrobat/catroid/content/Sprite;
    instance-of v3, v2, Lorg/catrobat/catroid/content/GroupSprite;

    if-eqz v3, :cond_4

    .line 96
    move-object v3, v2

    check-cast v3, Lorg/catrobat/catroid/content/GroupSprite;

    move-object v4, v2

    check-cast v4, Lorg/catrobat/catroid/content/GroupSprite;

    invoke-virtual {v4}, Lorg/catrobat/catroid/content/GroupSprite;->isCollapsed()Z

    move-result v4

    invoke-virtual {v3, v4}, Lorg/catrobat/catroid/content/GroupSprite;->setCollapsed(Z)V

    .line 94
    .end local v2    # "item":Lorg/catrobat/catroid/content/Sprite;
    :cond_4
    goto :goto_2

    .line 99
    :cond_5
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment$MultiViewTouchHelperCallback;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;

    iget-object v1, v1, Lorg/catrobat/catroid/ui/recyclerview/fragment/SpriteListFragment;->adapter:Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;

    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->notifyDataSetChanged()V

    .line 101
    .end local v0    # "items":Ljava/util/List;
    :goto_3
    nop

    .line 102
    return-void
.end method
