.class public Lorg/apache/commons/collections4/functors/InvokerTransformer;
.super Ljava/lang/Object;
.source "InvokerTransformer.java"

# interfaces
.implements Lorg/apache/commons/collections4/Transformer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/Transformer<",
        "TI;TO;>;"
    }
.end annotation


# instance fields
.field private final iArgs:[Ljava/lang/Object;

.field private final iMethodName:Ljava/lang/String;

.field private final iParamTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "methodName"    # Ljava/lang/String;

    .line 96
    .local p0, "this":Lorg/apache/commons/collections4/functors/InvokerTransformer;, "Lorg/apache/commons/collections4/functors/InvokerTransformer<TI;TO;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lorg/apache/commons/collections4/functors/InvokerTransformer;->iMethodName:Ljava/lang/String;

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections4/functors/InvokerTransformer;->iParamTypes:[Ljava/lang/Class;

    .line 99
    iput-object v0, p0, Lorg/apache/commons/collections4/functors/InvokerTransformer;->iArgs:[Ljava/lang/Object;

    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "methodName"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 113
    .local p0, "this":Lorg/apache/commons/collections4/functors/InvokerTransformer;, "Lorg/apache/commons/collections4/functors/InvokerTransformer<TI;TO;>;"
    .local p2, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lorg/apache/commons/collections4/functors/InvokerTransformer;->iMethodName:Ljava/lang/String;

    .line 115
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, [Ljava/lang/Class;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Class;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lorg/apache/commons/collections4/functors/InvokerTransformer;->iParamTypes:[Ljava/lang/Class;

    .line 116
    if-eqz p3, :cond_1

    invoke-virtual {p3}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    :cond_1
    iput-object v0, p0, Lorg/apache/commons/collections4/functors/InvokerTransformer;->iArgs:[Ljava/lang/Object;

    .line 117
    return-void
.end method

.method public static invokerTransformer(Ljava/lang/String;)Lorg/apache/commons/collections4/Transformer;
    .locals 2
    .param p0, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/commons/collections4/Transformer<",
            "TI;TO;>;"
        }
    .end annotation

    .line 56
    if-eqz p0, :cond_0

    .line 59
    new-instance v0, Lorg/apache/commons/collections4/functors/InvokerTransformer;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/functors/InvokerTransformer;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The method to invoke must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static invokerTransformer(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lorg/apache/commons/collections4/Transformer;
    .locals 2
    .param p0, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/commons/collections4/Transformer<",
            "TI;TO;>;"
        }
    .end annotation

    .line 76
    .local p1, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz p0, :cond_6

    .line 79
    if-nez p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 82
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The parameter types must match the arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_3
    :goto_0
    if-eqz p1, :cond_5

    array-length v0, p1

    if-nez v0, :cond_4

    goto :goto_1

    .line 87
    :cond_4
    new-instance v0, Lorg/apache/commons/collections4/functors/InvokerTransformer;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections4/functors/InvokerTransformer;-><init>(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V

    return-object v0

    .line 85
    :cond_5
    :goto_1
    new-instance v0, Lorg/apache/commons/collections4/functors/InvokerTransformer;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/functors/InvokerTransformer;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 77
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The method to invoke must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "input"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TO;"
        }
    .end annotation

    .line 128
    .local p0, "this":Lorg/apache/commons/collections4/functors/InvokerTransformer;, "Lorg/apache/commons/collections4/functors/InvokerTransformer<TI;TO;>;"
    const-string v0, "\' on \'"

    const-string v1, "InvokerTransformer: The method \'"

    if-nez p1, :cond_0

    .line 129
    const/4 v0, 0x0

    return-object v0

    .line 132
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 133
    .local v2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v3, p0, Lorg/apache/commons/collections4/functors/InvokerTransformer;->iMethodName:Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/commons/collections4/functors/InvokerTransformer;->iParamTypes:[Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 134
    .local v3, "method":Ljava/lang/reflect/Method;
    iget-object v4, p0, Lorg/apache/commons/collections4/functors/InvokerTransformer;->iArgs:[Ljava/lang/Object;

    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 141
    .end local v2    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 142
    .local v2, "ex":Ljava/lang/reflect/InvocationTargetException;
    new-instance v3, Lorg/apache/commons/collections4/FunctorException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/collections4/functors/InvokerTransformer;->iMethodName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\' threw an exception"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Lorg/apache/commons/collections4/FunctorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 138
    .end local v2    # "ex":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v2

    .line 139
    .local v2, "ex":Ljava/lang/IllegalAccessException;
    new-instance v3, Lorg/apache/commons/collections4/FunctorException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/collections4/functors/InvokerTransformer;->iMethodName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\' cannot be accessed"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/commons/collections4/FunctorException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 135
    .end local v2    # "ex":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    .line 136
    .local v2, "ex":Ljava/lang/NoSuchMethodException;
    new-instance v3, Lorg/apache/commons/collections4/FunctorException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/collections4/functors/InvokerTransformer;->iMethodName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\' does not exist"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/commons/collections4/FunctorException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
