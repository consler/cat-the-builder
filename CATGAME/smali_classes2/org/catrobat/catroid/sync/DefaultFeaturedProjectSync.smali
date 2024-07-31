.class public final Lorg/catrobat/catroid/sync/DefaultFeaturedProjectSync;
.super Ljava/lang/Object;
.source "FeaturedProjectsSync.kt"

# interfaces
.implements Lorg/catrobat/catroid/sync/FeaturedProjectsSync;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u001c\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0002J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\nH\u0017J\u0018\u0010\u0011\u001a\u00020\u000f2\u000e\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0013H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lorg/catrobat/catroid/sync/DefaultFeaturedProjectSync;",
        "Lorg/catrobat/catroid/sync/FeaturedProjectsSync;",
        "webService",
        "Lorg/catrobat/catroid/retrofit/WebService;",
        "appDatabase",
        "Lorg/catrobat/catroid/db/AppDatabase;",
        "localHashVersionRepository",
        "Lorg/catrobat/catroid/ui/recyclerview/repository/LocalHashVersionRepository;",
        "(Lorg/catrobat/catroid/retrofit/WebService;Lorg/catrobat/catroid/db/AppDatabase;Lorg/catrobat/catroid/ui/recyclerview/repository/LocalHashVersionRepository;)V",
        "requireUpdate",
        "",
        "localHashVersion",
        "",
        "serverHashVersion",
        "sync",
        "",
        "force",
        "update",
        "body",
        "",
        "Lorg/catrobat/catroid/retrofit/models/FeaturedProject;",
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

.field private final localHashVersionRepository:Lorg/catrobat/catroid/ui/recyclerview/repository/LocalHashVersionRepository;

.field private final webService:Lorg/catrobat/catroid/retrofit/WebService;


# direct methods
.method public constructor <init>(Lorg/catrobat/catroid/retrofit/WebService;Lorg/catrobat/catroid/db/AppDatabase;Lorg/catrobat/catroid/ui/recyclerview/repository/LocalHashVersionRepository;)V
    .locals 1
    .param p1, "webService"    # Lorg/catrobat/catroid/retrofit/WebService;
    .param p2, "appDatabase"    # Lorg/catrobat/catroid/db/AppDatabase;
    .param p3, "localHashVersionRepository"    # Lorg/catrobat/catroid/ui/recyclerview/repository/LocalHashVersionRepository;

    const-string v0, "webService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appDatabase"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localHashVersionRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/sync/DefaultFeaturedProjectSync;->webService:Lorg/catrobat/catroid/retrofit/WebService;

    iput-object p2, p0, Lorg/catrobat/catroid/sync/DefaultFeaturedProjectSync;->appDatabase:Lorg/catrobat/catroid/db/AppDatabase;

    iput-object p3, p0, Lorg/catrobat/catroid/sync/DefaultFeaturedProjectSync;->localHashVersionRepository:Lorg/catrobat/catroid/ui/recyclerview/repository/LocalHashVersionRepository;

    return-void
.end method

.method private final requireUpdate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "localHashVersion"    # Ljava/lang/String;
    .param p2, "serverHashVersion"    # Ljava/lang/String;

    .line 69
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private final update(Ljava/util/List;)V
    .locals 3
    .param p1, "body"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/retrofit/models/FeaturedProject;",
            ">;)V"
        }
    .end annotation

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "updating feature projects"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    if-eqz p1, :cond_0

    move-object v0, p1

    .local v0, "it":Ljava/util/List;
    const/4 v1, 0x0

    .line 63
    .local v1, "$i$a$-let-DefaultFeaturedProjectSync$update$1":I
    iget-object v2, p0, Lorg/catrobat/catroid/sync/DefaultFeaturedProjectSync;->appDatabase:Lorg/catrobat/catroid/db/AppDatabase;

    invoke-virtual {v2}, Lorg/catrobat/catroid/db/AppDatabase;->featuredProjectDao()Lorg/catrobat/catroid/db/FeaturedProjectDao;

    move-result-object v2

    invoke-virtual {v2}, Lorg/catrobat/catroid/db/FeaturedProjectDao;->deleteAll()V

    .line 64
    iget-object v2, p0, Lorg/catrobat/catroid/sync/DefaultFeaturedProjectSync;->appDatabase:Lorg/catrobat/catroid/db/AppDatabase;

    invoke-virtual {v2}, Lorg/catrobat/catroid/db/AppDatabase;->featuredProjectDao()Lorg/catrobat/catroid/db/FeaturedProjectDao;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/catrobat/catroid/db/FeaturedProjectDao;->insertFeaturedProjects(Ljava/util/List;)V

    .line 65
    nop

    .line 62
    .end local v0    # "it":Ljava/util/List;
    .end local v1    # "$i$a$-let-DefaultFeaturedProjectSync$update$1":I
    nop

    .line 66
    :cond_0
    return-void
.end method


# virtual methods
.method public sync(Z)V
    .locals 9
    .param p1, "force"    # Z

    .line 46
    iget-object v0, p0, Lorg/catrobat/catroid/sync/DefaultFeaturedProjectSync;->localHashVersionRepository:Lorg/catrobat/catroid/ui/recyclerview/repository/LocalHashVersionRepository;

    invoke-interface {v0}, Lorg/catrobat/catroid/ui/recyclerview/repository/LocalHashVersionRepository;->getFeaturedProjectsHashVersion()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "localHashVersion":Ljava/lang/String;
    iget-object v1, p0, Lorg/catrobat/catroid/sync/DefaultFeaturedProjectSync;->webService:Lorg/catrobat/catroid/retrofit/WebService;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1f

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lorg/catrobat/catroid/retrofit/WebService$DefaultImpls;->getFeaturedProjects$default(Lorg/catrobat/catroid/retrofit/WebService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Object;)Lretrofit2/Call;

    move-result-object v1

    invoke-interface {v1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v1

    .line 48
    .local v1, "response":Lretrofit2/Response;
    invoke-virtual {v1}, Lretrofit2/Response;->headers()Lokhttp3/Headers;

    move-result-object v2

    const-string v3, "x-response-hash"

    invoke-virtual {v2, v3}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, "serverHashVersion":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "local stored hash version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "server hash version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-direct {p0, v0, v2}, Lorg/catrobat/catroid/sync/DefaultFeaturedProjectSync;->requireUpdate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "no update needed! you\'ve latest version :)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 52
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-direct {p0, v3}, Lorg/catrobat/catroid/sync/DefaultFeaturedProjectSync;->update(Ljava/util/List;)V

    .line 53
    iget-object v3, p0, Lorg/catrobat/catroid/sync/DefaultFeaturedProjectSync;->localHashVersionRepository:Lorg/catrobat/catroid/ui/recyclerview/repository/LocalHashVersionRepository;

    invoke-interface {v3, v2}, Lorg/catrobat/catroid/ui/recyclerview/repository/LocalHashVersionRepository;->setFeaturedProjectsHashVersion(Ljava/lang/String;)V

    .line 56
    :goto_1
    nop

    .line 57
    return-void
.end method
