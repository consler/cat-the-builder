.class public abstract Lorg/catrobat/catroid/db/ProjectsCategoryDao;
.super Ljava/lang/Object;
.source "ProjectsCategoryDao.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProjectsCategoryDao.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProjectsCategoryDao.kt\norg/catrobat/catroid/db/ProjectsCategoryDao\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,76:1\n1819#2,2:77\n*E\n*S KotlinDebug\n*F\n+ 1 ProjectsCategoryDao.kt\norg/catrobat/catroid/db/ProjectsCategoryDao\n*L\n50#1,2:77\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\'\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H%J\u0008\u0010\u0005\u001a\u00020\u0004H%J\u0014\u0010\u0006\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u0007H\'J\u0016\u0010\n\u001a\u00020\u00042\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0017J\u0010\u0010\u000c\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000eH%J\u0016\u0010\u000f\u001a\u00020\u00042\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0008H%J\u0008\u0010\u0012\u001a\u00020\u0004H\u0017\u00a8\u0006\u0013"
    }
    d2 = {
        "Lorg/catrobat/catroid/db/ProjectsCategoryDao;",
        "",
        "()V",
        "deleteAllProjectResponse",
        "",
        "deleteAllProjectsCategory",
        "getProjectsCategories",
        "Lkotlinx/coroutines/flow/Flow;",
        "",
        "Lorg/catrobat/catroid/retrofit/models/ProjectCategoryWithResponses;",
        "insertProjectCategoriesWithResponses",
        "projectCategoryWithResponses",
        "insertProjectCategory",
        "projectsCategory",
        "Lorg/catrobat/catroid/retrofit/models/ProjectsCategory;",
        "insertProjectResponses",
        "projectResponseList",
        "Lorg/catrobat/catroid/retrofit/models/ProjectResponse;",
        "nukeAll",
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
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract deleteAllProjectResponse()V
.end method

.method protected abstract deleteAllProjectsCategory()V
.end method

.method public abstract getProjectsCategories()Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/retrofit/models/ProjectCategoryWithResponses;",
            ">;>;"
        }
    .end annotation
.end method

.method public insertProjectCategoriesWithResponses(Ljava/util/List;)V
    .locals 7
    .param p1, "projectCategoryWithResponses"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/retrofit/models/ProjectCategoryWithResponses;",
            ">;)V"
        }
    .end annotation

    const-string v0, "projectCategoryWithResponses"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lorg/catrobat/catroid/db/ProjectsCategoryDao;->nukeAll()V

    .line 50
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 77
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lorg/catrobat/catroid/retrofit/models/ProjectCategoryWithResponses;

    .local v4, "it":Lorg/catrobat/catroid/retrofit/models/ProjectCategoryWithResponses;
    const/4 v5, 0x0

    .line 51
    .local v5, "$i$a$-forEach-ProjectsCategoryDao$insertProjectCategoriesWithResponses$1":I
    invoke-virtual {v4}, Lorg/catrobat/catroid/retrofit/models/ProjectCategoryWithResponses;->getProjectsList()Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    if-eqz v6, :cond_1

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v6, 0x1

    :goto_2
    if-nez v6, :cond_2

    .line 52
    invoke-virtual {v4}, Lorg/catrobat/catroid/retrofit/models/ProjectCategoryWithResponses;->getCategory()Lorg/catrobat/catroid/retrofit/models/ProjectsCategory;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/catrobat/catroid/db/ProjectsCategoryDao;->insertProjectCategory(Lorg/catrobat/catroid/retrofit/models/ProjectsCategory;)V

    .line 53
    invoke-virtual {v4}, Lorg/catrobat/catroid/retrofit/models/ProjectCategoryWithResponses;->getProjectsList()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/catrobat/catroid/db/ProjectsCategoryDao;->insertProjectResponses(Ljava/util/List;)V

    .line 55
    :cond_2
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    .end local v4    # "it":Lorg/catrobat/catroid/retrofit/models/ProjectCategoryWithResponses;
    .end local v5    # "$i$a$-forEach-ProjectsCategoryDao$insertProjectCategoriesWithResponses$1":I
    goto :goto_0

    .line 78
    :cond_3
    nop

    .line 56
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method

.method protected abstract insertProjectCategory(Lorg/catrobat/catroid/retrofit/models/ProjectsCategory;)V
.end method

.method protected abstract insertProjectResponses(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/retrofit/models/ProjectResponse;",
            ">;)V"
        }
    .end annotation
.end method

.method public nukeAll()V
    .locals 0

    .line 72
    invoke-virtual {p0}, Lorg/catrobat/catroid/db/ProjectsCategoryDao;->deleteAllProjectsCategory()V

    .line 73
    invoke-virtual {p0}, Lorg/catrobat/catroid/db/ProjectsCategoryDao;->deleteAllProjectResponse()V

    .line 74
    return-void
.end method
