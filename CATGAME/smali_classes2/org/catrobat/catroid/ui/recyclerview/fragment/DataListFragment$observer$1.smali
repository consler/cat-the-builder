.class public final Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$observer$1;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "DataListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;-><init>()V
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
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "org/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$observer$1",
        "Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;",
        "onChanged",
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
.field final synthetic this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 116
    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$observer$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 118
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    .line 119
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$observer$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->shouldShowEmptyView()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;->setShowEmptyView(Z)V

    .line 120
    return-void
.end method
