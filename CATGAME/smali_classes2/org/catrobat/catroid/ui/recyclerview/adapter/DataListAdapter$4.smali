.class Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter$4;
.super Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;
.source "DataListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;

    .line 132
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/UserList;>;"
    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter$4;->this$0:Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;

    invoke-direct {p0, p2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 132
    check-cast p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter$4;->onBindViewHolder(Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;I)V
    .locals 2
    .param p1, "holder"    # Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;
    .param p2, "position"    # I

    .line 135
    invoke-super {p0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;->onBindViewHolder(Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;I)V

    .line 136
    if-nez p2, :cond_0

    .line 137
    iget-object v0, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a03ce

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f1204bf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 139
    :cond_0
    return-void
.end method

.method protected onCheckBoxClick(I)V
    .locals 2
    .param p1, "position"    # I

    .line 143
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter$4;->this$0:Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;

    const/4 v1, 0x4

    invoke-static {v0, p1, v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->access$000(Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;II)I

    move-result v0

    invoke-super {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ListRVAdapter;->onCheckBoxClick(I)V

    .line 144
    return-void
.end method
