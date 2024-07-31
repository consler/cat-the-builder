.class Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment$1;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "RecyclerViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;

    .line 100
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment$1;, "Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment$1;"
    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 104
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment$1;, "Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment$1;"
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    .line 105
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->shouldShowEmptyView()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/fragment/RecyclerViewFragment;->setShowEmptyView(Z)V

    .line 106
    return-void
.end method
