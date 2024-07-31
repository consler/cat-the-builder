.class public Lorg/catrobat/catroid/ui/recyclerview/adapter/SceneAdapter;
.super Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;
.source "SceneAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter<",
        "Lorg/catrobat/catroid/content/Scene;",
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
            "Lorg/catrobat/catroid/content/Scene;",
            ">;)V"
        }
    .end annotation

    .line 42
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/Scene;>;"
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;-><init>(Ljava/util/List;)V

    .line 43
    return-void
.end method

.method private getLookCount(Lorg/catrobat/catroid/content/Scene;)I
    .locals 4
    .param p1, "scene"    # Lorg/catrobat/catroid/content/Scene;

    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, "lookCount":I
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Scene;->getSpriteList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/content/Sprite;

    .line 79
    .local v2, "sprite":Lorg/catrobat/catroid/content/Sprite;
    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v0, v3

    .line 80
    .end local v2    # "sprite":Lorg/catrobat/catroid/content/Sprite;
    goto :goto_0

    .line 81
    :cond_0
    return v0
.end method

.method private getSoundCount(Lorg/catrobat/catroid/content/Scene;)I
    .locals 4
    .param p1, "scene"    # Lorg/catrobat/catroid/content/Scene;

    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "soundCount":I
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Scene;->getSpriteList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/content/Sprite;

    .line 87
    .local v2, "sprite":Lorg/catrobat/catroid/content/Sprite;
    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Sprite;->getSoundList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v0, v3

    .line 88
    .end local v2    # "sprite":Lorg/catrobat/catroid/content/Sprite;
    goto :goto_0

    .line 89
    :cond_0
    return v0
.end method


# virtual methods
.method public onBindViewHolder(Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;I)V
    .locals 12
    .param p1, "holder"    # Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;
    .param p2, "position"    # I

    .line 47
    iget-object v0, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070196

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 48
    .local v0, "thumbnailWidth":I
    iget-object v1, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070195

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 49
    .local v1, "thumbnailHeight":I
    new-instance v2, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;

    invoke-direct {v2, v0, v1}, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;-><init>(II)V

    .line 50
    .local v2, "loader":Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;
    iget-object v3, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/SceneAdapter;->items:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/content/Scene;

    .line 52
    .local v3, "item":Lorg/catrobat/catroid/content/Scene;
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v4

    invoke-virtual {v4}, Lorg/catrobat/catroid/content/Project;->getDirectory()Ljava/io/File;

    move-result-object v4

    .line 53
    .local v4, "projectDir":Ljava/io/File;
    iget-object v5, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Scene;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Scene;->getDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;->image:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v2, v5, v6, v8, v7}, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;->loadAndShowScreenshot(Ljava/lang/String;Ljava/lang/String;ZLandroid/widget/ImageView;)V

    .line 57
    iget-boolean v5, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/SceneAdapter;->showDetails:Z

    if-eqz v5, :cond_0

    .line 58
    iget-object v5, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;->details:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    iget-object v7, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;->itemView:Landroid/view/View;

    .line 59
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const v9, 0x7f120719

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    .line 60
    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Scene;->getSpriteList()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v8

    const/4 v10, 0x1

    .line 61
    invoke-direct {p0, v3}, Lorg/catrobat/catroid/ui/recyclerview/adapter/SceneAdapter;->getLookCount(Lorg/catrobat/catroid/content/Scene;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    .line 62
    invoke-direct {p0, v3}, Lorg/catrobat/catroid/ui/recyclerview/adapter/SceneAdapter;->getSoundCount(Lorg/catrobat/catroid/content/Scene;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    .line 58
    invoke-static {v6, v7, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v5, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;->details:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 65
    :cond_0
    iget-object v5, p1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;->details:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    :goto_0
    return-void
.end method

.method public onItemMove(II)Z
    .locals 4
    .param p1, "sourcePosition"    # I
    .param p2, "targetPosition"    # I

    .line 71
    invoke-super {p0, p1, p2}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;->onItemMove(II)Z

    move-result v0

    .line 72
    .local v0, "moved":Z
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v1

    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/adapter/SceneAdapter;->items:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/content/Scene;

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/ProjectManager;->setCurrentlyEditedScene(Lorg/catrobat/catroid/content/Scene;)V

    .line 73
    return v0
.end method
