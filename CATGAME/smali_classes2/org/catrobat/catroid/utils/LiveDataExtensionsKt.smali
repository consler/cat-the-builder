.class public final Lorg/catrobat/catroid/utils/LiveDataExtensionsKt;
.super Ljava/lang/Object;
.source "LiveDataExtensions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001aZ\u0010\u0000\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u00020\u0001\"\u0004\u0008\u0000\u0010\u0003\"\u0004\u0008\u0001\u0010\u0004\"\u0004\u0008\u0002\u0010\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u0002H\u00030\u00012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u0002H\u00040\u00012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0001\u001aV\u0010\t\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u00020\u0001\"\u0004\u0008\u0000\u0010\u0003\"\u0004\u0008\u0001\u0010\u0004\"\u0004\u0008\u0002\u0010\u0005*\u0008\u0012\u0004\u0012\u0002H\u00030\u00012\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u0002H\u00040\u00012\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0001\u001a/\u0010\u000c\u001a\u0002H\r\"\u0004\u0008\u0000\u0010\r*\u0008\u0012\u0004\u0012\u0002H\r0\u00012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0002\u0010\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "combine",
        "Landroidx/lifecycle/LiveData;",
        "Lkotlin/Triple;",
        "A",
        "B",
        "C",
        "a",
        "b",
        "c",
        "combineWith",
        "other",
        "secondOther",
        "getOrAwaitValue",
        "T",
        "time",
        "",
        "timeUnit",
        "Ljava/util/concurrent/TimeUnit;",
        "(Landroidx/lifecycle/LiveData;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;",
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
.method public static final combine(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;)Landroidx/lifecycle/LiveData;
    .locals 5
    .param p0, "a"    # Landroidx/lifecycle/LiveData;
    .param p1, "b"    # Landroidx/lifecycle/LiveData;
    .param p2, "c"    # Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LiveData<",
            "TA;>;",
            "Landroidx/lifecycle/LiveData<",
            "TB;>;",
            "Landroidx/lifecycle/LiveData<",
            "TC;>;)",
            "Landroidx/lifecycle/LiveData<",
            "Lkotlin/Triple<",
            "TA;TB;TC;>;>;"
        }
    .end annotation

    const-string v0, "a"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "c"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    new-instance v0, Landroidx/lifecycle/MediatorLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    move-object v1, v0

    .local v1, "$this$apply":Landroidx/lifecycle/MediatorLiveData;
    const/4 v2, 0x0

    .line 38
    .local v2, "$i$a$-apply-LiveDataExtensionsKt$combine$1":I
    new-instance v3, Lorg/catrobat/catroid/utils/LiveDataExtensionsKt$combine$$inlined$apply$lambda$1;

    invoke-direct {v3, v1, p0, p1, p2}, Lorg/catrobat/catroid/utils/LiveDataExtensionsKt$combine$$inlined$apply$lambda$1;-><init>(Landroidx/lifecycle/MediatorLiveData;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;)V

    .line 47
    .local v3, "$fun$combine$1":Lorg/catrobat/catroid/utils/LiveDataExtensionsKt$combine$$inlined$apply$lambda$1;
    new-instance v4, Lorg/catrobat/catroid/utils/LiveDataExtensionsKt$combine$$inlined$apply$lambda$2;

    invoke-direct {v4, v3}, Lorg/catrobat/catroid/utils/LiveDataExtensionsKt$combine$$inlined$apply$lambda$2;-><init>(Lorg/catrobat/catroid/utils/LiveDataExtensionsKt$combine$$inlined$apply$lambda$1;)V

    check-cast v4, Landroidx/lifecycle/Observer;

    invoke-virtual {v1, p0, v4}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 48
    new-instance v4, Lorg/catrobat/catroid/utils/LiveDataExtensionsKt$combine$$inlined$apply$lambda$3;

    invoke-direct {v4, v3}, Lorg/catrobat/catroid/utils/LiveDataExtensionsKt$combine$$inlined$apply$lambda$3;-><init>(Lorg/catrobat/catroid/utils/LiveDataExtensionsKt$combine$$inlined$apply$lambda$1;)V

    check-cast v4, Landroidx/lifecycle/Observer;

    invoke-virtual {v1, p1, v4}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 49
    new-instance v4, Lorg/catrobat/catroid/utils/LiveDataExtensionsKt$combine$$inlined$apply$lambda$4;

    invoke-direct {v4, v3}, Lorg/catrobat/catroid/utils/LiveDataExtensionsKt$combine$$inlined$apply$lambda$4;-><init>(Lorg/catrobat/catroid/utils/LiveDataExtensionsKt$combine$$inlined$apply$lambda$1;)V

    check-cast v4, Landroidx/lifecycle/Observer;

    invoke-virtual {v1, p2, v4}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 51
    invoke-virtual {v3}, Lorg/catrobat/catroid/utils/LiveDataExtensionsKt$combine$$inlined$apply$lambda$1;->invoke()V

    .line 52
    .end local v3    # "$fun$combine$1":Lorg/catrobat/catroid/utils/LiveDataExtensionsKt$combine$$inlined$apply$lambda$1;
    nop

    .line 37
    .end local v1    # "$this$apply":Landroidx/lifecycle/MediatorLiveData;
    .end local v2    # "$i$a$-apply-LiveDataExtensionsKt$combine$1":I
    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public static final combineWith(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;)Landroidx/lifecycle/LiveData;
    .locals 1
    .param p0, "$this$combineWith"    # Landroidx/lifecycle/LiveData;
    .param p1, "other"    # Landroidx/lifecycle/LiveData;
    .param p2, "secondOther"    # Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LiveData<",
            "TA;>;",
            "Landroidx/lifecycle/LiveData<",
            "TB;>;",
            "Landroidx/lifecycle/LiveData<",
            "TC;>;)",
            "Landroidx/lifecycle/LiveData<",
            "Lkotlin/Triple<",
            "TA;TB;TC;>;>;"
        }
    .end annotation

    const-string v0, "$this$combineWith"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "secondOther"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-static {p0, p1, p2}, Lorg/catrobat/catroid/utils/LiveDataExtensionsKt;->combine(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public static final getOrAwaitValue(Landroidx/lifecycle/LiveData;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 5
    .param p0, "$this$getOrAwaitValue"    # Landroidx/lifecycle/LiveData;
    .param p1, "time"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LiveData<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    const-string v0, "$this$getOrAwaitValue"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeUnit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 69
    .local v0, "data":Lkotlin/jvm/internal/Ref$ObjectRef;
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 70
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Lorg/catrobat/catroid/utils/LiveDataExtensionsKt$getOrAwaitValue$observer$1;

    invoke-direct {v2, p0, v0, v1}, Lorg/catrobat/catroid/utils/LiveDataExtensionsKt$getOrAwaitValue$observer$1;-><init>(Landroidx/lifecycle/LiveData;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/concurrent/CountDownLatch;)V

    .line 78
    .local v2, "observer":Lorg/catrobat/catroid/utils/LiveDataExtensionsKt$getOrAwaitValue$observer$1;
    move-object v3, v2

    check-cast v3, Landroidx/lifecycle/Observer;

    invoke-virtual {p0, v3}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    .line 81
    invoke-virtual {v1, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 85
    nop

    .line 86
    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-object v3

    .line 82
    :cond_0
    new-instance v3, Ljava/util/concurrent/TimeoutException;

    const-string v4, "LiveData value was never set."

    invoke-direct {v3, v4}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3
.end method

.method public static synthetic getOrAwaitValue$default(Landroidx/lifecycle/LiveData;JLjava/util/concurrent/TimeUnit;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 65
    const-wide/16 p1, 0x2

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    .line 66
    sget-object p3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lorg/catrobat/catroid/utils/LiveDataExtensionsKt;->getOrAwaitValue(Landroidx/lifecycle/LiveData;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
