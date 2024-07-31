.class Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter$3;
.super Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;
.source "DataListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter<",
        "Lorg/catrobat/catroid/formulaeditor/UserVariable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;

    .line 116
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/UserVariable;>;"
    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter$3;->this$0:Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;

    invoke-direct {p0, p2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 116
    check-cast p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter$3;->onBindViewHolder(Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;I)V
    .locals 2
    .param p1, "holder"    # Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;
    .param p2, "position"    # I

    .line 119
    invoke-super {p0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->onBindViewHolder(Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;I)V

    .line 120
    if-nez p2, :cond_0

    .line 121
    iget-object v0, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a03ce

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f120535

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 123
    :cond_0
    return-void
.end method

.method protected onCheckBoxClick(I)V
    .locals 2
    .param p1, "position"    # I

    .line 127
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter$3;->this$0:Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;

    const/4 v1, 0x3

    invoke-static {v0, p1, v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;->access$000(Lorg/catrobat/catroid/ui/recyclerview/adapter/DataListAdapter;II)I

    move-result v0

    invoke-super {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/UserDataRVAdapter;->onCheckBoxClick(I)V

    .line 128
    return-void
.end method
