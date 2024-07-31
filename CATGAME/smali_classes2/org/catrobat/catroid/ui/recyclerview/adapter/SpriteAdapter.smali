.class public Lorg/catrobat/catroid/ui/recyclerview/adapter/SpriteAdapter;
.super Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;
.source "SpriteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter<",
        "Lorg/catrobat/catroid/content/Sprite;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/content/Sprite;",
            ">;)V"
        }
    .end annotation

    .line 40
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/Sprite;>;"
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;-><init>(Ljava/util/List;)V

    .line 41
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;I)V
    .locals 10
    .param p1, "holder"    # Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;
    .param p2, "position"    # I

    .line 45
    iget-object v0, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 47
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/SpriteAdapter;->items:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/Sprite;

    .line 48
    .local v1, "item":Lorg/catrobat/catroid/content/Sprite;
    const/4 v2, 0x0

    .line 50
    .local v2, "lookData":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 51
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/common/LookData;

    invoke-virtual {v3}, Lorg/catrobat/catroid/common/LookData;->getThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 54
    :cond_0
    iget-object v3, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Sprite;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v3, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 57
    iget-boolean v3, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/SpriteAdapter;->showDetails:Z

    if-eqz v3, :cond_1

    .line 58
    iget-object v3, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;->details:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    const v6, 0x7f12075d

    .line 59
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    .line 60
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Sprite;->getNumberOfScripts()I

    move-result v8

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Sprite;->getNumberOfBricks()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    const/4 v8, 0x1

    .line 61
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    .line 62
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Sprite;->getSoundList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 58
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v3, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;->details:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 65
    :cond_1
    iget-object v3, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;->details:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    :goto_0
    return-void
.end method
