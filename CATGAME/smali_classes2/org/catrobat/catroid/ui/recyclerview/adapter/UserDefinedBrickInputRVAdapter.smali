.class public Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDefinedBrickInputRVAdapter;
.super Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;
.source "UserDefinedBrickInputRVAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter<",
        "Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;",
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
            "Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;",
            ">;)V"
        }
    .end annotation

    .line 44
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;>;"
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;-><init>(Ljava/util/List;)V

    .line 45
    return-void
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 41
    check-cast p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDefinedBrickInputRVAdapter;->onBindViewHolder(Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;I)V
    .locals 5
    .param p1, "holder"    # Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;
    .param p2, "position"    # I

    .line 55
    invoke-super {p0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->onBindViewHolder(Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;I)V

    .line 56
    if-nez p2, :cond_0

    .line 57
    iget-object v0, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a03ce

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10002d

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDefinedBrickInputRVAdapter;->getItemCount()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDefinedBrickInputRVAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;

    .line 61
    .local v0, "item":Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;
    move-object v1, p1

    check-cast v1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/VariableViewHolder;

    .line 62
    .local v1, "variableViewHolder":Lorg/catrobat/catroid/ui/recyclerview/viewholder/VariableViewHolder;
    iget-object v2, v1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/VariableViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    new-instance v2, Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;

    .line 65
    invoke-static {}, Lorg/catrobat/catroid/CatroidApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;-><init>(Landroid/content/Context;)V

    .line 67
    .local v2, "stringProvider":Lorg/catrobat/catroid/utils/ShowTextUtils$AndroidStringProvider;
    invoke-virtual {v0}, Lorg/catrobat/catroid/userbrick/UserDefinedBrickInput;->getValue()Lorg/catrobat/catroid/formulaeditor/Formula;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lorg/catrobat/catroid/formulaeditor/Formula;->getUserFriendlyString(Lorg/catrobat/catroid/formulaeditor/Formula$StringProvider;Lorg/catrobat/catroid/content/Scope;)Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, "result":Ljava/lang/String;
    invoke-static {v3}, Lorg/catrobat/catroid/utils/ShowTextUtils;->convertStringToMetricRepresentation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 69
    iget-object v4, v1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/VariableViewHolder;->value:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDefinedBrickInputRVAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 49
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 50
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/VariableViewHolder;

    invoke-direct {v1, v0}, Lorg/catrobat/catroid/ui/recyclerview/viewholder/VariableViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method
