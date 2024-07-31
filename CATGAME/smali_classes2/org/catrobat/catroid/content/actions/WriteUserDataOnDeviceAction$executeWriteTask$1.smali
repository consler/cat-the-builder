.class final Lorg/catrobat/catroid/content/actions/WriteUserDataOnDeviceAction$executeWriteTask$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "WriteUserDataOnDeviceAction.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/content/actions/WriteUserDataOnDeviceAction;->executeWriteTask(Lorg/catrobat/catroid/formulaeditor/UserData;)V
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
    c = "org.catrobat.catroid.content.actions.WriteUserDataOnDeviceAction$executeWriteTask$1"
    f = "WriteUserDataOnDeviceAction.kt"
    i = {}
    l = {
        0x32
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $userData:Lorg/catrobat/catroid/formulaeditor/UserData;

.field label:I

.field final synthetic this$0:Lorg/catrobat/catroid/content/actions/WriteUserDataOnDeviceAction;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/content/actions/WriteUserDataOnDeviceAction;Lorg/catrobat/catroid/formulaeditor/UserData;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/WriteUserDataOnDeviceAction$executeWriteTask$1;->this$0:Lorg/catrobat/catroid/content/actions/WriteUserDataOnDeviceAction;

    iput-object p2, p0, Lorg/catrobat/catroid/content/actions/WriteUserDataOnDeviceAction$executeWriteTask$1;->$userData:Lorg/catrobat/catroid/formulaeditor/UserData;

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

    new-instance v0, Lorg/catrobat/catroid/content/actions/WriteUserDataOnDeviceAction$executeWriteTask$1;

    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/WriteUserDataOnDeviceAction$executeWriteTask$1;->this$0:Lorg/catrobat/catroid/content/actions/WriteUserDataOnDeviceAction;

    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/WriteUserDataOnDeviceAction$executeWriteTask$1;->$userData:Lorg/catrobat/catroid/formulaeditor/UserData;

    invoke-direct {v0, v1, v2, p2}, Lorg/catrobat/catroid/content/actions/WriteUserDataOnDeviceAction$executeWriteTask$1;-><init>(Lorg/catrobat/catroid/content/actions/WriteUserDataOnDeviceAction;Lorg/catrobat/catroid/formulaeditor/UserData;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/content/actions/WriteUserDataOnDeviceAction$executeWriteTask$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lorg/catrobat/catroid/content/actions/WriteUserDataOnDeviceAction$executeWriteTask$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lorg/catrobat/catroid/content/actions/WriteUserDataOnDeviceAction$executeWriteTask$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 47
    iget v1, p0, Lorg/catrobat/catroid/content/actions/WriteUserDataOnDeviceAction$executeWriteTask$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    move-object v0, p0

    .local v0, "this":Lorg/catrobat/catroid/content/actions/WriteUserDataOnDeviceAction$executeWriteTask$1;
    .local p1, "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .line 53
    .end local v0    # "this":Lorg/catrobat/catroid/content/actions/WriteUserDataOnDeviceAction$executeWriteTask$1;
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
    .local v1, "this":Lorg/catrobat/catroid/content/actions/WriteUserDataOnDeviceAction$executeWriteTask$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v3, v1, Lorg/catrobat/catroid/content/actions/WriteUserDataOnDeviceAction$executeWriteTask$1;->this$0:Lorg/catrobat/catroid/content/actions/WriteUserDataOnDeviceAction;

    invoke-virtual {v3}, Lorg/catrobat/catroid/content/actions/WriteUserDataOnDeviceAction;->getAccessor()Lorg/catrobat/catroid/io/DeviceUserDataAccessor;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v4, v1, Lorg/catrobat/catroid/content/actions/WriteUserDataOnDeviceAction$executeWriteTask$1;->$userData:Lorg/catrobat/catroid/formulaeditor/UserData;

    invoke-virtual {v3, v4}, Lorg/catrobat/catroid/io/DeviceUserDataAccessor;->writeUserData(Lorg/catrobat/catroid/formulaeditor/UserData;)V

    .line 50
    :cond_2
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v3

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    new-instance v4, Lorg/catrobat/catroid/content/actions/WriteUserDataOnDeviceAction$executeWriteTask$1$1;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Lorg/catrobat/catroid/content/actions/WriteUserDataOnDeviceAction$executeWriteTask$1$1;-><init>(Lorg/catrobat/catroid/content/actions/WriteUserDataOnDeviceAction$executeWriteTask$1;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    iput v2, v1, Lorg/catrobat/catroid/content/actions/WriteUserDataOnDeviceAction$executeWriteTask$1;->label:I

    invoke-static {v3, v4, v1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_3

    .line 47
    return-object v0

    .line 50
    :cond_3
    move-object v0, v1

    .line 53
    .end local v1    # "this":Lorg/catrobat/catroid/content/actions/WriteUserDataOnDeviceAction$executeWriteTask$1;
    .restart local v0    # "this":Lorg/catrobat/catroid/content/actions/WriteUserDataOnDeviceAction$executeWriteTask$1;
    :goto_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method
