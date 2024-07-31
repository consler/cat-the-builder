.class public Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;
.super Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;
.source "UserDataRVAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/catrobat/catroid/formulaeditor/UserData;",
        ">",
        "Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public showSettings:Z


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

    .line 45
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;, "Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter<TT;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;-><init>(Ljava/util/List;)V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->showSettings:Z

    .line 46
    return-void
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 40
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;, "Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter<TT;>;"
    check-cast p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->onBindViewHolder(Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;I)V
    .locals 4
    .param p1, "holder"    # Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;
    .param p2, "position"    # I

    .line 56
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;, "Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter<TT;>;"
    invoke-super {p0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->onBindViewHolder(Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;I)V

    .line 58
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/formulaeditor/UserData;

    .line 59
    .local v0, "item":Lorg/catrobat/catroid/formulaeditor/UserData;
    move-object v1, p1

    check-cast v1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/VariableViewHolder;

    .line 60
    .local v1, "variableViewHolder":Lorg/catrobat/catroid/ui/recyclerview/viewholder/VariableViewHolder;
    iget-object v2, v1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/VariableViewHolder;->title:Landroid/widget/TextView;

    invoke-interface {v0}, Lorg/catrobat/catroid/formulaeditor/UserData;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v2, v1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/VariableViewHolder;->value:Landroid/widget/TextView;

    invoke-interface {v0}, Lorg/catrobat/catroid/formulaeditor/UserData;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/catrobat/catroid/utils/ShowTextUtils;->convertObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v2, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;->itemView:Landroid/view/View;

    const v3, 0x7f0a05a9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 63
    .local v2, "settings":Landroid/widget/ImageButton;
    if-eqz v2, :cond_0

    iget-boolean v3, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->showSettings:Z

    if-eqz v3, :cond_0

    .line 64
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 65
    :cond_0
    if-eqz v2, :cond_1

    iget-boolean v3, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->showSettings:Z

    if-nez v3, :cond_1

    .line 66
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 68
    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 40
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;, "Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter<TT;>;"
    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 50
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;, "Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter<TT;>;"
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 51
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/VariableViewHolder;

    invoke-direct {v1, v0}, Lorg/catrobat/catroid/ui/recyclerview/viewholder/VariableViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method
