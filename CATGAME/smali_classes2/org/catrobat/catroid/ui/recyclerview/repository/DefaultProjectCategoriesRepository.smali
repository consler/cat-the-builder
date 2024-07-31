.class public final Lorg/catrobat/catroid/ui/recyclerview/repository/DefaultProjectCategoriesRepository;
.super Ljava/lang/Object;
.source "ProjectCategoriesRepository.kt"

# interfaces
.implements Lorg/catrobat/catroid/ui/recyclerview/repository/ProjectCategoriesRepository;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00070\u0006H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lorg/catrobat/catroid/ui/recyclerview/repository/DefaultProjectCategoriesRepository;",
        "Lorg/catrobat/catroid/ui/recyclerview/repository/ProjectCategoriesRepository;",
        "appDatabase",
        "Lorg/catrobat/catroid/db/AppDatabase;",
        "(Lorg/catrobat/catroid/db/AppDatabase;)V",
        "getProjectsCategories",
        "Lkotlinx/coroutines/flow/Flow;",
        "",
        "Lorg/catrobat/catroid/retrofit/models/ProjectCategoryWithResponses;",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private final appDatabase:Lorg/catrobat/catroid/db/AppDatabase;


# direct methods
.method public constructor <init>(Lorg/catrobat/catroid/db/AppDatabase;)V
    .locals 1
    .param p1, "appDatabase"    # Lorg/catrobat/catroid/db/AppDatabase;

    const-string v0, "appDatabase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/repository/DefaultProjectCategoriesRepository;->appDatabase:Lorg/catrobat/catroid/db/AppDatabase;

    return-void
.end method


# virtual methods
.method public getProjectsCategories()Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/retrofit/models/ProjectCategoryWithResponses;",
            ">;>;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/repository/DefaultProjectCategoriesRepository;->appDatabase:Lorg/catrobat/catroid/db/AppDatabase;

    invoke-virtual {v0}, Lorg/catrobat/catroid/db/AppDatabase;->projectCategoryDao()Lorg/catrobat/catroid/db/ProjectsCategoryDao;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/db/ProjectsCategoryDao;->getProjectsCategories()Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    return-object v0
.end method
