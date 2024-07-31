.class public Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;
.super Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;
.source "ListRVAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter<",
        "Lorg/catrobat/catroid/formulaeditor/UserList;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/UserList;",
            ">;)V"
        }
    .end annotation

    .line 42
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/UserList;>;"
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;-><init>(Ljava/util/List;)V

    .line 43
    return-void
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 39
    check-cast p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;->onBindViewHolder(Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;I)V
    .locals 6
    .param p1, "holder"    # Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;
    .param p2, "position"    # I

    .line 53
    invoke-super {p0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->onBindViewHolder(Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;I)V

    .line 55
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/formulaeditor/UserList;

    .line 56
    .local v0, "item":Lorg/catrobat/catroid/formulaeditor/UserList;
    move-object v1, p1

    check-cast v1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ListViewHolder;

    .line 57
    .local v1, "listViewHolder":Lorg/catrobat/catroid/ui/recyclerview/viewholder/ListViewHolder;
    iget-object v2, v1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ListViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/UserList;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v2, "userList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/UserList;->getValue()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 61
    .local v4, "userListItem":Ljava/lang/Object;
    invoke-static {v4}, Lorg/catrobat/catroid/utils/ShowTextUtils;->convertObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    .end local v4    # "userListItem":Ljava/lang/Object;
    goto :goto_0

    .line 63
    :cond_0
    iget-object v3, v1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ListViewHolder;->spinner:Landroid/widget/Spinner;

    new-instance v4, Lorg/catrobat/catroid/ui/adapter/UserListValuesAdapter;

    iget-object v5, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lorg/catrobat/catroid/ui/adapter/UserListValuesAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 64
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 39
    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 47
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 48
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ListViewHolder;

    invoke-direct {v1, v0}, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ListViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method
