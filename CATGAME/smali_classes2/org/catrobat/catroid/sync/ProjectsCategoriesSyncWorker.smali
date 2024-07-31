.class public final Lorg/catrobat/catroid/sync/ProjectsCategoriesSyncWorker;
.super Landroidx/work/CoroutineWorker;
.source "ProjectsCategoriesSyncWorker.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0011\u0010\r\u001a\u00020\u000eH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000fR\u001b\u0010\u0007\u001a\u00020\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\n\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0010"
    }
    d2 = {
        "Lorg/catrobat/catroid/sync/ProjectsCategoriesSyncWorker;",
        "Landroidx/work/CoroutineWorker;",
        "context",
        "Landroid/content/Context;",
        "params",
        "Landroidx/work/WorkerParameters;",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V",
        "projectsCategoriesSync",
        "Lorg/catrobat/catroid/sync/ProjectsCategoriesSync;",
        "getProjectsCategoriesSync",
        "()Lorg/catrobat/catroid/sync/ProjectsCategoriesSync;",
        "projectsCategoriesSync$delegate",
        "Lkotlin/Lazy;",
        "doWork",
        "Landroidx/work/ListenableWorker$Result;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field private final projectsCategoriesSync$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Landroidx/work/WorkerParameters;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    nop

    .line 35
    invoke-direct {p0, p1, p2}, Landroidx/work/CoroutineWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 38
    const-class v0, Lorg/catrobat/catroid/sync/ProjectsCategoriesSync;

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {v0, v1, v1, v2, v1}, Lorg/koin/java/KoinJavaComponent;->inject$default(Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/sync/ProjectsCategoriesSyncWorker;->projectsCategoriesSync$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getProjectsCategoriesSync$p(Lorg/catrobat/catroid/sync/ProjectsCategoriesSyncWorker;)Lorg/catrobat/catroid/sync/ProjectsCategoriesSync;
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/catroid/sync/ProjectsCategoriesSyncWorker;

    .line 34
    invoke-direct {p0}, Lorg/catrobat/catroid/sync/ProjectsCategoriesSyncWorker;->getProjectsCategoriesSync()Lorg/catrobat/catroid/sync/ProjectsCategoriesSync;

    move-result-object v0

    return-object v0
.end method

.method private final getProjectsCategoriesSync()Lorg/catrobat/catroid/sync/ProjectsCategoriesSync;
    .locals 1

    iget-object v0, p0, Lorg/catrobat/catroid/sync/ProjectsCategoriesSyncWorker;->projectsCategoriesSync$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/sync/ProjectsCategoriesSync;

    return-object v0
.end method


# virtual methods
.method public doWork(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/work/ListenableWorker$Result;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lorg/catrobat/catroid/sync/ProjectsCategoriesSyncWorker$doWork$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/catrobat/catroid/sync/ProjectsCategoriesSyncWorker$doWork$1;

    iget v1, v0, Lorg/catrobat/catroid/sync/ProjectsCategoriesSyncWorker$doWork$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lorg/catrobat/catroid/sync/ProjectsCategoriesSyncWorker$doWork$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lorg/catrobat/catroid/sync/ProjectsCategoriesSyncWorker$doWork$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/catrobat/catroid/sync/ProjectsCategoriesSyncWorker$doWork$1;

    invoke-direct {v0, p0, p1}, Lorg/catrobat/catroid/sync/ProjectsCategoriesSyncWorker$doWork$1;-><init>(Lorg/catrobat/catroid/sync/ProjectsCategoriesSyncWorker;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p1, v0

    .local p1, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p1, Lorg/catrobat/catroid/sync/ProjectsCategoriesSyncWorker$doWork$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 40
    iget v2, p1, Lorg/catrobat/catroid/sync/ProjectsCategoriesSyncWorker$doWork$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, v0

    goto :goto_1

    .line 42
    .end local v0    # "$result":Ljava/lang/Object;
    .end local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 41
    .local v2, "this":Lorg/catrobat/catroid/sync/ProjectsCategoriesSyncWorker;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "doWork()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v4

    check-cast v4, Lkotlin/coroutines/CoroutineContext;

    new-instance v5, Lorg/catrobat/catroid/sync/ProjectsCategoriesSyncWorker$doWork$2;

    const/4 v6, 0x0

    invoke-direct {v5, v2, v6}, Lorg/catrobat/catroid/sync/ProjectsCategoriesSyncWorker$doWork$2;-><init>(Lorg/catrobat/catroid/sync/ProjectsCategoriesSyncWorker;Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    iput v3, p1, Lorg/catrobat/catroid/sync/ProjectsCategoriesSyncWorker$doWork$1;->label:I

    invoke-static {v4, v5, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "this":Lorg/catrobat/catroid/sync/ProjectsCategoriesSyncWorker;
    if-ne v2, v1, :cond_3

    .line 40
    return-object v1

    .line 42
    :cond_3
    :goto_1
    const-string v1, "withContext(Dispatchers.\u2026esult.success()\n        }"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2
.end method
