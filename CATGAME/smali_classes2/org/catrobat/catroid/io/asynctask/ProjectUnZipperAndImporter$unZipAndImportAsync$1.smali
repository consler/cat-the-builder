.class final Lorg/catrobat/catroid/io/asynctask/ProjectUnZipperAndImporter$unZipAndImportAsync$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ProjectUnZipperAndImporter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/io/asynctask/ProjectUnZipperAndImporter;->unZipAndImportAsync([Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;",
        "invoke",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "org.catrobat.catroid.io.asynctask.ProjectUnZipperAndImporter$unZipAndImportAsync$1"
    f = "ProjectUnZipperAndImporter.kt"
    i = {}
    l = {
        0x2d
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $files:[Ljava/io/File;

.field label:I

.field final synthetic this$0:Lorg/catrobat/catroid/io/asynctask/ProjectUnZipperAndImporter;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/io/asynctask/ProjectUnZipperAndImporter;[Ljava/io/File;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/catroid/io/asynctask/ProjectUnZipperAndImporter$unZipAndImportAsync$1;->this$0:Lorg/catrobat/catroid/io/asynctask/ProjectUnZipperAndImporter;

    iput-object p2, p0, Lorg/catrobat/catroid/io/asynctask/ProjectUnZipperAndImporter$unZipAndImportAsync$1;->$files:[Ljava/io/File;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/catrobat/catroid/io/asynctask/ProjectUnZipperAndImporter$unZipAndImportAsync$1;

    iget-object v1, p0, Lorg/catrobat/catroid/io/asynctask/ProjectUnZipperAndImporter$unZipAndImportAsync$1;->this$0:Lorg/catrobat/catroid/io/asynctask/ProjectUnZipperAndImporter;

    iget-object v2, p0, Lorg/catrobat/catroid/io/asynctask/ProjectUnZipperAndImporter$unZipAndImportAsync$1;->$files:[Ljava/io/File;

    invoke-direct {v0, v1, v2, p2}, Lorg/catrobat/catroid/io/asynctask/ProjectUnZipperAndImporter$unZipAndImportAsync$1;-><init>(Lorg/catrobat/catroid/io/asynctask/ProjectUnZipperAndImporter;[Ljava/io/File;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/io/asynctask/ProjectUnZipperAndImporter$unZipAndImportAsync$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lorg/catrobat/catroid/io/asynctask/ProjectUnZipperAndImporter$unZipAndImportAsync$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lorg/catrobat/catroid/io/asynctask/ProjectUnZipperAndImporter$unZipAndImportAsync$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 43
    iget v1, p0, Lorg/catrobat/catroid/io/asynctask/ProjectUnZipperAndImporter$unZipAndImportAsync$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    move-object v0, p0

    .local v0, "this":Lorg/catrobat/catroid/io/asynctask/ProjectUnZipperAndImporter$unZipAndImportAsync$1;
    .local p1, "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .line 48
    .end local v0    # "this":Lorg/catrobat/catroid/io/asynctask/ProjectUnZipperAndImporter$unZipAndImportAsync$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 43
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 44
    .local v1, "this":Lorg/catrobat/catroid/io/asynctask/ProjectUnZipperAndImporter$unZipAndImportAsync$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    new-instance v3, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iget-object v4, v1, Lorg/catrobat/catroid/io/asynctask/ProjectUnZipperAndImporter$unZipAndImportAsync$1;->$files:[Ljava/io/File;

    invoke-static {v4}, Lorg/catrobat/catroid/io/asynctask/ProjectUnZipperAndImporterKt;->unzipAndImportProjects([Ljava/io/File;)Z

    move-result v4

    iput-boolean v4, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 45
    .local v3, "success":Lkotlin/jvm/internal/Ref$BooleanRef;
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v4

    check-cast v4, Lkotlin/coroutines/CoroutineContext;

    new-instance v5, Lorg/catrobat/catroid/io/asynctask/ProjectUnZipperAndImporter$unZipAndImportAsync$1$1;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v3, v6}, Lorg/catrobat/catroid/io/asynctask/ProjectUnZipperAndImporter$unZipAndImportAsync$1$1;-><init>(Lorg/catrobat/catroid/io/asynctask/ProjectUnZipperAndImporter$unZipAndImportAsync$1;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    iput v2, v1, Lorg/catrobat/catroid/io/asynctask/ProjectUnZipperAndImporter$unZipAndImportAsync$1;->label:I

    invoke-static {v4, v5, v1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    .end local v3    # "success":Lkotlin/jvm/internal/Ref$BooleanRef;
    if-ne v2, v0, :cond_2

    .line 43
    return-object v0

    .line 45
    :cond_2
    move-object v0, v1

    .line 48
    .end local v1    # "this":Lorg/catrobat/catroid/io/asynctask/ProjectUnZipperAndImporter$unZipAndImportAsync$1;
    .restart local v0    # "this":Lorg/catrobat/catroid/io/asynctask/ProjectUnZipperAndImporter$unZipAndImportAsync$1;
    :goto_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method
