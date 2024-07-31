.class public final Lorg/catrobat/catroid/content/actions/WriteUserDataOnDeviceAction;
.super Lorg/catrobat/catroid/content/actions/AsynchronousAction;
.source "WriteUserDataOnDeviceAction.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWriteUserDataOnDeviceAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WriteUserDataOnDeviceAction.kt\norg/catrobat/catroid/content/actions/WriteUserDataOnDeviceAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,56:1\n1#2:57\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0014\u001a\u00020\u00152\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cH\u0002J\u0008\u0010\u0016\u001a\u00020\u0015H\u0016J\u0008\u0010\u0017\u001a\u00020\u0013H\u0016R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\"\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lorg/catrobat/catroid/content/actions/WriteUserDataOnDeviceAction;",
        "Lorg/catrobat/catroid/content/actions/AsynchronousAction;",
        "()V",
        "accessor",
        "Lorg/catrobat/catroid/io/DeviceUserDataAccessor;",
        "getAccessor",
        "()Lorg/catrobat/catroid/io/DeviceUserDataAccessor;",
        "setAccessor",
        "(Lorg/catrobat/catroid/io/DeviceUserDataAccessor;)V",
        "scopeIO",
        "Lkotlinx/coroutines/CoroutineScope;",
        "userData",
        "Lorg/catrobat/catroid/formulaeditor/UserData;",
        "",
        "getUserData",
        "()Lorg/catrobat/catroid/formulaeditor/UserData;",
        "setUserData",
        "(Lorg/catrobat/catroid/formulaeditor/UserData;)V",
        "writeActionFinished",
        "",
        "executeWriteTask",
        "",
        "initialize",
        "isFinished",
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
.field private accessor:Lorg/catrobat/catroid/io/DeviceUserDataAccessor;

.field private final scopeIO:Lkotlinx/coroutines/CoroutineScope;

.field private userData:Lorg/catrobat/catroid/formulaeditor/UserData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/catrobat/catroid/formulaeditor/UserData<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private writeActionFinished:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/AsynchronousAction;-><init>()V

    .line 37
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/content/actions/WriteUserDataOnDeviceAction;->scopeIO:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method

.method public static final synthetic access$getWriteActionFinished$p(Lorg/catrobat/catroid/content/actions/WriteUserDataOnDeviceAction;)Z
    .locals 1
    .param p0, "$this"    # Lorg/catrobat/catroid/content/actions/WriteUserDataOnDeviceAction;

    .line 33
    iget-boolean v0, p0, Lorg/catrobat/catroid/content/actions/WriteUserDataOnDeviceAction;->writeActionFinished:Z

    return v0
.end method

.method public static final synthetic access$setWriteActionFinished$p(Lorg/catrobat/catroid/content/actions/WriteUserDataOnDeviceAction;Z)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/catroid/content/actions/WriteUserDataOnDeviceAction;
    .param p1, "<set-?>"    # Z

    .line 33
    iput-boolean p1, p0, Lorg/catrobat/catroid/content/actions/WriteUserDataOnDeviceAction;->writeActionFinished:Z

    return-void
.end method

.method private final executeWriteTask(Lorg/catrobat/catroid/formulaeditor/UserData;)V
    .locals 6
    .param p1, "userData"    # Lorg/catrobat/catroid/formulaeditor/UserData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/catroid/formulaeditor/UserData<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/WriteUserDataOnDeviceAction;->scopeIO:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lorg/catrobat/catroid/content/actions/WriteUserDataOnDeviceAction$executeWriteTask$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lorg/catrobat/catroid/content/actions/WriteUserDataOnDeviceAction$executeWriteTask$1;-><init>(Lorg/catrobat/catroid/content/actions/WriteUserDataOnDeviceAction;Lorg/catrobat/catroid/formulaeditor/UserData;Lkotlin/coroutines/Continuation;)V

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v1, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 54
    return-void
.end method


# virtual methods
.method public final getAccessor()Lorg/catrobat/catroid/io/DeviceUserDataAccessor;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/WriteUserDataOnDeviceAction;->accessor:Lorg/catrobat/catroid/io/DeviceUserDataAccessor;

    return-object v0
.end method

.method public final getUserData()Lorg/catrobat/catroid/formulaeditor/UserData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/catrobat/catroid/formulaeditor/UserData<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/WriteUserDataOnDeviceAction;->userData:Lorg/catrobat/catroid/formulaeditor/UserData;

    return-object v0
.end method

.method public initialize()V
    .locals 2

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/content/actions/WriteUserDataOnDeviceAction;->writeActionFinished:Z

    .line 41
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/WriteUserDataOnDeviceAction;->userData:Lorg/catrobat/catroid/formulaeditor/UserData;

    if-eqz v0, :cond_0

    .line 57
    .local v0, "it":Lorg/catrobat/catroid/formulaeditor/UserData;
    const/4 v1, 0x0

    .line 41
    .local v1, "$i$a$-let-WriteUserDataOnDeviceAction$initialize$1":I
    invoke-direct {p0, v0}, Lorg/catrobat/catroid/content/actions/WriteUserDataOnDeviceAction;->executeWriteTask(Lorg/catrobat/catroid/formulaeditor/UserData;)V

    .line 42
    .end local v0    # "it":Lorg/catrobat/catroid/formulaeditor/UserData;
    .end local v1    # "$i$a$-let-WriteUserDataOnDeviceAction$initialize$1":I
    :cond_0
    return-void
.end method

.method public isFinished()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lorg/catrobat/catroid/content/actions/WriteUserDataOnDeviceAction;->writeActionFinished:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/WriteUserDataOnDeviceAction;->userData:Lorg/catrobat/catroid/formulaeditor/UserData;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final setAccessor(Lorg/catrobat/catroid/io/DeviceUserDataAccessor;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/io/DeviceUserDataAccessor;

    .line 35
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/WriteUserDataOnDeviceAction;->accessor:Lorg/catrobat/catroid/io/DeviceUserDataAccessor;

    return-void
.end method

.method public final setUserData(Lorg/catrobat/catroid/formulaeditor/UserData;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/formulaeditor/UserData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/catroid/formulaeditor/UserData<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/WriteUserDataOnDeviceAction;->userData:Lorg/catrobat/catroid/formulaeditor/UserData;

    return-void
.end method
