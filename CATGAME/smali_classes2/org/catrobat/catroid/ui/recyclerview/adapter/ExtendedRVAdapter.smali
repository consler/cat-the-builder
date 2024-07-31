.class public abstract Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;
.super Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;
.source "ExtendedRVAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public projectsSorted:Z

.field public showDetails:Z


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 42
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;, "Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter<TT;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;-><init>(Ljava/util/List;)V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->showDetails:Z

    .line 39
    iput-boolean v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->projectsSorted:Z

    .line 43
    return-void
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 36
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;, "Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter<TT;>;"
    check-cast p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->onBindViewHolder(Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;I)V
    .locals 1
    .param p1, "holder"    # Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;
    .param p2, "position"    # I

    .line 53
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;, "Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter<TT;>;"
    invoke-super {p0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->onBindViewHolder(Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;I)V

    .line 54
    move-object v0, p1

    check-cast v0, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;

    invoke-virtual {p0, v0, p2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->onBindViewHolder(Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;I)V

    .line 55
    return-void
.end method

.method public abstract onBindViewHolder(Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;I)V
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 36
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;, "Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter<TT;>;"
    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 47
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;, "Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter<TT;>;"
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d01f2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 48
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;

    invoke-direct {v1, v0}, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public stopSound()V
    .locals 0

    .line 60
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;, "Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter<TT;>;"
    return-void
.end method
