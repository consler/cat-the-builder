.class public Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchJobAdapter;
.super Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;
.source "ScratchJobAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter<",
        "Lorg/catrobat/catroid/scratchconverter/protocol/Job;",
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
            "Lorg/catrobat/catroid/scratchconverter/protocol/Job;",
            ">;)V"
        }
    .end annotation

    .line 42
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/scratchconverter/protocol/Job;>;"
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;-><init>(Ljava/util/List;)V

    .line 43
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;I)V
    .locals 9
    .param p1, "holder"    # Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;
    .param p2, "position"    # I

    .line 47
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchJobAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    .line 49
    .local v0, "item":Lorg/catrobat/catroid/scratchconverter/protocol/Job;
    iget-object v1, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 50
    .local v1, "context":Landroid/content/Context;
    iget-object v2, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    invoke-virtual {v0}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->getImage()Lcom/google/android/gms/common/images/WebImage;

    move-result-object v2

    const v3, 0x7f07019a

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->getImage()Lcom/google/android/gms/common/images/WebImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/images/WebImage;->getUrl()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 53
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 54
    .local v2, "height":I
    invoke-virtual {v0}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->getImage()Lcom/google/android/gms/common/images/WebImage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/common/images/WebImage;->getUrl()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    .line 55
    .local v5, "originalImageURL":Ljava/lang/String;
    invoke-static {v5, v2}, Lorg/catrobat/catroid/utils/Utils;->changeSizeOfScratchImageURL(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 56
    .local v6, "thumbnailImageURL":Ljava/lang/String;
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v7

    iget-object v8, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v7, v8}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 57
    .end local v2    # "height":I
    .end local v5    # "originalImageURL":Ljava/lang/String;
    .end local v6    # "thumbnailImageURL":Ljava/lang/String;
    goto :goto_0

    .line 58
    :cond_0
    iget-object v2, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 61
    :goto_0
    sget-object v2, Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchJobAdapter$1;->$SwitchMap$org$catrobat$catroid$scratchconverter$protocol$Job$State:[I

    invoke-virtual {v0}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->getState()Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    move-result-object v5

    invoke-virtual {v5}, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;->ordinal()I

    move-result v5

    aget v2, v2, v5

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    .line 92
    :pswitch_0
    iget-object v2, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;->details:Landroid/widget/TextView;

    const v5, 0x7f12076e

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 93
    iget-object v2, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;->details:Landroid/widget/TextView;

    const/high16 v5, -0x10000

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 76
    :pswitch_1
    sget-object v2, Lorg/catrobat/catroid/ui/recyclerview/adapter/ScratchJobAdapter$1;->$SwitchMap$org$catrobat$catroid$scratchconverter$protocol$Job$DownloadState:[I

    invoke-virtual {v0}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->getDownloadState()Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;

    move-result-object v5

    invoke-virtual {v5}, Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;->ordinal()I

    move-result v5

    aget v2, v2, v5

    const/4 v5, 0x1

    if-eq v2, v5, :cond_3

    const/4 v5, 0x2

    if-eq v2, v5, :cond_2

    const/4 v5, 0x3

    if-eq v2, v5, :cond_1

    .line 87
    const v2, 0x7f12076f

    .local v2, "messageID":I
    goto :goto_1

    .line 84
    .end local v2    # "messageID":I
    :cond_1
    const v2, 0x7f120770

    .line 85
    .restart local v2    # "messageID":I
    goto :goto_1

    .line 81
    .end local v2    # "messageID":I
    :cond_2
    const v2, 0x7f120771

    .line 82
    .restart local v2    # "messageID":I
    goto :goto_1

    .line 78
    .end local v2    # "messageID":I
    :cond_3
    const v2, 0x7f120772

    .line 79
    .restart local v2    # "messageID":I
    nop

    .line 89
    :goto_1
    iget-object v5, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;->details:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    goto :goto_2

    .line 72
    .end local v2    # "messageID":I
    :pswitch_2
    iget-object v2, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;->details:Landroid/widget/TextView;

    const v5, 0x7f120774

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    goto :goto_2

    .line 69
    :pswitch_3
    iget-object v2, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;->details:Landroid/widget/TextView;

    const v5, 0x7f120775

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    goto :goto_2

    .line 66
    :pswitch_4
    iget-object v2, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;->details:Landroid/widget/TextView;

    const v5, 0x7f120773

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    goto :goto_2

    .line 63
    :pswitch_5
    iget-object v2, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;->details:Landroid/widget/TextView;

    const-string v5, "-"

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    nop

    .line 97
    :goto_2
    invoke-virtual {v0}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->getImage()Lcom/google/android/gms/common/images/WebImage;

    move-result-object v2

    .line 98
    .local v2, "httpImageMetadata":Lcom/google/android/gms/common/images/WebImage;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/google/android/gms/common/images/WebImage;->getUrl()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 99
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 100
    .local v3, "height":I
    invoke-virtual {v2}, Lcom/google/android/gms/common/images/WebImage;->getUrl()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 102
    .local v4, "originalImageURL":Ljava/lang/String;
    invoke-static {v4, v3}, Lorg/catrobat/catroid/utils/Utils;->changeSizeOfScratchImageURL(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 103
    .local v5, "thumbnailImageURL":Ljava/lang/String;
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v6

    iget-object v7, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v6, v7}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 104
    .end local v3    # "height":I
    .end local v4    # "originalImageURL":Ljava/lang/String;
    .end local v5    # "thumbnailImageURL":Ljava/lang/String;
    goto :goto_3

    .line 105
    :cond_4
    iget-object v3, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 107
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
