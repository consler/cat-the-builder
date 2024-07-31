.class public final Lorg/catrobat/catroid/ui/recyclerview/adapter/LookAdapter;
.super Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;
.source "LookAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter<",
        "Lorg/catrobat/catroid/common/LookData;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001B\u0017\u0012\u0010\u0010\u0003\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\u0005J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "Lorg/catrobat/catroid/ui/recyclerview/adapter/LookAdapter;",
        "Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;",
        "Lorg/catrobat/catroid/common/LookData;",
        "items",
        "",
        "(Ljava/util/List;)V",
        "onBindViewHolder",
        "",
        "holder",
        "Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;",
        "position",
        "",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .param p1, "items"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/catrobat/catroid/common/LookData;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;I)V
    .locals 13
    .param p1, "holder"    # Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;
    .param p2, "position"    # I

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/LookAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/common/LookData;

    .line 35
    .local v0, "item":Lorg/catrobat/catroid/common/LookData;
    iget-object v1, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;->title:Landroid/widget/TextView;

    const-string v2, "holder.title"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/catrobat/catroid/common/LookData;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-object v1, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;->image:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/catrobat/catroid/common/LookData;->getThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 37
    iget-boolean v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/LookAdapter;->showDetails:Z

    const-string v3, "holder.details"

    if-eqz v1, :cond_6

    .line 38
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/catrobat/catroid/common/LookData;->getMeasure()[I

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, v2

    .line 39
    .local v1, "measure":[I
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    aget v6, v1, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_3

    :cond_3
    move-object v6, v2

    :goto_3
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " x "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    if-eqz v1, :cond_4

    aget v7, v1, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_4

    :cond_4
    move-object v7, v2

    :goto_4
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 40
    .local v4, "measureString":Ljava/lang/String;
    iget-object v7, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;->itemView:Landroid/view/View;

    const-string v8, "holder.itemView"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 41
    .local v7, "context":Landroid/content/Context;
    iget-object v8, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;->details:Landroid/widget/TextView;

    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v9, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 42
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    .line 43
    const v10, 0x7f120538

    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "context.getString(R.string.look_details)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x2

    new-array v12, v11, [Ljava/lang/Object;

    .line 44
    aput-object v4, v12, v5

    .line 45
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/catrobat/catroid/common/LookData;->getFile()Ljava/io/File;

    move-result-object v2

    :cond_5
    invoke-static {v2, v7}, Lorg/catrobat/catroid/utils/FileMetaDataExtractor;->getSizeAsString(Ljava/io/File;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v12, v6

    .line 41
    invoke-static {v12, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v9, v10, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "java.lang.String.format(locale, format, *args)"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v2, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;->details:Landroid/widget/TextView;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .end local v1    # "measure":[I
    .end local v4    # "measureString":Ljava/lang/String;
    .end local v7    # "context":Landroid/content/Context;
    goto :goto_5

    .line 49
    :cond_6
    iget-object v1, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;->details:Landroid/widget/TextView;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 50
    :goto_5
    nop

    .line 51
    return-void
.end method
