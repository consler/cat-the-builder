.class public Lorg/apache/commons/collections/functors/ChainedTransformer;
.super Ljava/lang/Object;
.source "ChainedTransformer.java"

# interfaces
.implements Lorg/apache/commons/collections/Transformer;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x30c797ec287a9704L


# instance fields
.field private final iTransformers:[Lorg/apache/commons/collections/Transformer;


# direct methods
.method public constructor <init>([Lorg/apache/commons/collections/Transformer;)V
    .locals 0
    .param p1, "transformers"    # [Lorg/apache/commons/collections/Transformer;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lorg/apache/commons/collections/functors/ChainedTransformer;->iTransformers:[Lorg/apache/commons/collections/Transformer;

    .line 113
    return-void
.end method

.method public static getInstance(Ljava/util/Collection;)Lorg/apache/commons/collections/Transformer;
    .locals 5
    .param p0, "transformers"    # Ljava/util/Collection;

    .line 72
    if-eqz p0, :cond_2

    .line 75
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 76
    sget-object v0, Lorg/apache/commons/collections/functors/NOPTransformer;->INSTANCE:Lorg/apache/commons/collections/Transformer;

    return-object v0

    .line 79
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/commons/collections/Transformer;

    .line 80
    .local v0, "cmds":[Lorg/apache/commons/collections/Transformer;
    const/4 v1, 0x0

    .line 81
    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 82
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "i":I
    .local v3, "i":I
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/collections/Transformer;

    aput-object v4, v0, v1

    move v1, v3

    goto :goto_0

    .line 84
    .end local v2    # "it":Ljava/util/Iterator;
    .end local v3    # "i":I
    .restart local v1    # "i":I
    :cond_1
    invoke-static {v0}, Lorg/apache/commons/collections/functors/FunctorUtils;->validate([Lorg/apache/commons/collections/Transformer;)V

    .line 85
    new-instance v2, Lorg/apache/commons/collections/functors/ChainedTransformer;

    invoke-direct {v2, v0}, Lorg/apache/commons/collections/functors/ChainedTransformer;-><init>([Lorg/apache/commons/collections/Transformer;)V

    return-object v2

    .line 73
    .end local v0    # "cmds":[Lorg/apache/commons/collections/Transformer;
    .end local v1    # "i":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Transformer collection must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/Transformer;
    .locals 2
    .param p0, "transformer1"    # Lorg/apache/commons/collections/Transformer;
    .param p1, "transformer2"    # Lorg/apache/commons/collections/Transformer;

    .line 97
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 100
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/commons/collections/Transformer;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 101
    .local v0, "transformers":[Lorg/apache/commons/collections/Transformer;
    new-instance v1, Lorg/apache/commons/collections/functors/ChainedTransformer;

    invoke-direct {v1, v0}, Lorg/apache/commons/collections/functors/ChainedTransformer;-><init>([Lorg/apache/commons/collections/Transformer;)V

    return-object v1

    .line 98
    .end local v0    # "transformers":[Lorg/apache/commons/collections/Transformer;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Transformers must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance([Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/Transformer;
    .locals 1
    .param p0, "transformers"    # [Lorg/apache/commons/collections/Transformer;

    .line 53
    invoke-static {p0}, Lorg/apache/commons/collections/functors/FunctorUtils;->validate([Lorg/apache/commons/collections/Transformer;)V

    .line 54
    array-length v0, p0

    if-nez v0, :cond_0

    .line 55
    sget-object v0, Lorg/apache/commons/collections/functors/NOPTransformer;->INSTANCE:Lorg/apache/commons/collections/Transformer;

    return-object v0

    .line 57
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/collections/functors/FunctorUtils;->copy([Lorg/apache/commons/collections/Transformer;)[Lorg/apache/commons/collections/Transformer;

    move-result-object p0

    .line 58
    new-instance v0, Lorg/apache/commons/collections/functors/ChainedTransformer;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/functors/ChainedTransformer;-><init>([Lorg/apache/commons/collections/Transformer;)V

    return-object v0
.end method


# virtual methods
.method public getTransformers()[Lorg/apache/commons/collections/Transformer;
    .locals 1

    .line 134
    iget-object v0, p0, Lorg/apache/commons/collections/functors/ChainedTransformer;->iTransformers:[Lorg/apache/commons/collections/Transformer;

    return-object v0
.end method

.method public transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .line 122
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/collections/functors/ChainedTransformer;->iTransformers:[Lorg/apache/commons/collections/Transformer;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 123
    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lorg/apache/commons/collections/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    .end local v0    # "i":I
    :cond_0
    return-object p1
.end method
