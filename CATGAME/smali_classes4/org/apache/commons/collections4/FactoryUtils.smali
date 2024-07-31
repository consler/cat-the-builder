.class public Lorg/apache/commons/collections4/FactoryUtils;
.super Ljava/lang/Object;
.source "FactoryUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static constantFactory(Ljava/lang/Object;)Lorg/apache/commons/collections4/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lorg/apache/commons/collections4/Factory<",
            "TT;>;"
        }
    .end annotation

    .line 89
    .local p0, "constantToReturn":Ljava/lang/Object;, "TT;"
    invoke-static {p0}, Lorg/apache/commons/collections4/functors/ConstantFactory;->constantFactory(Ljava/lang/Object;)Lorg/apache/commons/collections4/Factory;

    move-result-object v0

    return-object v0
.end method

.method public static exceptionFactory()Lorg/apache/commons/collections4/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/commons/collections4/Factory<",
            "TT;>;"
        }
    .end annotation

    .line 61
    invoke-static {}, Lorg/apache/commons/collections4/functors/ExceptionFactory;->exceptionFactory()Lorg/apache/commons/collections4/Factory;

    move-result-object v0

    return-object v0
.end method

.method public static instantiateFactory(Ljava/lang/Class;)Lorg/apache/commons/collections4/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lorg/apache/commons/collections4/Factory<",
            "TT;>;"
        }
    .end annotation

    .line 127
    .local p0, "classToInstantiate":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lorg/apache/commons/collections4/functors/InstantiateFactory;->instantiateFactory(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Lorg/apache/commons/collections4/Factory;

    move-result-object v0

    return-object v0
.end method

.method public static instantiateFactory(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Lorg/apache/commons/collections4/Factory;
    .locals 1
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/commons/collections4/Factory<",
            "TT;>;"
        }
    .end annotation

    .line 147
    .local p0, "classToInstantiate":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p0, p1, p2}, Lorg/apache/commons/collections4/functors/InstantiateFactory;->instantiateFactory(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Lorg/apache/commons/collections4/Factory;

    move-result-object v0

    return-object v0
.end method

.method public static nullFactory()Lorg/apache/commons/collections4/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/commons/collections4/Factory<",
            "TT;>;"
        }
    .end annotation

    .line 73
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/apache/commons/collections4/functors/ConstantFactory;->constantFactory(Ljava/lang/Object;)Lorg/apache/commons/collections4/Factory;

    move-result-object v0

    return-object v0
.end method

.method public static prototypeFactory(Ljava/lang/Object;)Lorg/apache/commons/collections4/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lorg/apache/commons/collections4/Factory<",
            "TT;>;"
        }
    .end annotation

    .line 112
    .local p0, "prototype":Ljava/lang/Object;, "TT;"
    invoke-static {p0}, Lorg/apache/commons/collections4/functors/PrototypeFactory;->prototypeFactory(Ljava/lang/Object;)Lorg/apache/commons/collections4/Factory;

    move-result-object v0

    return-object v0
.end method
