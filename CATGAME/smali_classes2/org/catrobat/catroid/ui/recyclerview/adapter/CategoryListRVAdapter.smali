.class public Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoryListRVAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CategoryListRVAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoryListRVAdapter$OnItemClickListener;,
        Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoryListRVAdapter$CategoryListItem;,
        Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoryListRVAdapter$CategoryListItemType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lorg/catrobat/catroid/ui/recyclerview/viewholder/ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final COLLISION:I = 0x1

.field public static final DEFAULT:I = 0x0

.field public static final EV3:I = 0x3

.field public static final NXT:I = 0x2


# instance fields
.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoryListRVAdapter$CategoryListItem;",
            ">;"
        }
    .end annotation
.end field

.field private onItemClickListener:Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoryListRVAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoryListRVAdapter$CategoryListItem;",
            ">;)V"
        }
    .end annotation

    .line 75
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoryListRVAdapter$CategoryListItem;>;"
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 76
    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoryListRVAdapter;->items:Ljava/util/List;

    .line 77
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoryListRVAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .line 101
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoryListRVAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoryListRVAdapter$CategoryListItem;

    iget-object v0, v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoryListRVAdapter$CategoryListItem;->header:Ljava/lang/String;

    if-eqz v0, :cond_0

    const v0, 0x7f0d01ea

    goto :goto_0

    :cond_0
    const v0, 0x7f0d01e9

    :goto_0
    return v0
.end method

.method public synthetic lambda$onBindViewHolder$0$CategoryListRVAdapter(Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoryListRVAdapter$CategoryListItem;Landroid/view/View;)V
    .locals 1
    .param p1, "item"    # Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoryListRVAdapter$CategoryListItem;
    .param p2, "v"    # Landroid/view/View;

    .line 96
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoryListRVAdapter;->onItemClickListener:Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoryListRVAdapter$OnItemClickListener;

    invoke-interface {v0, p1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoryListRVAdapter$OnItemClickListener;->onItemClick(Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoryListRVAdapter$CategoryListItem;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 44
    check-cast p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoryListRVAdapter;->onBindViewHolder(Lorg/catrobat/catroid/ui/recyclerview/viewholder/ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/catrobat/catroid/ui/recyclerview/viewholder/ViewHolder;I)V
    .locals 3
    .param p1, "holder"    # Lorg/catrobat/catroid/ui/recyclerview/viewholder/ViewHolder;
    .param p2, "position"    # I

    .line 88
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoryListRVAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoryListRVAdapter$CategoryListItem;

    .line 90
    .local v0, "item":Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoryListRVAdapter$CategoryListItem;
    invoke-virtual {p1}, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ViewHolder;->getItemViewType()I

    move-result v1

    const v2, 0x7f0d01ea

    if-ne v1, v2, :cond_0

    .line 91
    iget-object v1, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f0a03ce

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 92
    .local v1, "headlineView":Landroid/widget/TextView;
    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoryListRVAdapter;->items:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoryListRVAdapter$CategoryListItem;

    iget-object v2, v2, Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoryListRVAdapter$CategoryListItem;->header:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    .end local v1    # "headlineView":Landroid/widget/TextView;
    :cond_0
    iget-object v1, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ViewHolder;->title:Landroid/widget/TextView;

    iget-object v2, v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoryListRVAdapter$CategoryListItem;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v1, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lorg/catrobat/catroid/ui/recyclerview/adapter/-$$Lambda$CategoryListRVAdapter$6m-G5MAENBVxOi9ZKBzdo3BFFxg;

    invoke-direct {v2, p0, v0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/-$$Lambda$CategoryListRVAdapter$6m-G5MAENBVxOi9ZKBzdo3BFFxg;-><init>(Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoryListRVAdapter;Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoryListRVAdapter$CategoryListItem;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 44
    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoryListRVAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/catrobat/catroid/ui/recyclerview/viewholder/ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/catrobat/catroid/ui/recyclerview/viewholder/ViewHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 82
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 83
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ViewHolder;

    invoke-direct {v1, v0}, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public setOnItemClickListener(Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoryListRVAdapter$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoryListRVAdapter$OnItemClickListener;

    .line 112
    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoryListRVAdapter;->onItemClickListener:Lorg/catrobat/catroid/ui/recyclerview/adapter/CategoryListRVAdapter$OnItemClickListener;

    .line 113
    return-void
.end method
