.class final Lkotlinx/coroutines/JobSupport$children$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "JobSupport.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/JobSupport;->getChildren()Lkotlin/sequences/Sequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlin/sequences/SequenceScope<",
        "-",
        "Lkotlinx/coroutines/ChildJob;",
        ">;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJobSupport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/JobSupport$children$1\n+ 2 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListHead\n*L\n1#1,1490:1\n641#2,6:1491\n*E\n*S KotlinDebug\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/JobSupport$children$1\n*L\n951#1,6:1491\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlin/sequences/SequenceScope;",
        "Lkotlinx/coroutines/ChildJob;",
        "invoke",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.JobSupport$children$1"
    f = "JobSupport.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1
    }
    l = {
        0x3b5,
        0x3b7
    }
    m = "invokeSuspend"
    n = {
        "$this$sequence",
        "state",
        "$this$sequence",
        "state",
        "list",
        "this_$iv",
        "cur$iv",
        "it"
    }
    s = {
        "L$0",
        "L$1",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field label:I

.field private p$:Lkotlin/sequences/SequenceScope;

.field final synthetic this$0:Lkotlinx/coroutines/JobSupport;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/JobSupport;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/JobSupport$children$1;->this$0:Lkotlinx/coroutines/JobSupport;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance v0, Lkotlinx/coroutines/JobSupport$children$1;

    iget-object v1, p0, Lkotlinx/coroutines/JobSupport$children$1;->this$0:Lkotlinx/coroutines/JobSupport;

    invoke-direct {v0, v1, p2}, Lkotlinx/coroutines/JobSupport$children$1;-><init>(Lkotlinx/coroutines/JobSupport;Lkotlin/coroutines/Continuation;)V

    move-object v1, p1

    check-cast v1, Lkotlin/sequences/SequenceScope;

    move-object v1, p1

    check-cast v1, Lkotlin/sequences/SequenceScope;

    iput-object v1, v0, Lkotlinx/coroutines/JobSupport$children$1;->p$:Lkotlin/sequences/SequenceScope;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/JobSupport$children$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/JobSupport$children$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/JobSupport$children$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17
    .param p1, "$result"    # Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 947
    iget v2, v0, Lkotlinx/coroutines/JobSupport$children$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    const/4 v5, 0x0

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    move-object v2, v5

    .local v2, "$this$sequence":Lkotlin/sequences/SequenceScope;
    move-object v6, v5

    .local v6, "it":Lkotlinx/coroutines/ChildHandleNode;
    const/4 v7, 0x0

    move v8, v7

    .local v8, "$i$a$-forEach-JobSupport$children$1$1$1":I
    move v9, v7

    .local v9, "$i$a$-let-JobSupport$children$1$1":I
    move-object v10, v5

    .local v10, "this_$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListHead;
    move-object v11, v5

    .local v7, "$i$f$forEach":I
    .local v11, "cur$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    move-object v12, v5

    .local v5, "list":Lkotlinx/coroutines/NodeList;
    .local v12, "state":Ljava/lang/Object;
    iget-object v13, v0, Lkotlinx/coroutines/JobSupport$children$1;->L$5:Ljava/lang/Object;

    move-object v6, v13

    check-cast v6, Lkotlinx/coroutines/ChildHandleNode;

    iget-object v13, v0, Lkotlinx/coroutines/JobSupport$children$1;->L$4:Ljava/lang/Object;

    move-object v11, v13

    check-cast v11, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    iget-object v13, v0, Lkotlinx/coroutines/JobSupport$children$1;->L$3:Ljava/lang/Object;

    move-object v10, v13

    check-cast v10, Lkotlinx/coroutines/internal/LockFreeLinkedListHead;

    iget-object v13, v0, Lkotlinx/coroutines/JobSupport$children$1;->L$2:Ljava/lang/Object;

    move-object v5, v13

    check-cast v5, Lkotlinx/coroutines/NodeList;

    iget-object v12, v0, Lkotlinx/coroutines/JobSupport$children$1;->L$1:Ljava/lang/Object;

    iget-object v13, v0, Lkotlinx/coroutines/JobSupport$children$1;->L$0:Ljava/lang/Object;

    move-object v2, v13

    check-cast v2, Lkotlin/sequences/SequenceScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v13, v6

    move-object v14, v12

    move-object v6, v5

    move-object v12, v11

    move-object v5, v2

    move-object v11, v10

    move-object v2, v1

    move v10, v9

    move-object/from16 v1, p1

    move-object v9, v0

    goto/16 :goto_2

    .line 954
    .end local v2    # "$this$sequence":Lkotlin/sequences/SequenceScope;
    .end local v5    # "list":Lkotlinx/coroutines/NodeList;
    .end local v6    # "it":Lkotlinx/coroutines/ChildHandleNode;
    .end local v7    # "$i$f$forEach":I
    .end local v8    # "$i$a$-forEach-JobSupport$children$1$1$1":I
    .end local v9    # "$i$a$-let-JobSupport$children$1$1":I
    .end local v10    # "this_$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListHead;
    .end local v11    # "cur$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    .end local v12    # "state":Ljava/lang/Object;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 947
    :cond_1
    move-object v1, v5

    .local v1, "$this$sequence":Lkotlin/sequences/SequenceScope;
    move-object v2, v5

    .local v2, "state":Ljava/lang/Object;
    iget-object v2, v0, Lkotlinx/coroutines/JobSupport$children$1;->L$1:Ljava/lang/Object;

    iget-object v3, v0, Lkotlinx/coroutines/JobSupport$children$1;->L$0:Ljava/lang/Object;

    move-object v1, v3

    check-cast v1, Lkotlin/sequences/SequenceScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .end local v1    # "$this$sequence":Lkotlin/sequences/SequenceScope;
    .end local v2    # "state":Ljava/lang/Object;
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Lkotlinx/coroutines/JobSupport$children$1;->p$:Lkotlin/sequences/SequenceScope;

    .line 948
    .local v2, "$this$sequence":Lkotlin/sequences/SequenceScope;
    iget-object v5, v0, Lkotlinx/coroutines/JobSupport$children$1;->this$0:Lkotlinx/coroutines/JobSupport;

    invoke-virtual {v5}, Lkotlinx/coroutines/JobSupport;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v5

    .line 949
    .local v5, "state":Ljava/lang/Object;
    instance-of v6, v5, Lkotlinx/coroutines/ChildHandleNode;

    if-eqz v6, :cond_4

    move-object v3, v5

    check-cast v3, Lkotlinx/coroutines/ChildHandleNode;

    iget-object v3, v3, Lkotlinx/coroutines/ChildHandleNode;->childJob:Lkotlinx/coroutines/ChildJob;

    iput-object v2, v0, Lkotlinx/coroutines/JobSupport$children$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/JobSupport$children$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/JobSupport$children$1;->label:I

    invoke-virtual {v2, v3, v0}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_3

    .line 947
    return-object v1

    .line 949
    :cond_3
    move-object v1, v2

    move-object v2, v5

    .end local v5    # "state":Ljava/lang/Object;
    .restart local v1    # "$this$sequence":Lkotlin/sequences/SequenceScope;
    .local v2, "state":Ljava/lang/Object;
    :goto_0
    move-object v8, v0

    move-object v2, v1

    move-object/from16 v1, p1

    goto/16 :goto_3

    .line 950
    .end local v1    # "$this$sequence":Lkotlin/sequences/SequenceScope;
    .local v2, "$this$sequence":Lkotlin/sequences/SequenceScope;
    .restart local v5    # "state":Ljava/lang/Object;
    :cond_4
    instance-of v6, v5, Lkotlinx/coroutines/Incomplete;

    if-eqz v6, :cond_9

    move-object v6, v5

    check-cast v6, Lkotlinx/coroutines/Incomplete;

    invoke-interface {v6}, Lkotlinx/coroutines/Incomplete;->getList()Lkotlinx/coroutines/NodeList;

    move-result-object v6

    if-eqz v6, :cond_9

    .local v6, "list":Lkotlinx/coroutines/NodeList;
    const/4 v7, 0x0

    .line 951
    .local v7, "$i$a$-let-JobSupport$children$1$1":I
    move-object v8, v6

    check-cast v8, Lkotlinx/coroutines/internal/LockFreeLinkedListHead;

    .local v8, "this_$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListHead;
    const/4 v9, 0x0

    .line 1491
    .local v9, "$i$f$forEach":I
    invoke-virtual {v8}, Lkotlinx/coroutines/internal/LockFreeLinkedListHead;->getNext()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_8

    check-cast v10, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-object v12, v5

    move-object v11, v10

    move-object v5, v2

    move-object v10, v8

    move-object v8, v0

    move-object v2, v1

    move-object/from16 v1, p1

    move/from16 v16, v9

    move v9, v7

    move/from16 v7, v16

    .line 1492
    .end local v2    # "$this$sequence":Lkotlin/sequences/SequenceScope;
    .end local p0    # "this":Lkotlinx/coroutines/JobSupport$children$1;
    .end local p1    # "$result":Ljava/lang/Object;
    .local v1, "$result":Ljava/lang/Object;
    .local v5, "$this$sequence":Lkotlin/sequences/SequenceScope;
    .local v7, "$i$f$forEach":I
    .local v8, "this":Lkotlinx/coroutines/JobSupport$children$1;
    .local v9, "$i$a$-let-JobSupport$children$1$1":I
    .restart local v10    # "this_$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListHead;
    .restart local v11    # "cur$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    .restart local v12    # "state":Ljava/lang/Object;
    :goto_1
    invoke-static {v11, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    xor-int/2addr v13, v4

    if-eqz v13, :cond_7

    .line 1493
    instance-of v13, v11, Lkotlinx/coroutines/ChildHandleNode;

    if-eqz v13, :cond_6

    move-object v13, v11

    check-cast v13, Lkotlinx/coroutines/ChildHandleNode;

    .local v13, "it":Lkotlinx/coroutines/ChildHandleNode;
    const/4 v14, 0x0

    .line 951
    .local v14, "$i$a$-forEach-JobSupport$children$1$1$1":I
    iget-object v15, v13, Lkotlinx/coroutines/ChildHandleNode;->childJob:Lkotlinx/coroutines/ChildJob;

    iput-object v5, v8, Lkotlinx/coroutines/JobSupport$children$1;->L$0:Ljava/lang/Object;

    iput-object v12, v8, Lkotlinx/coroutines/JobSupport$children$1;->L$1:Ljava/lang/Object;

    iput-object v6, v8, Lkotlinx/coroutines/JobSupport$children$1;->L$2:Ljava/lang/Object;

    iput-object v10, v8, Lkotlinx/coroutines/JobSupport$children$1;->L$3:Ljava/lang/Object;

    iput-object v11, v8, Lkotlinx/coroutines/JobSupport$children$1;->L$4:Ljava/lang/Object;

    iput-object v13, v8, Lkotlinx/coroutines/JobSupport$children$1;->L$5:Ljava/lang/Object;

    iput v3, v8, Lkotlinx/coroutines/JobSupport$children$1;->label:I

    invoke-virtual {v5, v15, v8}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v15

    if-ne v15, v2, :cond_5

    .line 947
    return-object v2

    .line 951
    :cond_5
    move/from16 v16, v9

    move-object v9, v8

    move v8, v14

    move-object v14, v12

    move-object v12, v11

    move-object v11, v10

    move/from16 v10, v16

    .local v8, "$i$a$-forEach-JobSupport$children$1$1$1":I
    .local v9, "this":Lkotlinx/coroutines/JobSupport$children$1;
    .local v10, "$i$a$-let-JobSupport$children$1$1":I
    .local v11, "this_$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListHead;
    .local v12, "cur$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    .local v14, "state":Ljava/lang/Object;
    :goto_2
    move-object v8, v9

    move v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v14

    .line 1494
    .end local v13    # "it":Lkotlinx/coroutines/ChildHandleNode;
    .end local v14    # "state":Ljava/lang/Object;
    .local v8, "this":Lkotlinx/coroutines/JobSupport$children$1;
    .local v9, "$i$a$-let-JobSupport$children$1$1":I
    .local v10, "this_$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListHead;
    .local v11, "cur$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    .local v12, "state":Ljava/lang/Object;
    :cond_6
    invoke-virtual {v11}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->getNextNode()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v11

    .line 1492
    goto :goto_1

    .line 1496
    :cond_7
    nop

    .line 952
    .end local v7    # "$i$f$forEach":I
    .end local v10    # "this_$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListHead;
    .end local v11    # "cur$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    nop

    .line 950
    .end local v6    # "list":Lkotlinx/coroutines/NodeList;
    .end local v9    # "$i$a$-let-JobSupport$children$1$1":I
    move-object v2, v5

    goto :goto_3

    .line 1491
    .end local v1    # "$result":Ljava/lang/Object;
    .end local v12    # "state":Ljava/lang/Object;
    .restart local v2    # "$this$sequence":Lkotlin/sequences/SequenceScope;
    .local v5, "state":Ljava/lang/Object;
    .restart local v6    # "list":Lkotlinx/coroutines/NodeList;
    .local v7, "$i$a$-let-JobSupport$children$1$1":I
    .local v8, "this_$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListHead;
    .local v9, "$i$f$forEach":I
    .restart local p1    # "$result":Ljava/lang/Object;
    :cond_8
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v3, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 953
    .end local v5    # "state":Ljava/lang/Object;
    .end local v6    # "list":Lkotlinx/coroutines/NodeList;
    .end local v7    # "$i$a$-let-JobSupport$children$1$1":I
    .end local v8    # "this_$iv":Lkotlinx/coroutines/internal/LockFreeLinkedListHead;
    .end local v9    # "$i$f$forEach":I
    :cond_9
    move-object/from16 v1, p1

    move-object v8, v0

    .end local p1    # "$result":Ljava/lang/Object;
    .restart local v1    # "$result":Ljava/lang/Object;
    .local v8, "this":Lkotlinx/coroutines/JobSupport$children$1;
    :goto_3
    nop

    .line 954
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v3
.end method
