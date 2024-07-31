.class public abstract Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "RVAdapter.java"

# interfaces
.implements Lorg/catrobat/catroid/ui/recyclerview/adapter/draganddrop/TouchHelperAdapterInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$OnItemClickListener;,
        Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$SelectionListener;,
        Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$SelectionType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;",
        ">;",
        "Lorg/catrobat/catroid/ui/recyclerview/adapter/draganddrop/TouchHelperAdapterInterface;"
    }
.end annotation


# static fields
.field public static final MULTIPLE:I = 0x2

.field public static final PAIRS:I = 0x1

.field public static final SINGLE:I


# instance fields
.field protected items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private onItemClickListener:Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$OnItemClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$OnItemClickListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private selectionListener:Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$SelectionListener;

.field selectionManager:Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;

.field public selectionMode:I

.field public showCheckBoxes:Z

.field public showRipples:Z

.field public showSettings:Z


# direct methods
.method protected constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 70
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;, "Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter<TT;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->showCheckBoxes:Z

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->showRipples:Z

    .line 61
    iput-boolean v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->showSettings:Z

    .line 63
    const/4 v0, 0x2

    iput v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->selectionMode:I

    .line 66
    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;

    invoke-direct {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->selectionManager:Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;

    .line 71
    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->items:Ljava/util/List;

    .line 72
    return-void
.end method

.method static synthetic lambda$onBindViewHolder$4(Landroid/view/View;)Z
    .locals 1
    .param p0, "v"    # Landroid/view/View;

    .line 111
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)Z
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)Z"
        }
    .end annotation

    .line 152
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;, "Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter<TT;>;"
    .local p2, "item":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 153
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->notifyItemInserted(I)V

    .line 154
    const/4 v0, 0x1

    return v0
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 158
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;, "Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->notifyItemInserted(I)V

    .line 160
    const/4 v0, 0x1

    return v0

    .line 162
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public clearSelection()V
    .locals 1

    .line 239
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;, "Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter<TT;>;"
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->selectionManager:Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;->clearSelection()V

    .line 240
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->notifyDataSetChanged()V

    .line 241
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 245
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;, "Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter<TT;>;"
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 174
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;, "Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter<TT;>;"
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->items:Ljava/util/List;

    return-object v0
.end method

.method public getSelectableItemCount()I
    .locals 1

    .line 249
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;, "Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter<TT;>;"
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getSelectedItemCount()I
    .locals 1

    .line 253
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;, "Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter<TT;>;"
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->selectionManager:Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;->getSelectedPositions()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->size()I

    move-result v0

    return v0
.end method

.method public getSelectedItems()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 198
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;, "Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v0, "selectedItems":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->selectionManager:Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;

    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;->getSelectedPositions()Ljava/util/SortedSet;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 200
    .local v2, "position":I
    iget-object v3, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->items:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    .end local v2    # "position":I
    goto :goto_0

    .line 202
    :cond_0
    return-object v0
.end method

.method public synthetic lambda$onBindViewHolder$0$RVAdapter(Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;Landroid/view/View;)V
    .locals 1
    .param p1, "holder"    # Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;
    .param p2, "v"    # Landroid/view/View;

    .line 92
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;, "Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter<TT;>;"
    invoke-virtual {p1}, Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->onCheckBoxClick(I)V

    return-void
.end method

.method public synthetic lambda$onBindViewHolder$1$RVAdapter(Ljava/lang/Object;Landroid/view/View;)V
    .locals 1
    .param p1, "item"    # Ljava/lang/Object;
    .param p2, "v"    # Landroid/view/View;

    .line 94
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;, "Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter<TT;>;"
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->onItemClickListener:Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$OnItemClickListener;

    invoke-interface {v0, p1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$OnItemClickListener;->onItemClick(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$onBindViewHolder$2$RVAdapter(Ljava/lang/Object;Landroid/view/View;)V
    .locals 1
    .param p1, "item"    # Ljava/lang/Object;
    .param p2, "v"    # Landroid/view/View;

    .line 96
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;, "Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter<TT;>;"
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->onItemClickListener:Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$OnItemClickListener;

    invoke-interface {v0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$OnItemClickListener;->onSettingsClick(Ljava/lang/Object;Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$onBindViewHolder$3$RVAdapter(Ljava/lang/Object;Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;Landroid/view/View;)Z
    .locals 1
    .param p1, "item"    # Ljava/lang/Object;
    .param p2, "holder"    # Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;
    .param p3, "v"    # Landroid/view/View;

    .line 106
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;, "Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter<TT;>;"
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->onItemClickListener:Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$OnItemClickListener;

    invoke-interface {v0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$OnItemClickListener;->onItemLongClick(Ljava/lang/Object;Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;)V

    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 47
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;, "Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter<TT;>;"
    check-cast p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->onBindViewHolder(Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;I)V
    .locals 6
    .param p1, "holder"    # Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;
    .param p2, "position"    # I

    .line 90
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;, "Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter<TT;>;"
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 92
    .local v0, "item":Ljava/lang/Object;, "TT;"
    iget-object v1, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;->checkBox:Landroid/widget/CheckBox;

    new-instance v2, Lorg/catrobat/catroid/ui/recyclerview/adapter/-$$Lambda$RVAdapter$hj1zPat5aeVqKvpzJneuGTTOGI0;

    invoke-direct {v2, p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/-$$Lambda$RVAdapter$hj1zPat5aeVqKvpzJneuGTTOGI0;-><init>(Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v1, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lorg/catrobat/catroid/ui/recyclerview/adapter/-$$Lambda$RVAdapter$cAaYsYc5N7Tcs9CeOnFX-WeZFjo;

    invoke-direct {v2, p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/-$$Lambda$RVAdapter$cAaYsYc5N7Tcs9CeOnFX-WeZFjo;-><init>(Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v1, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;->settings:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;->settings:Landroid/widget/ImageButton;

    new-instance v2, Lorg/catrobat/catroid/ui/recyclerview/adapter/-$$Lambda$RVAdapter$lDAIHtYbNCK7C0dOcBvqVks9Ql8;

    invoke-direct {v2, p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/-$$Lambda$RVAdapter$lDAIHtYbNCK7C0dOcBvqVks9Ql8;-><init>(Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    :cond_0
    iget-object v1, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;->checkBox:Landroid/widget/CheckBox;

    iget-boolean v2, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->showCheckBoxes:Z

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 100
    iget-object v1, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;->checkBox:Landroid/widget/CheckBox;

    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->selectionManager:Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;

    invoke-virtual {v2, p2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;->isPositionSelected(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 102
    iget-object v1, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f0a03d8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 103
    .local v1, "ripples":Landroid/widget/ImageView;
    if-eqz v1, :cond_2

    iget-boolean v2, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->showRipples:Z

    if-eqz v2, :cond_2

    .line 104
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 105
    iget-object v2, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;->itemView:Landroid/view/View;

    new-instance v5, Lorg/catrobat/catroid/ui/recyclerview/adapter/-$$Lambda$RVAdapter$zcwL9-3lvksQhvxznkLWG9uq-Uc;

    invoke-direct {v5, p0, v0, p1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/-$$Lambda$RVAdapter$zcwL9-3lvksQhvxznkLWG9uq-Uc;-><init>(Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;Ljava/lang/Object;Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_1

    .line 109
    :cond_2
    if-eqz v1, :cond_3

    iget-boolean v2, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->showRipples:Z

    if-nez v2, :cond_3

    .line 110
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 111
    iget-object v2, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;->itemView:Landroid/view/View;

    sget-object v5, Lorg/catrobat/catroid/ui/recyclerview/adapter/-$$Lambda$RVAdapter$zcG2w9r7CLEnYJabX7QiuCOUmQw;->INSTANCE:Lorg/catrobat/catroid/ui/recyclerview/adapter/-$$Lambda$RVAdapter$zcG2w9r7CLEnYJabX7QiuCOUmQw;

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 114
    :cond_3
    :goto_1
    iget-object v2, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;->itemView:Landroid/view/View;

    const v5, 0x7f0a05a9

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 115
    .local v2, "settings":Landroid/widget/ImageButton;
    if-eqz v2, :cond_4

    iget-boolean v5, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->showSettings:Z

    if-eqz v5, :cond_4

    .line 116
    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_2

    .line 117
    :cond_4
    if-eqz v2, :cond_5

    iget-boolean v3, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->showSettings:Z

    if-nez v3, :cond_5

    .line 118
    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 120
    :cond_5
    :goto_2
    return-void
.end method

.method protected onCheckBoxClick(I)V
    .locals 5
    .param p1, "position"    # I

    .line 123
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;, "Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter<TT;>;"
    iget v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->selectionMode:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 145
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->selectionManager:Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;->toggleSelection(I)V

    goto :goto_1

    .line 136
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->selectionManager:Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;->getSelectedPositions()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    .line 137
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->selectionManager:Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;->toggleSelection(I)V

    goto :goto_1

    .line 139
    :cond_1
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->selectionManager:Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;

    invoke-virtual {v0, v1, p1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;->setSelectionTo(ZI)V

    .line 140
    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->notifyItemChanged(I)V

    .line 142
    goto :goto_1

    .line 125
    :cond_2
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->selectionManager:Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;->isPositionSelected(I)Z

    move-result v0

    .line 127
    .local v0, "currentState":Z
    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->selectionManager:Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;

    invoke-virtual {v2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;->getSelectedPositions()Ljava/util/SortedSet;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 128
    .local v3, "i":I
    iget-object v4, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->selectionManager:Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;

    invoke-virtual {v4, v1, v3}, Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;->setSelectionTo(ZI)V

    .line 129
    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->notifyItemChanged(I)V

    .line 130
    .end local v3    # "i":I
    goto :goto_0

    .line 132
    :cond_3
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->selectionManager:Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2, p1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;->setSelectionTo(ZI)V

    .line 133
    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->notifyItemChanged(I)V

    .line 134
    nop

    .line 148
    .end local v0    # "currentState":Z
    :goto_1
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->selectionListener:Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$SelectionListener;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->selectionManager:Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;

    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;->getSelectedPositions()Ljava/util/SortedSet;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/SortedSet;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$SelectionListener;->onSelectionChanged(I)V

    .line 149
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 47
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;, "Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter<TT;>;"
    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 84
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;, "Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter<TT;>;"
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d01f2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 85
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;

    invoke-direct {v1, v0}, Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public onItemMove(II)Z
    .locals 3
    .param p1, "sourcePosition"    # I
    .param p2, "targetPosition"    # I

    .line 185
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;, "Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter<TT;>;"
    sub-int v0, p1, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 186
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->items:Ljava/util/List;

    invoke-static {v0, p1, p2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    goto :goto_0

    .line 188
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 189
    .local v0, "movedItem":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->items:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 190
    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->items:Ljava/util/List;

    invoke-interface {v2, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 192
    .end local v0    # "movedItem":Ljava/lang/Object;, "TT;"
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->notifyItemMoved(II)V

    .line 193
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->selectionManager:Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;

    invoke-virtual {v0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;->updateSelection(II)V

    .line 194
    return v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 166
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;, "Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->notifyItemRemoved(I)V

    .line 168
    const/4 v0, 0x1

    return v0

    .line 170
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public selectAll()V
    .locals 5

    .line 232
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;, "Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter<TT;>;"
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 233
    .local v1, "item":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->selectionManager:Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->items:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;->setSelectionTo(ZI)V

    .line 234
    .end local v1    # "item":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 235
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->notifyDataSetChanged()V

    .line 236
    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 178
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;, "Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter<TT;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 179
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 180
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->notifyDataSetChanged()V

    .line 181
    return-void
.end method

.method public setOnItemClickListener(Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$OnItemClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$OnItemClickListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 79
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;, "Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter<TT;>;"
    .local p1, "onItemClickListener":Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$OnItemClickListener;, "Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$OnItemClickListener<TT;>;"
    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->onItemClickListener:Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$OnItemClickListener;

    .line 80
    return-void
.end method

.method public setSelection(Ljava/lang/Object;Z)Z
    .locals 2
    .param p2, "selection"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)Z"
        }
    .end annotation

    .line 206
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;, "Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 207
    const/4 v0, 0x0

    return v0

    .line 209
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->selectionManager:Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->items:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;->setSelectionTo(ZI)V

    .line 210
    const/4 v0, 0x1

    return v0
.end method

.method public setSelectionListener(Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$SelectionListener;)V
    .locals 0
    .param p1, "selectionListener"    # Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$SelectionListener;

    .line 75
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;, "Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter<TT;>;"
    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->selectionListener:Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$SelectionListener;

    .line 76
    return-void
.end method

.method public toggleSelection()V
    .locals 2

    .line 223
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;, "Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter<TT;>;"
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->selectionManager:Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;

    invoke-virtual {v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;->getSelectedPositions()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->size()I

    move-result v0

    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->getSelectableItemCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 224
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->clearSelection()V

    goto :goto_0

    .line 226
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->selectAll()V

    .line 228
    :goto_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->selectionListener:Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$SelectionListener;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->selectionManager:Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;

    invoke-virtual {v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;->getSelectedPositions()Ljava/util/SortedSet;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/SortedSet;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter$SelectionListener;->onSelectionChanged(I)V

    .line 229
    return-void
.end method

.method public toggleSelection(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 214
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;, "Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 215
    const/4 v0, 0x0

    return v0

    .line 217
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->selectionManager:Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->items:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;->toggleSelection(I)V

    .line 218
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/RVAdapter;->notifyItemChanged(I)V

    .line 219
    const/4 v0, 0x1

    return v0
.end method
