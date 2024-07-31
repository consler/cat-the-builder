.class public Lorg/catrobat/catroid/ui/recyclerview/adapter/ProjectAdapter;
.super Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;
.source "ProjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter<",
        "Lorg/catrobat/catroid/common/ProjectData;",
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
            "Lorg/catrobat/catroid/common/ProjectData;",
            ">;)V"
        }
    .end annotation

    .line 45
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/common/ProjectData;>;"
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/adapter/ExtendedRVAdapter;-><init>(Ljava/util/List;)V

    .line 46
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;I)V
    .locals 17
    .param p1, "holder"    # Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;
    .param p2, "position"    # I

    .line 50
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 51
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070196

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 52
    .local v3, "thumbnailWidth":I
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070195

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 53
    .local v4, "thumbnailHeight":I
    new-instance v5, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;

    invoke-direct {v5, v3, v4}, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;-><init>(II)V

    .line 54
    .local v5, "loader":Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;
    iget-object v6, v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/ProjectAdapter;->items:Ljava/util/List;

    move/from16 v7, p2

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/catrobat/catroid/common/ProjectData;

    .line 56
    .local v6, "item":Lorg/catrobat/catroid/common/ProjectData;
    iget-object v8, v1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v6}, Lorg/catrobat/catroid/common/ProjectData;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-virtual {v6}, Lorg/catrobat/catroid/common/ProjectData;->getDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 58
    invoke-virtual {v6}, Lorg/catrobat/catroid/common/ProjectData;->getDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v5, v9}, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;->getScreenshotSceneName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;->image:Landroid/widget/ImageView;

    .line 57
    const/4 v11, 0x0

    invoke-virtual {v5, v8, v9, v11, v10}, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;->loadAndShowScreenshot(Ljava/lang/String;Ljava/lang/String;ZLandroid/widget/ImageView;)V

    .line 62
    iget-object v8, v1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;->itemView:Landroid/view/View;

    const v9, 0x7f0a03d8

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 63
    .local v8, "ripples":Landroid/widget/ImageView;
    const/16 v9, 0x8

    if-eqz v8, :cond_0

    .line 64
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 67
    :cond_0
    iget-boolean v10, v0, Lorg/catrobat/catroid/ui/recyclerview/adapter/ProjectAdapter;->showDetails:Z

    if-eqz v10, :cond_2

    .line 68
    new-instance v9, Ljava/util/Date;

    invoke-virtual {v6}, Lorg/catrobat/catroid/common/ProjectData;->getLastUsed()J

    move-result-wide v12

    invoke-direct {v9, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 70
    .local v9, "lastModified":Ljava/util/Date;
    invoke-virtual {v6}, Lorg/catrobat/catroid/common/ProjectData;->getLastUsed()J

    move-result-wide v12

    invoke-static {v12, v13}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v10

    const/4 v12, 0x1

    const/4 v13, 0x2

    if-eqz v10, :cond_1

    .line 71
    const v10, 0x7f12051b

    new-array v14, v12, [Ljava/lang/Object;

    const/4 v15, 0x3

    .line 72
    invoke-static {v15}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v11

    .line 71
    invoke-virtual {v2, v10, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .local v10, "lastAccess":Ljava/lang/String;
    goto :goto_0

    .line 74
    .end local v10    # "lastAccess":Ljava/lang/String;
    :cond_1
    invoke-static {v13}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    .line 77
    .restart local v10    # "lastAccess":Ljava/lang/String;
    :goto_0
    iget-object v14, v1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;->details:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v15

    const v12, 0x7f1206e4

    .line 78
    invoke-virtual {v2, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v10, v13, v11

    .line 80
    invoke-virtual {v6}, Lorg/catrobat/catroid/common/ProjectData;->getDirectory()Ljava/io/File;

    move-result-object v11

    invoke-static {v11, v2}, Lorg/catrobat/catroid/utils/FileMetaDataExtractor;->getSizeAsString(Ljava/io/File;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    const/16 v16, 0x1

    aput-object v11, v13, v16

    .line 77
    invoke-static {v15, v12, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v11, v1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;->details:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    .end local v9    # "lastModified":Ljava/util/Date;
    .end local v10    # "lastAccess":Ljava/lang/String;
    goto :goto_1

    .line 83
    :cond_2
    iget-object v10, v1, Lorg/catrobat/catroid/ui/recyclerview/viewholder/ExtendedViewHolder;->details:Landroid/widget/TextView;

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    :goto_1
    return-void
.end method
