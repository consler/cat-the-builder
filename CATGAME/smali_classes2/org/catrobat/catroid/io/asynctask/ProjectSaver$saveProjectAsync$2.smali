.class final Lorg/catrobat/catroid/io/asynctask/ProjectSaver$saveProjectAsync$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ProjectSaver.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/io/asynctask/ProjectSaver;->saveProjectAsync(Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CoroutineScope;)V
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
    c = "org.catrobat.catroid.io.asynctask.ProjectSaver$saveProjectAsync$2"
    f = "ProjectSaver.kt"
    i = {}
    l = {
        0x32
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $onSaveProjectComplete:Lkotlin/jvm/functions/Function1;

.field label:I

.field final synthetic this$0:Lorg/catrobat/catroid/io/asynctask/ProjectSaver;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/io/asynctask/ProjectSaver;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/catroid/io/asynctask/ProjectSaver$saveProjectAsync$2;->this$0:Lorg/catrobat/catroid/io/asynctask/ProjectSaver;

    iput-object p2, p0, Lorg/catrobat/catroid/io/asynctask/ProjectSaver$saveProjectAsync$2;->$context:Landroid/content/Context;

    iput-object p3, p0, Lorg/catrobat/catroid/io/asynctask/ProjectSaver$saveProjectAsync$2;->$onSaveProjectComplete:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
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

    new-instance v0, Lorg/catrobat/catroid/io/asynctask/ProjectSaver$saveProjectAsync$2;

    iget-object v1, p0, Lorg/catrobat/catroid/io/asynctask/ProjectSaver$saveProjectAsync$2;->this$0:Lorg/catrobat/catroid/io/asynctask/ProjectSaver;

    iget-object v2, p0, Lorg/catrobat/catroid/io/asynctask/ProjectSaver$saveProjectAsync$2;->$context:Landroid/content/Context;

    iget-object v3, p0, Lorg/catrobat/catroid/io/asynctask/ProjectSaver$saveProjectAsync$2;->$onSaveProjectComplete:Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, v1, v2, v3, p2}, Lorg/catrobat/catroid/io/asynctask/ProjectSaver$saveProjectAsync$2;-><init>(Lorg/catrobat/catroid/io/asynctask/ProjectSaver;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/io/asynctask/ProjectSaver$saveProjectAsync$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lorg/catrobat/catroid/io/asynctask/ProjectSaver$saveProjectAsync$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lorg/catrobat/catroid/io/asynctask/ProjectSaver$saveProjectAsync$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 47
    iget v1, p0, Lorg/catrobat/catroid/io/asynctask/ProjectSaver$saveProjectAsync$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    move-object v0, p0

    .local v0, "this":Lorg/catrobat/catroid/io/asynctask/ProjectSaver$saveProjectAsync$2;
    .local p1, "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .line 53
    .end local v0    # "this":Lorg/catrobat/catroid/io/asynctask/ProjectSaver$saveProjectAsync$2;
    .end local p1    # "$result":Ljava/lang/Object;
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 47
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 48
    .local v1, "this":Lorg/catrobat/catroid/io/asynctask/ProjectSaver$saveProjectAsync$2;
    .restart local p1    # "$result":Ljava/lang/Object;
    new-instance v3, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iget-object v4, v1, Lorg/catrobat/catroid/io/asynctask/ProjectSaver$saveProjectAsync$2;->this$0:Lorg/catrobat/catroid/io/asynctask/ProjectSaver;

    invoke-static {v4}, Lorg/catrobat/catroid/io/asynctask/ProjectSaver;->access$getProject$p(Lorg/catrobat/catroid/io/asynctask/ProjectSaver;)Lorg/catrobat/catroid/content/Project;

    move-result-object v4

    iget-object v5, v1, Lorg/catrobat/catroid/io/asynctask/ProjectSaver$saveProjectAsync$2;->$context:Landroid/content/Context;

    invoke-static {v4, v5}, Lorg/catrobat/catroid/io/asynctask/ProjectSaverKt;->saveProjectSerial(Lorg/catrobat/catroid/content/Project;Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 50
    .local v3, "projectSaved":Lkotlin/jvm/internal/Ref$BooleanRef;
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v4

    check-cast v4, Lkotlin/coroutines/CoroutineContext;

    new-instance v5, Lorg/catrobat/catroid/io/asynctask/ProjectSaver$saveProjectAsync$2$1;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v3, v6}, Lorg/catrobat/catroid/io/asynctask/ProjectSaver$saveProjectAsync$2$1;-><init>(Lorg/catrobat/catroid/io/asynctask/ProjectSaver$saveProjectAsync$2;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    iput v2, v1, Lorg/catrobat/catroid/io/asynctask/ProjectSaver$saveProjectAsync$2;->label:I

    invoke-static {v4, v5, v1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    .end local v3    # "projectSaved":Lkotlin/jvm/internal/Ref$BooleanRef;
    if-ne v2, v0, :cond_2

    .line 47
    return-object v0

    .line 50
    :cond_2
    move-object v0, v1

    .line 53
    .end local v1    # "this":Lorg/catrobat/catroid/io/asynctask/ProjectSaver$saveProjectAsync$2;
    .restart local v0    # "this":Lorg/catrobat/catroid/io/asynctask/ProjectSaver$saveProjectAsync$2;
    :goto_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method
