.class public abstract Lorg/koin/core/instance/InstanceFactory;
.super Ljava/lang/Object;
.source "InstanceFactory.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/koin/core/instance/InstanceFactory$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInstanceFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InstanceFactory.kt\norg/koin/core/instance/InstanceFactory\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,76:1\n4988#2,7:77\n*E\n*S KotlinDebug\n*F\n+ 1 InstanceFactory.kt\norg/koin/core/instance/InstanceFactory\n*L\n56#1,7:77\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008&\u0018\u0000 \u0013*\u0004\u0008\u0000\u0010\u00012\u00020\u0002:\u0001\u0013B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u00a2\u0006\u0002\u0010\u0007J\u0015\u0010\n\u001a\u00028\u00002\u0006\u0010\u000b\u001a\u00020\u000cH\u0016\u00a2\u0006\u0002\u0010\rJ\u0008\u0010\u000e\u001a\u00020\u000fH&J\u0015\u0010\u0010\u001a\u00028\u00002\u0006\u0010\u000b\u001a\u00020\u000cH&\u00a2\u0006\u0002\u0010\rJ\u0008\u0010\u0011\u001a\u00020\u0012H&R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0014"
    }
    d2 = {
        "Lorg/koin/core/instance/InstanceFactory;",
        "T",
        "",
        "_koin",
        "Lorg/koin/core/Koin;",
        "beanDefinition",
        "Lorg/koin/core/definition/BeanDefinition;",
        "(Lorg/koin/core/Koin;Lorg/koin/core/definition/BeanDefinition;)V",
        "getBeanDefinition",
        "()Lorg/koin/core/definition/BeanDefinition;",
        "create",
        "context",
        "Lorg/koin/core/instance/InstanceContext;",
        "(Lorg/koin/core/instance/InstanceContext;)Ljava/lang/Object;",
        "drop",
        "",
        "get",
        "isCreated",
        "",
        "Companion",
        "koin-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final Companion:Lorg/koin/core/instance/InstanceFactory$Companion;

.field public static final ERROR_SEPARATOR:Ljava/lang/String; = "\n\t"


# instance fields
.field private final _koin:Lorg/koin/core/Koin;

.field private final beanDefinition:Lorg/koin/core/definition/BeanDefinition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/koin/core/definition/BeanDefinition<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/koin/core/instance/InstanceFactory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/koin/core/instance/InstanceFactory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/koin/core/instance/InstanceFactory;->Companion:Lorg/koin/core/instance/InstanceFactory$Companion;

    return-void
.end method

.method public constructor <init>(Lorg/koin/core/Koin;Lorg/koin/core/definition/BeanDefinition;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/koin/core/Koin;",
            "Lorg/koin/core/definition/BeanDefinition<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "_koin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "beanDefinition"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/koin/core/instance/InstanceFactory;->_koin:Lorg/koin/core/Koin;

    iput-object p2, p0, Lorg/koin/core/instance/InstanceFactory;->beanDefinition:Lorg/koin/core/definition/BeanDefinition;

    return-void
.end method


# virtual methods
.method public create(Lorg/koin/core/instance/InstanceContext;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/koin/core/instance/InstanceContext;",
            ")TT;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lorg/koin/core/instance/InstanceFactory;->_koin:Lorg/koin/core/Koin;

    invoke-virtual {v0}, Lorg/koin/core/Koin;->get_logger()Lorg/koin/core/logger/Logger;

    move-result-object v0

    sget-object v1, Lorg/koin/core/logger/Level;->DEBUG:Lorg/koin/core/logger/Level;

    invoke-virtual {v0, v1}, Lorg/koin/core/logger/Logger;->isAt(Lorg/koin/core/logger/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lorg/koin/core/instance/InstanceFactory;->_koin:Lorg/koin/core/Koin;

    invoke-virtual {v0}, Lorg/koin/core/Koin;->get_logger()Lorg/koin/core/logger/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "| create instance for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/koin/core/instance/InstanceFactory;->beanDefinition:Lorg/koin/core/definition/BeanDefinition;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/koin/core/logger/Logger;->debug(Ljava/lang/String;)V

    .line 49
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lorg/koin/core/instance/InstanceContext;->getParameters()Lorg/koin/core/parameter/DefinitionParameters;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lorg/koin/core/instance/InstanceFactory;->beanDefinition:Lorg/koin/core/definition/BeanDefinition;

    invoke-virtual {v1}, Lorg/koin/core/definition/BeanDefinition;->getDefinition()Lkotlin/jvm/functions/Function2;

    move-result-object v1

    .line 51
    invoke-virtual {p1}, Lorg/koin/core/instance/InstanceContext;->getScope()Lorg/koin/core/scope/Scope;

    move-result-object p1

    .line 50
    invoke-interface {v1, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const-string v3, "e.stackTrace"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 78
    array-length v4, v2

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_1

    aget-object v7, v2, v6

    const-string v8, "it"

    .line 56
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "it.className"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Ljava/lang/CharSequence;

    const-string v9, "sun.reflect"

    check-cast v9, Ljava/lang/CharSequence;

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-static {v8, v9, v5, v10, v11}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_1

    .line 81
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 83
    :cond_1
    check-cast v3, Ljava/util/List;

    move-object v4, v3

    check-cast v4, Ljava/lang/Iterable;

    .line 57
    move-object v5, v1

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x3e

    const/4 v12, 0x0

    invoke-static/range {v4 .. v12}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lorg/koin/core/instance/InstanceFactory;->_koin:Lorg/koin/core/Koin;

    invoke-virtual {v1}, Lorg/koin/core/Koin;->get_logger()Lorg/koin/core/logger/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Instance creation error : could not create instance for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/koin/core/instance/InstanceFactory;->beanDefinition:Lorg/koin/core/definition/BeanDefinition;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/koin/core/logger/Logger;->error(Ljava/lang/String;)V

    .line 59
    new-instance v0, Lorg/koin/core/error/InstanceCreationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not create instance for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/koin/core/instance/InstanceFactory;->beanDefinition:Lorg/koin/core/definition/BeanDefinition;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/koin/core/error/InstanceCreationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public abstract drop()V
.end method

.method public abstract get(Lorg/koin/core/instance/InstanceContext;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/koin/core/instance/InstanceContext;",
            ")TT;"
        }
    .end annotation
.end method

.method public final getBeanDefinition()Lorg/koin/core/definition/BeanDefinition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/koin/core/definition/BeanDefinition<",
            "TT;>;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lorg/koin/core/instance/InstanceFactory;->beanDefinition:Lorg/koin/core/definition/BeanDefinition;

    return-object v0
.end method

.method public abstract isCreated()Z
.end method
