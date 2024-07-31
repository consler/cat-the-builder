.class public final Lorg/catrobat/catroid/utils/ExtensionsKt;
.super Ljava/lang/Object;
.source "Extensions.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExtensions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Extensions.kt\norg/catrobat/catroid/utils/ExtensionsKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,101:1\n1517#2:102\n1588#2,3:103\n1517#2:106\n1588#2,3:107\n*E\n*S KotlinDebug\n*F\n+ 1 Extensions.kt\norg/catrobat/catroid/utils/ExtensionsKt\n*L\n66#1:102\n66#1,3:103\n100#1:106\n100#1,3:107\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000P\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\u0012\u0010\u0003\u001a\u00020\u0004*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0004\u001a\u0012\u0010\u0007\u001a\u00020\u0008*\u00020\t2\u0006\u0010\n\u001a\u00020\u000b\u001a\u0012\u0010\u000c\u001a\u00020\u0008*\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f\u001a\n\u0010\u0010\u001a\u00020\u0011*\u00020\u0002\u001a\u0016\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0013*\u0008\u0012\u0004\u0012\u00020\u00020\u0014\u001a\u001e\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0014*\u0008\u0012\u0004\u0012\u00020\u00170\u00142\u0006\u0010\u0018\u001a\u00020\u000b\u00a8\u0006\u0019"
    }
    d2 = {
        "convertToProjectsCategory",
        "Lorg/catrobat/catroid/retrofit/models/ProjectsCategory;",
        "Lorg/catrobat/catroid/retrofit/models/ProjectsCategoryApi;",
        "dpToPx",
        "",
        "Landroid/content/Context;",
        "dp",
        "loadImageFromUrl",
        "",
        "Landroid/widget/ImageView;",
        "url",
        "",
        "setVisibleOrGone",
        "Landroid/view/View;",
        "show",
        "",
        "toProjectCategoryWithResponses",
        "Lorg/catrobat/catroid/retrofit/models/ProjectCategoryWithResponses;",
        "toProjectCategoryWithResponsesList",
        "",
        "",
        "toProjectResponsesList",
        "Lorg/catrobat/catroid/retrofit/models/ProjectResponse;",
        "Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;",
        "projectType",
        "catroid_catroidDebug"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method public static final convertToProjectsCategory(Lorg/catrobat/catroid/retrofit/models/ProjectsCategoryApi;)Lorg/catrobat/catroid/retrofit/models/ProjectsCategory;
    .locals 3
    .param p0, "$this$convertToProjectsCategory"    # Lorg/catrobat/catroid/retrofit/models/ProjectsCategoryApi;

    const-string v0, "$this$convertToProjectsCategory"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    new-instance v0, Lorg/catrobat/catroid/retrofit/models/ProjectsCategory;

    invoke-virtual {p0}, Lorg/catrobat/catroid/retrofit/models/ProjectsCategoryApi;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/catrobat/catroid/retrofit/models/ProjectsCategoryApi;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/catrobat/catroid/retrofit/models/ProjectsCategory;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final dpToPx(Landroid/content/Context;F)F
    .locals 3
    .param p0, "$this$dpToPx"    # Landroid/content/Context;
    .param p1, "dp"    # F

    const-string v0, "$this$dpToPx"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "resources"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 53
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    const/16 v2, 0xa0

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 54
    .local v1, "pixelScaleFactor":F
    mul-float v2, p1, v1

    return v2
.end method

.method public static final loadImageFromUrl(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 5
    .param p0, "$this$loadImageFromUrl"    # Landroid/widget/ImageView;
    .param p1, "url"    # Ljava/lang/String;

    const-string v0, "$this$loadImageFromUrl"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    nop

    .line 48
    nop

    .line 41
    nop

    .line 47
    nop

    .line 41
    nop

    .line 46
    nop

    .line 41
    nop

    .line 43
    nop

    .line 41
    nop

    .line 42
    nop

    .line 41
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 42
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 43
    move-object v1, v0

    .local v1, "$this$apply":Lcom/bumptech/glide/RequestBuilder;
    const/4 v2, 0x0

    .line 44
    .local v2, "$i$a$-apply-ExtensionsKt$loadImageFromUrl$1":I
    new-instance v3, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v3}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget-object v4, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 45
    nop

    .line 43
    .end local v1    # "$this$apply":Lcom/bumptech/glide/RequestBuilder;
    .end local v2    # "$i$a$-apply-ExtensionsKt$loadImageFromUrl$1":I
    nop

    .line 46
    invoke-virtual {v0}, Lcom/bumptech/glide/RequestBuilder;->centerInside()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    .line 47
    invoke-static {}, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;->withCrossFade()Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/TransitionOptions;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->transition(Lcom/bumptech/glide/TransitionOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 48
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 49
    return-void
.end method

.method public static final setVisibleOrGone(Landroid/view/View;Z)V
    .locals 1
    .param p0, "$this$setVisibleOrGone"    # Landroid/view/View;
    .param p1, "show"    # Z

    const-string v0, "$this$setVisibleOrGone"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    if-eqz p1, :cond_0

    .line 59
    const/4 v0, 0x0

    goto :goto_0

    .line 61
    :cond_0
    const/16 v0, 0x8

    .line 58
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 63
    return-void
.end method

.method public static final toProjectCategoryWithResponses(Lorg/catrobat/catroid/retrofit/models/ProjectsCategoryApi;)Lorg/catrobat/catroid/retrofit/models/ProjectCategoryWithResponses;
    .locals 4
    .param p0, "$this$toProjectCategoryWithResponses"    # Lorg/catrobat/catroid/retrofit/models/ProjectsCategoryApi;

    const-string v0, "$this$toProjectCategoryWithResponses"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    new-instance v0, Lorg/catrobat/catroid/retrofit/models/ProjectCategoryWithResponses;

    .line 94
    invoke-static {p0}, Lorg/catrobat/catroid/utils/ExtensionsKt;->convertToProjectsCategory(Lorg/catrobat/catroid/retrofit/models/ProjectsCategoryApi;)Lorg/catrobat/catroid/retrofit/models/ProjectsCategory;

    move-result-object v1

    .line 95
    invoke-virtual {p0}, Lorg/catrobat/catroid/retrofit/models/ProjectsCategoryApi;->getProjectsList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lorg/catrobat/catroid/retrofit/models/ProjectsCategoryApi;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/catrobat/catroid/utils/ExtensionsKt;->toProjectResponsesList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 93
    invoke-direct {v0, v1, v2}, Lorg/catrobat/catroid/retrofit/models/ProjectCategoryWithResponses;-><init>(Lorg/catrobat/catroid/retrofit/models/ProjectsCategory;Ljava/util/List;)V

    return-object v0
.end method

.method public static final toProjectCategoryWithResponsesList(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .param p0, "$this$toProjectCategoryWithResponsesList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/retrofit/models/ProjectsCategoryApi;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/retrofit/models/ProjectCategoryWithResponses;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$toProjectCategoryWithResponsesList"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 106
    .local v1, "$i$f$map":I
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 107
    .local v4, "$i$f$mapTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 108
    .local v6, "item$iv$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lorg/catrobat/catroid/retrofit/models/ProjectsCategoryApi;

    .local v7, "it":Lorg/catrobat/catroid/retrofit/models/ProjectsCategoryApi;
    const/4 v8, 0x0

    .line 100
    .local v8, "$i$a$-map-ExtensionsKt$toProjectCategoryWithResponsesList$1":I
    invoke-static {v7}, Lorg/catrobat/catroid/utils/ExtensionsKt;->toProjectCategoryWithResponses(Lorg/catrobat/catroid/retrofit/models/ProjectsCategoryApi;)Lorg/catrobat/catroid/retrofit/models/ProjectCategoryWithResponses;

    move-result-object v7

    .end local v7    # "it":Lorg/catrobat/catroid/retrofit/models/ProjectsCategoryApi;
    .end local v8    # "$i$a$-map-ExtensionsKt$toProjectCategoryWithResponsesList$1":I
    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 107
    .end local v6    # "item$iv$iv":Ljava/lang/Object;
    goto :goto_0

    .line 109
    :cond_0
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$mapTo":I
    check-cast v2, Ljava/util/List;

    .line 106
    nop

    .end local v0    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$map":I
    check-cast v2, Ljava/util/Collection;

    .line 100
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final toProjectResponsesList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 31
    .param p0, "$this$toProjectResponsesList"    # Ljava/util/List;
    .param p1, "projectType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/retrofit/models/ProjectResponse;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "$this$toProjectResponsesList"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "projectType"

    move-object/from16 v15, p1

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    nop

    .line 87
    nop

    .line 66
    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$map$iv":Ljava/lang/Iterable;
    const/16 v23, 0x0

    .line 102
    .local v23, "$i$f$map":I
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object/from16 v24, v1

    .local v24, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    move-object v13, v2

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .local v13, "destination$iv$iv":Ljava/util/Collection;
    const/16 v25, 0x0

    .line 103
    .local v25, "$i$f$mapTo":I
    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :goto_0
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    .line 104
    .local v27, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v28, v27

    check-cast v28, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;

    .local v28, "src":Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;
    const/16 v29, 0x0

    .line 67
    .local v29, "$i$a$-map-ExtensionsKt$toProjectResponsesList$1":I
    new-instance v14, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;

    move-object v2, v14

    .line 68
    invoke-virtual/range {v28 .. v28}, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->getId()Ljava/lang/String;

    move-result-object v3

    .line 69
    invoke-virtual/range {v28 .. v28}, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->getName()Ljava/lang/String;

    move-result-object v4

    .line 70
    invoke-virtual/range {v28 .. v28}, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->getAuthor()Ljava/lang/String;

    move-result-object v5

    .line 71
    invoke-virtual/range {v28 .. v28}, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->getDescription()Ljava/lang/String;

    move-result-object v6

    .line 72
    invoke-virtual/range {v28 .. v28}, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->getVersion()Ljava/lang/String;

    move-result-object v7

    .line 73
    invoke-virtual/range {v28 .. v28}, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->getViews()I

    move-result v8

    .line 74
    invoke-virtual/range {v28 .. v28}, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->getDownload()I

    move-result v9

    .line 75
    invoke-virtual/range {v28 .. v28}, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->getPrivate()Z

    move-result v10

    .line 76
    invoke-virtual/range {v28 .. v28}, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->getFlavor()Ljava/lang/String;

    move-result-object v11

    .line 77
    invoke-virtual/range {v28 .. v28}, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->getTags()Ljava/util/List;

    move-result-object v12

    .line 78
    invoke-virtual/range {v28 .. v28}, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->getUploaded()J

    move-result-wide v16

    move-object/from16 v30, v1

    move-object v0, v13

    move-object v1, v14

    .end local v1    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v13    # "destination$iv$iv":Ljava/util/Collection;
    .local v0, "destination$iv$iv":Ljava/util/Collection;
    .local v30, "$this$map$iv":Ljava/lang/Iterable;
    move-wide/from16 v13, v16

    .line 79
    invoke-virtual/range {v28 .. v28}, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->getUploaded_string()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v15, v16

    .line 80
    invoke-virtual/range {v28 .. v28}, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->getScreenshot_small()Ljava/lang/String;

    move-result-object v17

    .line 81
    invoke-virtual/range {v28 .. v28}, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->getScreenshot_large()Ljava/lang/String;

    move-result-object v16

    .line 82
    invoke-virtual/range {v28 .. v28}, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->getProject_url()Ljava/lang/String;

    move-result-object v18

    .line 83
    invoke-virtual/range {v28 .. v28}, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->getDownload_url()Ljava/lang/String;

    move-result-object v19

    .line 84
    invoke-virtual/range {v28 .. v28}, Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;->getFilesize()D

    move-result-wide v20

    .line 85
    nop

    .line 67
    move-object/from16 v22, p1

    invoke-direct/range {v2 .. v22}, Lorg/catrobat/catroid/retrofit/models/ProjectResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V

    .end local v28    # "src":Lorg/catrobat/catroid/retrofit/models/ProjectResponseApi;
    .end local v29    # "$i$a$-map-ExtensionsKt$toProjectResponsesList$1":I
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 103
    .end local v27    # "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v15, p1

    move-object v13, v0

    move-object/from16 v1, v30

    move-object/from16 v0, p0

    goto :goto_0

    .line 105
    .end local v0    # "destination$iv$iv":Ljava/util/Collection;
    .end local v30    # "$this$map$iv":Ljava/lang/Iterable;
    .restart local v1    # "$this$map$iv":Ljava/lang/Iterable;
    .restart local v13    # "destination$iv$iv":Ljava/util/Collection;
    :cond_0
    move-object v0, v13

    .end local v13    # "destination$iv$iv":Ljava/util/Collection;
    .end local v24    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v25    # "$i$f$mapTo":I
    check-cast v0, Ljava/util/List;

    .line 102
    nop

    .end local v1    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v23    # "$i$f$map":I
    check-cast v0, Ljava/util/Collection;

    .line 87
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 66
    return-object v0
.end method
