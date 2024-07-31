.class final Lkotlinx/coroutines/JobSupport$Finishing;
.super Ljava/lang/Object;
.source "JobSupport.kt"

# interfaces
.implements Lkotlinx/coroutines/Incomplete;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/JobSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Finishing"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJobSupport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/JobSupport$Finishing\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1490:1\n1#2:1491\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0008\u0002\u0018\u00002\u00060\u0018j\u0002`,2\u00020-B!\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001f\u0010\u000f\u001a\u0012\u0012\u0004\u0012\u00020\u00050\rj\u0008\u0012\u0004\u0012\u00020\u0005`\u000eH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001d\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00122\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017R(\u0010\u001e\u001a\u0004\u0018\u00010\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u00188B@BX\u0082\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u0016\u0010\u001f\u001a\u00020\u00038V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010 R\u0013\u0010!\u001a\u00020\u00038F@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010 R$\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u00038F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0004\u0010 \"\u0004\u0008\"\u0010#R\u0013\u0010$\u001a\u00020\u00038F@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008$\u0010 R\u001c\u0010\u0002\u001a\u00020\u00018\u0016@\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0002\u0010%\u001a\u0004\u0008&\u0010\'R(\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u00058F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010\u000c\u00a8\u0006+"
    }
    d2 = {
        "Lkotlinx/coroutines/JobSupport$Finishing;",
        "Lkotlinx/coroutines/NodeList;",
        "list",
        "",
        "isCompleting",
        "",
        "rootCause",
        "<init>",
        "(Lkotlinx/coroutines/NodeList;ZLjava/lang/Throwable;)V",
        "exception",
        "",
        "addExceptionLocked",
        "(Ljava/lang/Throwable;)V",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "allocateList",
        "()Ljava/util/ArrayList;",
        "proposedException",
        "",
        "sealLocked",
        "(Ljava/lang/Throwable;)Ljava/util/List;",
        "",
        "toString",
        "()Ljava/lang/String;",
        "",
        "value",
        "getExceptionsHolder",
        "()Ljava/lang/Object;",
        "setExceptionsHolder",
        "(Ljava/lang/Object;)V",
        "exceptionsHolder",
        "isActive",
        "()Z",
        "isCancelling",
        "setCompleting",
        "(Z)V",
        "isSealed",
        "Lkotlinx/coroutines/NodeList;",
        "getList",
        "()Lkotlinx/coroutines/NodeList;",
        "getRootCause",
        "()Ljava/lang/Throwable;",
        "setRootCause",
        "kotlinx-coroutines-core",
        "Lkotlinx/coroutines/internal/SynchronizedObject;",
        "Lkotlinx/coroutines/Incomplete;"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field private volatile _exceptionsHolder:Ljava/lang/Object;

.field private volatile _isCompleting:I

.field private volatile _rootCause:Ljava/lang/Object;

.field private final list:Lkotlinx/coroutines/NodeList;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/NodeList;ZLjava/lang/Throwable;)V
    .locals 1
    .param p1, "list"    # Lkotlinx/coroutines/NodeList;
    .param p2, "isCompleting"    # Z
    .param p3, "rootCause"    # Ljava/lang/Throwable;

    .line 1071
    nop

    .line 1075
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/JobSupport$Finishing;->list:Lkotlinx/coroutines/NodeList;

    .line 1076
    iput p2, p0, Lkotlinx/coroutines/JobSupport$Finishing;->_isCompleting:I

    .line 1081
    iput-object p3, p0, Lkotlinx/coroutines/JobSupport$Finishing;->_rootCause:Ljava/lang/Object;

    .line 1086
    const/4 v0, 0x0

    iput-object v0, p0, Lkotlinx/coroutines/JobSupport$Finishing;->_exceptionsHolder:Ljava/lang/Object;

    return-void
.end method

.method private final allocateList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 1135
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method private final getExceptionsHolder()Ljava/lang/Object;
    .locals 1

    .line 1088
    iget-object v0, p0, Lkotlinx/coroutines/JobSupport$Finishing;->_exceptionsHolder:Ljava/lang/Object;

    return-object v0
.end method

.method private final setExceptionsHolder(Ljava/lang/Object;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;

    .line 1089
    iput-object p1, p0, Lkotlinx/coroutines/JobSupport$Finishing;->_exceptionsHolder:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final addExceptionLocked(Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "exception"    # Ljava/lang/Throwable;

    .line 1114
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport$Finishing;->getRootCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 1115
    .local v0, "rootCause":Ljava/lang/Throwable;
    if-nez v0, :cond_0

    .line 1116
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport$Finishing;->setRootCause(Ljava/lang/Throwable;)V

    .line 1117
    return-void

    .line 1119
    :cond_0
    if-ne p1, v0, :cond_1

    return-void

    .line 1120
    :cond_1
    invoke-direct {p0}, Lkotlinx/coroutines/JobSupport$Finishing;->getExceptionsHolder()Ljava/lang/Object;

    move-result-object v1

    .local v1, "eh":Ljava/lang/Object;
    if-nez v1, :cond_2

    .line 1121
    invoke-direct {p0, p1}, Lkotlinx/coroutines/JobSupport$Finishing;->setExceptionsHolder(Ljava/lang/Object;)V

    goto :goto_0

    .line 1122
    :cond_2
    instance-of v2, v1, Ljava/lang/Throwable;

    if-eqz v2, :cond_4

    .line 1123
    if-ne p1, v1, :cond_3

    return-void

    .line 1124
    :cond_3
    invoke-direct {p0}, Lkotlinx/coroutines/JobSupport$Finishing;->allocateList()Ljava/util/ArrayList;

    move-result-object v2

    move-object v3, v2

    .local v3, "$this$apply":Ljava/util/ArrayList;
    const/4 v4, 0x0

    .line 1125
    .local v4, "$i$a$-apply-JobSupport$Finishing$addExceptionLocked$1":I
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1126
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1128
    .end local v3    # "$this$apply":Ljava/util/ArrayList;
    .end local v4    # "$i$a$-apply-JobSupport$Finishing$addExceptionLocked$1":I
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1124
    invoke-direct {p0, v2}, Lkotlinx/coroutines/JobSupport$Finishing;->setExceptionsHolder(Ljava/lang/Object;)V

    goto :goto_0

    .line 1130
    :cond_4
    instance-of v2, v1, Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    move-object v2, v1

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1132
    .end local v1    # "eh":Ljava/lang/Object;
    :goto_0
    nop

    .line 1133
    return-void

    .line 1131
    .restart local v1    # "eh":Ljava/lang/Object;
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3
.end method

.method public getList()Lkotlinx/coroutines/NodeList;
    .locals 1

    .line 1072
    iget-object v0, p0, Lkotlinx/coroutines/JobSupport$Finishing;->list:Lkotlinx/coroutines/NodeList;

    return-object v0
.end method

.method public final getRootCause()Ljava/lang/Throwable;
    .locals 1

    .line 1083
    iget-object v0, p0, Lkotlinx/coroutines/JobSupport$Finishing;->_rootCause:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .line 1094
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport$Finishing;->getRootCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isCancelling()Z
    .locals 1

    .line 1093
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport$Finishing;->getRootCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isCompleting()Z
    .locals 1

    .line 1078
    iget v0, p0, Lkotlinx/coroutines/JobSupport$Finishing;->_isCompleting:I

    return v0
.end method

.method public final isSealed()Z
    .locals 2

    .line 1092
    invoke-direct {p0}, Lkotlinx/coroutines/JobSupport$Finishing;->getExceptionsHolder()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/JobSupportKt;->access$getSEALED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final sealLocked(Ljava/lang/Throwable;)Ljava/util/List;
    .locals 5
    .param p1, "proposedException"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 1099
    invoke-direct {p0}, Lkotlinx/coroutines/JobSupport$Finishing;->getExceptionsHolder()Ljava/lang/Object;

    move-result-object v0

    .local v0, "eh":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 1100
    invoke-direct {p0}, Lkotlinx/coroutines/JobSupport$Finishing;->allocateList()Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0

    .line 1101
    :cond_0
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lkotlinx/coroutines/JobSupport$Finishing;->allocateList()Ljava/util/ArrayList;

    move-result-object v1

    move-object v2, v1

    .line 1491
    .local v2, "it":Ljava/util/ArrayList;
    const/4 v3, 0x0

    .line 1101
    .local v3, "$i$a$-also-JobSupport$Finishing$sealLocked$list$1":I
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v2    # "it":Ljava/util/ArrayList;
    .end local v3    # "$i$a$-also-JobSupport$Finishing$sealLocked$list$1":I
    goto :goto_0

    .line 1102
    :cond_1
    instance-of v1, v0, Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Ljava/util/ArrayList;

    .line 1099
    .end local v0    # "eh":Ljava/lang/Object;
    :goto_0
    move-object v0, v1

    .line 1105
    .local v0, "list":Ljava/util/ArrayList;
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport$Finishing;->getRootCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 1106
    .local v1, "rootCause":Ljava/lang/Throwable;
    if-eqz v1, :cond_2

    move-object v2, v1

    .line 1491
    .local v2, "it":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 1106
    .local v3, "$i$a$-let-JobSupport$Finishing$sealLocked$1":I
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1107
    .end local v2    # "it":Ljava/lang/Throwable;
    .end local v3    # "$i$a$-let-JobSupport$Finishing$sealLocked$1":I
    :cond_2
    if-eqz p1, :cond_3

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1108
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/JobSupportKt;->access$getSEALED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v2

    invoke-direct {p0, v2}, Lkotlinx/coroutines/JobSupport$Finishing;->setExceptionsHolder(Ljava/lang/Object;)V

    .line 1109
    move-object v2, v0

    check-cast v2, Ljava/util/List;

    return-object v2

    .line 1103
    .end local v1    # "rootCause":Ljava/lang/Throwable;
    .local v0, "eh":Ljava/lang/Object;
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public final setCompleting(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 1079
    iput p1, p0, Lkotlinx/coroutines/JobSupport$Finishing;->_isCompleting:I

    return-void
.end method

.method public final setRootCause(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Throwable;

    .line 1084
    iput-object p1, p0, Lkotlinx/coroutines/JobSupport$Finishing;->_rootCause:Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finishing[cancelling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport$Finishing;->isCancelling()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", completing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport$Finishing;->isCompleting()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", rootCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport$Finishing;->getRootCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", exceptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lkotlinx/coroutines/JobSupport$Finishing;->getExceptionsHolder()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", list="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport$Finishing;->getList()Lkotlinx/coroutines/NodeList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
