.class public final Lorg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "MainFragmentViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainFragmentViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainFragmentViewModel.kt\norg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,152:1\n13506#2,2:153\n1022#3:155\n*E\n*S KotlinDebug\n*F\n+ 1 MainFragmentViewModel.kt\norg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel\n*L\n64#1,2:153\n75#1:155\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\n\u0018\u0000 %2\u00020\u0001:\u0001%B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ*\u0010\u0011\u001a&\u0012\"\u0012 \u0012\u0004\u0012\u00020\r\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00140\u000f\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150\u000f0\u00130\u0012J\u001a\u0010\u0016\u001a\u00020\u00172\u0010\u0010\u0018\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u001a0\u0019H\u0002J\u0006\u0010\u001b\u001a\u00020\u001cJ\u000e\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fH\u0002J\u0012\u0010\u001e\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\u000f0\u0012J\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0012J\u0006\u0010 \u001a\u00020\u001cJ\u0010\u0010!\u001a\u00020\u001c2\u0008\u0008\u0002\u0010\"\u001a\u00020\rJ\u0006\u0010#\u001a\u00020\u001cJ\u0006\u0010$\u001a\u00020\u001cR\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\u000f0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lorg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "workManager",
        "Landroidx/work/WorkManager;",
        "featuredProjectsRepository",
        "Lorg/catrobat/catroid/ui/recyclerview/repository/FeaturedProjectsRepository;",
        "projectCategoriesRepository",
        "Lorg/catrobat/catroid/ui/recyclerview/repository/ProjectCategoriesRepository;",
        "connectionMonitor",
        "Lorg/catrobat/catroid/utils/NetworkConnectionMonitor;",
        "(Landroidx/work/WorkManager;Lorg/catrobat/catroid/ui/recyclerview/repository/FeaturedProjectsRepository;Lorg/catrobat/catroid/ui/recyclerview/repository/ProjectCategoriesRepository;Lorg/catrobat/catroid/utils/NetworkConnectionMonitor;)V",
        "isLoadingData",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "projectList",
        "",
        "Lorg/catrobat/catroid/common/ProjectData;",
        "connectionStatusAndFeaturedProjectsAndProjectCategoriesLiveData",
        "Landroidx/lifecycle/LiveData;",
        "Lkotlin/Triple;",
        "Lorg/catrobat/catroid/retrofit/models/FeaturedProject;",
        "Lorg/catrobat/catroid/retrofit/models/ProjectCategoryWithResponses;",
        "createPeriodicWorkerRequestOf",
        "Landroidx/work/PeriodicWorkRequest;",
        "workerClass",
        "Ljava/lang/Class;",
        "Landroidx/work/ListenableWorker;",
        "forceUpdate",
        "",
        "getProjectData",
        "getProjects",
        "isLoading",
        "registerNetworkCallback",
        "setIsLoading",
        "loading",
        "unregisterNetworkCallback",
        "update",
        "Companion",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field private static final BACKOFF_DELAY:J = 0x14L

.field public static final Companion:Lorg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel$Companion;

.field private static final FEATURED_PROJECTS_WORK_NAME:Ljava/lang/String; = "featured_projects_work"

.field private static final PROJECTS_CATEGORIES_WORK_NAME:Ljava/lang/String; = "projects_categories_work"

.field private static final REPEATED_INTERVAL:J = 0x1L


# instance fields
.field private final connectionMonitor:Lorg/catrobat/catroid/utils/NetworkConnectionMonitor;

.field private final featuredProjectsRepository:Lorg/catrobat/catroid/ui/recyclerview/repository/FeaturedProjectsRepository;

.field private final isLoadingData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final projectCategoriesRepository:Lorg/catrobat/catroid/ui/recyclerview/repository/ProjectCategoriesRepository;

.field private final projectList:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/common/ProjectData;",
            ">;>;"
        }
    .end annotation
.end field

.field private final workManager:Landroidx/work/WorkManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel;->Companion:Lorg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/work/WorkManager;Lorg/catrobat/catroid/ui/recyclerview/repository/FeaturedProjectsRepository;Lorg/catrobat/catroid/ui/recyclerview/repository/ProjectCategoriesRepository;Lorg/catrobat/catroid/utils/NetworkConnectionMonitor;)V
    .locals 2
    .param p1, "workManager"    # Landroidx/work/WorkManager;
    .param p2, "featuredProjectsRepository"    # Lorg/catrobat/catroid/ui/recyclerview/repository/FeaturedProjectsRepository;
    .param p3, "projectCategoriesRepository"    # Lorg/catrobat/catroid/ui/recyclerview/repository/ProjectCategoriesRepository;
    .param p4, "connectionMonitor"    # Lorg/catrobat/catroid/utils/NetworkConnectionMonitor;

    const-string v0, "workManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuredProjectsRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "projectCategoriesRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectionMonitor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    nop

    .line 57
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel;->workManager:Landroidx/work/WorkManager;

    iput-object p2, p0, Lorg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel;->featuredProjectsRepository:Lorg/catrobat/catroid/ui/recyclerview/repository/FeaturedProjectsRepository;

    iput-object p3, p0, Lorg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel;->projectCategoriesRepository:Lorg/catrobat/catroid/ui/recyclerview/repository/ProjectCategoriesRepository;

    iput-object p4, p0, Lorg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel;->connectionMonitor:Lorg/catrobat/catroid/utils/NetworkConnectionMonitor;

    .line 58
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel;->projectList:Landroidx/lifecycle/MutableLiveData;

    .line 82
    nop

    .line 83
    invoke-virtual {p0}, Lorg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel;->update()V

    .line 84
    nop

    .line 100
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel;->isLoadingData:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method private final createPeriodicWorkerRequestOf(Ljava/lang/Class;)Landroidx/work/PeriodicWorkRequest;
    .locals 6
    .param p1, "workerClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/work/ListenableWorker;",
            ">;)",
            "Landroidx/work/PeriodicWorkRequest;"
        }
    .end annotation

    .line 125
    nop

    .line 129
    nop

    .line 125
    nop

    .line 128
    nop

    .line 125
    nop

    .line 127
    nop

    .line 125
    nop

    .line 126
    nop

    .line 125
    new-instance v0, Landroidx/work/Constraints$Builder;

    invoke-direct {v0}, Landroidx/work/Constraints$Builder;-><init>()V

    .line 126
    sget-object v1, Landroidx/work/NetworkType;->CONNECTED:Landroidx/work/NetworkType;

    invoke-virtual {v0, v1}, Landroidx/work/Constraints$Builder;->setRequiredNetworkType(Landroidx/work/NetworkType;)Landroidx/work/Constraints$Builder;

    move-result-object v0

    .line 127
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/work/Constraints$Builder;->setRequiresStorageNotLow(Z)Landroidx/work/Constraints$Builder;

    move-result-object v0

    .line 128
    invoke-virtual {v0, v1}, Landroidx/work/Constraints$Builder;->setRequiresBatteryNotLow(Z)Landroidx/work/Constraints$Builder;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Landroidx/work/Constraints$Builder;->build()Landroidx/work/Constraints;

    move-result-object v0

    const-string v1, "Constraints.Builder()\n  \u2026rue)\n            .build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    nop

    .line 131
    .local v0, "constraints":Landroidx/work/Constraints;
    nop

    .line 142
    nop

    .line 131
    nop

    .line 137
    nop

    .line 131
    nop

    .line 136
    nop

    .line 131
    new-instance v1, Landroidx/work/PeriodicWorkRequest$Builder;

    .line 132
    nop

    .line 133
    nop

    .line 134
    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 131
    const-wide/16 v3, 0x1

    invoke-direct {v1, p1, v3, v4, v2}, Landroidx/work/PeriodicWorkRequest$Builder;-><init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)V

    .line 136
    invoke-virtual {v1, v0}, Landroidx/work/PeriodicWorkRequest$Builder;->setConstraints(Landroidx/work/Constraints;)Landroidx/work/WorkRequest$Builder;

    move-result-object v1

    check-cast v1, Landroidx/work/PeriodicWorkRequest$Builder;

    .line 138
    sget-object v2, Landroidx/work/BackoffPolicy;->EXPONENTIAL:Landroidx/work/BackoffPolicy;

    .line 139
    nop

    .line 140
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 137
    const-wide/16 v4, 0x14

    invoke-virtual {v1, v2, v4, v5, v3}, Landroidx/work/PeriodicWorkRequest$Builder;->setBackoffCriteria(Landroidx/work/BackoffPolicy;JLjava/util/concurrent/TimeUnit;)Landroidx/work/WorkRequest$Builder;

    move-result-object v1

    check-cast v1, Landroidx/work/PeriodicWorkRequest$Builder;

    .line 142
    invoke-virtual {v1}, Landroidx/work/PeriodicWorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    move-result-object v1

    const-string v2, "PeriodicWorkRequest.Buil\u2026   )\n            .build()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/work/PeriodicWorkRequest;

    .line 131
    return-object v1
.end method

.method private final getProjectData()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/common/ProjectData;",
            ">;"
        }
    .end annotation

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 64
    .local v0, "myProjects":Ljava/util/List;
    sget-object v1, Lorg/catrobat/catroid/common/FlavoredConstants;->DEFAULT_ROOT_DIRECTORY:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    .local v1, "$this$forEach$iv":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 153
    .local v2, "$i$f$forEach":I
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v6, v5

    .local v6, "projectDir":Ljava/io/File;
    const/4 v7, 0x0

    .line 65
    .local v7, "$i$a$-forEach-MainFragmentViewModel$getProjectData$1":I
    new-instance v8, Ljava/io/File;

    const-string v9, "code.xml"

    invoke-direct {v8, v6, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 66
    .local v8, "xmlFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 67
    new-instance v9, Lorg/catrobat/catroid/content/backwardcompatibility/ProjectMetaDataParser;

    invoke-direct {v9, v8}, Lorg/catrobat/catroid/content/backwardcompatibility/ProjectMetaDataParser;-><init>(Ljava/io/File;)V

    .line 68
    .local v9, "metaDataParser":Lorg/catrobat/catroid/content/backwardcompatibility/ProjectMetaDataParser;
    nop

    .line 69
    :try_start_0
    invoke-virtual {v9}, Lorg/catrobat/catroid/content/backwardcompatibility/ProjectMetaDataParser;->getProjectMetaData()Lorg/catrobat/catroid/common/ProjectData;

    move-result-object v10

    const-string v11, "metaDataParser.projectMetaData"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 70
    :catch_0
    move-exception v10

    .line 71
    .local v10, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    move-object v12, v10

    check-cast v12, Ljava/lang/Throwable;

    const-string v13, "Project not parsable"

    invoke-static {v11, v13, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    .end local v8    # "xmlFile":Ljava/io/File;
    .end local v9    # "metaDataParser":Lorg/catrobat/catroid/content/backwardcompatibility/ProjectMetaDataParser;
    .end local v10    # "e":Ljava/io/IOException;
    :cond_0
    :goto_1
    nop

    .line 74
    nop

    .end local v5    # "element$iv":Ljava/lang/Object;
    .end local v6    # "projectDir":Ljava/io/File;
    .end local v7    # "$i$a$-forEach-MainFragmentViewModel$getProjectData$1":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 154
    :cond_1
    nop

    .end local v1    # "$this$forEach$iv":[Ljava/lang/Object;
    .end local v2    # "$i$f$forEach":I
    goto :goto_2

    :cond_2
    nop

    .line 75
    :goto_2
    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$sortedByDescending$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 155
    .local v2, "$i$f$sortedByDescending":I
    new-instance v3, Lorg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel$getProjectData$$inlined$sortedByDescending$1;

    invoke-direct {v3}, Lorg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel$getProjectData$$inlined$sortedByDescending$1;-><init>()V

    check-cast v3, Ljava/util/Comparator;

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    .line 75
    .end local v1    # "$this$sortedByDescending$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$sortedByDescending":I
    return-object v1
.end method

.method public static synthetic setIsLoading$default(Lorg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 104
    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel;->setIsLoading(Z)V

    return-void
.end method


# virtual methods
.method public final connectionStatusAndFeaturedProjectsAndProjectCategoriesLiveData()Landroidx/lifecycle/LiveData;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lkotlin/Triple<",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/retrofit/models/FeaturedProject;",
            ">;",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/retrofit/models/ProjectCategoryWithResponses;",
            ">;>;>;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel;->connectionMonitor:Lorg/catrobat/catroid/utils/NetworkConnectionMonitor;

    check-cast v0, Landroidx/lifecycle/LiveData;

    .line 110
    iget-object v1, p0, Lorg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel;->featuredProjectsRepository:Lorg/catrobat/catroid/ui/recyclerview/repository/FeaturedProjectsRepository;

    invoke-interface {v1}, Lorg/catrobat/catroid/ui/recyclerview/repository/FeaturedProjectsRepository;->getFeaturedProjects()Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroidx/lifecycle/FlowLiveDataConversions;->asLiveData$default(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;JILjava/lang/Object;)Landroidx/lifecycle/LiveData;

    move-result-object v1

    .line 111
    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel;->projectCategoriesRepository:Lorg/catrobat/catroid/ui/recyclerview/repository/ProjectCategoriesRepository;

    invoke-interface {v2}, Lorg/catrobat/catroid/ui/recyclerview/repository/ProjectCategoriesRepository;->getProjectsCategories()Lkotlinx/coroutines/flow/Flow;

    move-result-object v3

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Landroidx/lifecycle/FlowLiveDataConversions;->asLiveData$default(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;JILjava/lang/Object;)Landroidx/lifecycle/LiveData;

    move-result-object v2

    .line 109
    invoke-static {v0, v1, v2}, Lorg/catrobat/catroid/utils/LiveDataExtensionsKt;->combineWith(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    .line 112
    return-object v0
.end method

.method public final forceUpdate()V
    .locals 2

    .line 79
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel;->projectList:Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel;->getProjectData()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 80
    return-void
.end method

.method public final getProjects()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/common/ProjectData;",
            ">;>;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel;->projectList:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final isLoading()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel;->isLoadingData:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final registerNetworkCallback()V
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel;->connectionMonitor:Lorg/catrobat/catroid/utils/NetworkConnectionMonitor;

    invoke-virtual {v0}, Lorg/catrobat/catroid/utils/NetworkConnectionMonitor;->registerDefaultNetworkCallback()V

    .line 116
    return-void
.end method

.method public final setIsLoading(Z)V
    .locals 2
    .param p1, "loading"    # Z

    .line 105
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel;->isLoadingData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 106
    return-void
.end method

.method public final unregisterNetworkCallback()V
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel;->connectionMonitor:Lorg/catrobat/catroid/utils/NetworkConnectionMonitor;

    invoke-virtual {v0}, Lorg/catrobat/catroid/utils/NetworkConnectionMonitor;->unregisterDefaultNetworkCallback()V

    .line 120
    return-void
.end method

.method public final update()V
    .locals 4

    .line 87
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel;->workManager:Landroidx/work/WorkManager;

    .line 88
    nop

    .line 89
    sget-object v1, Landroidx/work/ExistingPeriodicWorkPolicy;->REPLACE:Landroidx/work/ExistingPeriodicWorkPolicy;

    .line 90
    const-class v2, Lorg/catrobat/catroid/sync/FeaturedProjectSyncWorker;

    invoke-direct {p0, v2}, Lorg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel;->createPeriodicWorkerRequestOf(Ljava/lang/Class;)Landroidx/work/PeriodicWorkRequest;

    move-result-object v2

    .line 87
    const-string v3, "featured_projects_work"

    invoke-virtual {v0, v3, v1, v2}, Landroidx/work/WorkManager;->enqueueUniquePeriodicWork(Ljava/lang/String;Landroidx/work/ExistingPeriodicWorkPolicy;Landroidx/work/PeriodicWorkRequest;)Landroidx/work/Operation;

    .line 93
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel;->workManager:Landroidx/work/WorkManager;

    .line 94
    nop

    .line 95
    sget-object v1, Landroidx/work/ExistingPeriodicWorkPolicy;->REPLACE:Landroidx/work/ExistingPeriodicWorkPolicy;

    .line 96
    const-class v2, Lorg/catrobat/catroid/sync/ProjectsCategoriesSyncWorker;

    invoke-direct {p0, v2}, Lorg/catrobat/catroid/ui/recyclerview/viewmodel/MainFragmentViewModel;->createPeriodicWorkerRequestOf(Ljava/lang/Class;)Landroidx/work/PeriodicWorkRequest;

    move-result-object v2

    .line 93
    const-string v3, "projects_categories_work"

    invoke-virtual {v0, v3, v1, v2}, Landroidx/work/WorkManager;->enqueueUniquePeriodicWork(Ljava/lang/String;Landroidx/work/ExistingPeriodicWorkPolicy;Landroidx/work/PeriodicWorkRequest;)Landroidx/work/Operation;

    .line 98
    return-void
.end method
