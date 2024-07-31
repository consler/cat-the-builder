.class public Lorg/catrobat/catroid/ui/recyclerview/adapter/MultiViewSpriteAdapter;
.super Lorg/catrobat/catroid/ui/recyclerview/adapter/SpriteAdapter;
.source "MultiViewSpriteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/ui/recyclerview/adapter/MultiViewSpriteAdapter$ViewType;
    }
.end annotation


# static fields
.field private static final BACKGROUND:I = 0x0

.field private static final SPRITE_GROUP:I = 0x2

.field private static final SPRITE_GROUP_ITEM:I = 0x3

.field private static final SPRITE_SINGLE:I = 0x1

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private backgroundView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-class v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/MultiViewSpriteAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/MultiViewSpriteAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

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

    .line 65
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/Sprite;>;"
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/SpriteAdapter;-><init>(Ljava/util/List;)V

    .line 66
    return-void
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .line 143
    if-nez p1, :cond_0

    .line 144
    const/4 v0, 0x0

    return v0

    .line 146
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/MultiViewSpriteAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/catrobat/catroid/content/GroupSprite;

    if-eqz v0, :cond_1

    .line 147
    const/4 v0, 0x2

    return v0

    .line 149
    :cond_1
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/MultiViewSpriteAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/catrobat/catroid/content/GroupItemSprite;

    if-eqz v0, :cond_2

    .line 150
    const/4 v0, 0x3

    return v0

    .line 152
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public getSelectableItemCount()I
    .locals 5

    .line 219
    const/4 v0, 0x1

    .line 220
    .local v0, "backgroundCount":I
    const/4 v1, 0x0

    .line 222
    .local v1, "groupSpriteCount":I
    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/MultiViewSpriteAdapter;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/content/Sprite;

    .line 223
    .local v3, "item":Lorg/catrobat/catroid/content/Sprite;
    instance-of v4, v3, Lorg/catrobat/catroid/content/GroupSprite;

    if-eqz v4, :cond_0

    .line 224
    add-int/lit8 v1, v1, 0x1

    .line 226
    .end local v3    # "item":Lorg/catrobat/catroid/content/Sprite;
    :cond_0
    goto :goto_0

    .line 228
    :cond_1
    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/MultiViewSpriteAdapter;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    sub-int/2addr v2, v1

    return v2
.end method

.method public onBindViewHolder(Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;I)V
    .locals 11
    .param p1, "holder"    # Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;
    .param p2, "position"    # I

    .line 92
    iget-object v0, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 94
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/MultiViewSpriteAdapter;->items:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/Sprite;

    .line 95
    .local v1, "item":Lorg/catrobat/catroid/content/Sprite;
    iget-object v2, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Sprite;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    invoke-virtual {p1}, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;->getItemViewType()I

    move-result v2

    const/4 v3, 0x2

    const/16 v4, 0x8

    if-ne v2, v3, :cond_1

    .line 98
    move-object v2, v1

    check-cast v2, Lorg/catrobat/catroid/content/GroupSprite;

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/GroupSprite;->isCollapsed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08020b

    .line 100
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 99
    invoke-static {v2, v3, v5}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08020c

    .line 102
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 101
    invoke-static {v2, v3, v5}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_0
    nop

    .line 103
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v3, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    iget-object v3, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 105
    return-void

    .line 108
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {p1}, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;->getItemViewType()I

    move-result v2

    if-nez v2, :cond_2

    .line 109
    iget-object v2, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;->itemView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 110
    iget-object v2, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 113
    :cond_2
    invoke-virtual {p1}, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;->getItemViewType()I

    move-result v2

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-ne v2, v5, :cond_3

    .line 114
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v2, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 116
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v7, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v7, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    move-object v7, v1

    check-cast v7, Lorg/catrobat/catroid/content/GroupItemSprite;

    invoke-virtual {v7}, Lorg/catrobat/catroid/content/GroupItemSprite;->isCollapsed()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 118
    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 119
    iget-object v7, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v7, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    .end local v2    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    const/4 v2, 0x0

    .line 124
    .local v2, "lookData":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 125
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/catrobat/catroid/common/LookData;

    invoke-virtual {v7}, Lorg/catrobat/catroid/common/LookData;->getThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 127
    :cond_4
    iget-object v7, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 129
    iget-boolean v7, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/MultiViewSpriteAdapter;->showDetails:Z

    if-eqz v7, :cond_5

    .line 130
    iget-object v4, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;->details:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    const v8, 0x7f12075d

    .line 131
    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v5, v5, [Ljava/lang/Object;

    .line 132
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Sprite;->getNumberOfScripts()I

    move-result v9

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Sprite;->getNumberOfBricks()I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v6

    const/4 v9, 0x1

    .line 133
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v5, v9

    .line 134
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Sprite;->getSoundList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v3

    .line 130
    invoke-static {v7, v8, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v3, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;->details:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 137
    :cond_5
    iget-object v3, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;->details:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    :goto_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 51
    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/MultiViewSpriteAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/catrobat/catroid/ui/recyclerview/viewholder/CheckableViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 71
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 72
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    if-eqz p2, :cond_3

    const/4 v2, 0x1

    if-eq p2, v2, :cond_2

    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    const/4 v2, 0x3

    if-ne p2, v2, :cond_0

    .line 83
    const v2, 0x7f0d01ef

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 84
    .local v1, "view":Landroid/view/View;
    new-instance v2, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;

    invoke-direct {v2, v1}, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;-><init>(Landroid/view/View;)V

    return-object v2

    .line 86
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/catrobat/catroid/ui/recyclerview/adapter/MultiViewSpriteAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": viewType was not defined correctly."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 80
    :cond_1
    const v2, 0x7f0d01ee

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 81
    .restart local v1    # "view":Landroid/view/View;
    new-instance v2, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;

    invoke-direct {v2, v1}, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;-><init>(Landroid/view/View;)V

    return-object v2

    .line 77
    .end local v1    # "view":Landroid/view/View;
    :cond_2
    const v2, 0x7f0d01f2

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 78
    .restart local v1    # "view":Landroid/view/View;
    new-instance v2, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;

    invoke-direct {v2, v1}, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;-><init>(Landroid/view/View;)V

    return-object v2

    .line 74
    .end local v1    # "view":Landroid/view/View;
    :cond_3
    const v2, 0x7f0d01e8

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/MultiViewSpriteAdapter;->backgroundView:Landroid/view/View;

    .line 75
    new-instance v2, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;

    invoke-direct {v2, v1}, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;-><init>(Landroid/view/View;)V

    return-object v2
.end method

.method public onItemMove(II)Z
    .locals 5
    .param p1, "sourcePosition"    # I
    .param p2, "targetPosition"    # I

    .line 157
    const/4 v0, 0x1

    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto :goto_1

    .line 161
    :cond_0
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/MultiViewSpriteAdapter;->items:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/Sprite;

    .line 162
    .local v1, "fromItem":Lorg/catrobat/catroid/content/Sprite;
    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/MultiViewSpriteAdapter;->items:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/content/Sprite;

    .line 164
    .local v2, "toItem":Lorg/catrobat/catroid/content/Sprite;
    instance-of v3, v1, Lorg/catrobat/catroid/content/GroupSprite;

    if-eqz v3, :cond_1

    .line 165
    return v0

    .line 168
    :cond_1
    instance-of v3, v2, Lorg/catrobat/catroid/content/GroupSprite;

    if-eqz v3, :cond_3

    .line 169
    move-object v3, v2

    check-cast v3, Lorg/catrobat/catroid/content/GroupSprite;

    .line 170
    .local v3, "groupItem":Lorg/catrobat/catroid/content/GroupSprite;
    if-le p2, p1, :cond_2

    .line 171
    invoke-virtual {v3}, Lorg/catrobat/catroid/content/GroupSprite;->getNumberOfItems()I

    move-result v4

    add-int/2addr p2, v4

    .line 172
    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/content/Sprite;->setConvertToGroupItemSprite(Z)V

    goto :goto_0

    .line 174
    :cond_2
    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/content/Sprite;->setConvertToSprite(Z)V

    .line 176
    :goto_0
    invoke-super {p0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/SpriteAdapter;->onItemMove(II)Z

    move-result v0

    return v0

    .line 179
    .end local v3    # "groupItem":Lorg/catrobat/catroid/content/GroupSprite;
    :cond_3
    instance-of v3, v1, Lorg/catrobat/catroid/content/GroupItemSprite;

    if-nez v3, :cond_4

    instance-of v3, v2, Lorg/catrobat/catroid/content/GroupItemSprite;

    if-eqz v3, :cond_4

    .line 180
    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/content/Sprite;->setConvertToGroupItemSprite(Z)V

    .line 181
    invoke-super {p0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/SpriteAdapter;->onItemMove(II)Z

    move-result v0

    return v0

    .line 184
    :cond_4
    instance-of v3, v1, Lorg/catrobat/catroid/content/GroupItemSprite;

    if-eqz v3, :cond_5

    instance-of v3, v2, Lorg/catrobat/catroid/content/GroupItemSprite;

    if-nez v3, :cond_5

    .line 185
    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/content/Sprite;->setConvertToSprite(Z)V

    .line 186
    invoke-super {p0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/SpriteAdapter;->onItemMove(II)Z

    move-result v0

    return v0

    .line 189
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/content/Sprite;->setConvertToGroupItemSprite(Z)V

    .line 190
    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/content/Sprite;->setConvertToSprite(Z)V

    .line 191
    invoke-super {p0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/SpriteAdapter;->onItemMove(II)Z

    move-result v0

    return v0

    .line 158
    .end local v1    # "fromItem":Lorg/catrobat/catroid/content/Sprite;
    .end local v2    # "toItem":Lorg/catrobat/catroid/content/Sprite;
    :cond_6
    :goto_1
    return v0
.end method

.method public selectAll()V
    .locals 6

    .line 206
    const/4 v0, 0x0

    .line 208
    .local v0, "backgroundIndex":I
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/MultiViewSpriteAdapter;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/content/Sprite;

    .line 209
    .local v2, "item":Lorg/catrobat/catroid/content/Sprite;
    iget-object v3, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/MultiViewSpriteAdapter;->items:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v0, :cond_0

    instance-of v3, v2, Lorg/catrobat/catroid/content/GroupSprite;

    if-eqz v3, :cond_1

    .line 210
    goto :goto_0

    .line 212
    :cond_1
    iget-object v3, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/MultiViewSpriteAdapter;->selectionManager:Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;

    const/4 v4, 0x1

    iget-object v5, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/MultiViewSpriteAdapter;->items:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/catrobat/catroid/ui/recyclerview/adapter/multiselection/MultiSelectionManager;->setSelectionTo(ZI)V

    .line 213
    .end local v2    # "item":Lorg/catrobat/catroid/content/Sprite;
    goto :goto_0

    .line 214
    :cond_2
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/adapter/MultiViewSpriteAdapter;->notifyDataSetChanged()V

    .line 215
    return-void
.end method

.method public setBackgroundVisible(I)V
    .locals 2
    .param p1, "visible"    # I

    .line 232
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/MultiViewSpriteAdapter;->backgroundView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 233
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 234
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/MultiViewSpriteAdapter;->backgroundView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 236
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/MultiViewSpriteAdapter;->backgroundView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 238
    :goto_0
    return-void
.end method

.method public bridge synthetic setSelection(Ljava/lang/Object;Z)Z
    .locals 0

    .line 51
    check-cast p1, Lorg/catrobat/catroid/content/Sprite;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/MultiViewSpriteAdapter;->setSelection(Lorg/catrobat/catroid/content/Sprite;Z)Z

    move-result p1

    return p1
.end method

.method public setSelection(Lorg/catrobat/catroid/content/Sprite;Z)Z
    .locals 2
    .param p1, "item"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "selection"    # Z

    .line 196
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/MultiViewSpriteAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    invoke-super {p0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/SpriteAdapter;->setSelection(Ljava/lang/Object;Z)Z

    move-result v0

    return v0

    .line 197
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You should never select the Background Sprite for any ActionMode operation. Modifying it via ActionMode is not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
