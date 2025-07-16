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

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lorg/apache/commons/collections/functors/ChainedTransformer;->iTransformers:[Lorg/apache/commons/collections/Transformer;

    return-void
.end method

.method public static getInstance(Ljava/util/Collection;)Lorg/apache/commons/collections/Transformer;
    .locals 4

    if-eqz p0, :cond_2

    .line 75
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 76
    sget-object p0, Lorg/apache/commons/collections/functors/NOPTransformer;->INSTANCE:Lorg/apache/commons/collections/Transformer;

    return-object p0

    .line 79
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/commons/collections/Transformer;

    .line 81
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    .line 82
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/collections/Transformer;

    aput-object v3, v0, v1

    move v1, v2

    goto :goto_0

    .line 84
    :cond_1
    invoke-static {v0}, Lorg/apache/commons/collections/functors/FunctorUtils;->validate([Lorg/apache/commons/collections/Transformer;)V

    .line 85
    new-instance p0, Lorg/apache/commons/collections/functors/ChainedTransformer;

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/functors/ChainedTransformer;-><init>([Lorg/apache/commons/collections/Transformer;)V

    return-object p0

    .line 73
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Transformer collection must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInstance(Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/Transformer;
    .locals 2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/commons/collections/Transformer;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    .line 101
    new-instance p0, Lorg/apache/commons/collections/functors/ChainedTransformer;

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/functors/ChainedTransformer;-><init>([Lorg/apache/commons/collections/Transformer;)V

    return-object p0

    .line 98
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Transformers must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInstance([Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/Transformer;
    .locals 1

    .line 53
    invoke-static {p0}, Lorg/apache/commons/collections/functors/FunctorUtils;->validate([Lorg/apache/commons/collections/Transformer;)V

    .line 54
    array-length v0, p0

    if-nez v0, :cond_0

    .line 55
    sget-object p0, Lorg/apache/commons/collections/functors/NOPTransformer;->INSTANCE:Lorg/apache/commons/collections/Transformer;

    return-object p0

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

    const/4 v0, 0x0

    .line 122
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/collections/functors/ChainedTransformer;->iTransformers:[Lorg/apache/commons/collections/Transformer;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 123
    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lorg/apache/commons/collections/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method
