.class public Lorg/apache/commons/collections4/functors/SwitchTransformer;
.super Ljava/lang/Object;
.source "SwitchTransformer.java"

# interfaces
.implements Lorg/apache/commons/collections4/Transformer;
.implements Ljava/io/Serializable;


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
        "TI;TO;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x58e1373f7c2edd14L


# instance fields
.field private final iDefault:Lorg/apache/commons/collections4/Transformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/Transformer<",
            "-TI;+TO;>;"
        }
    .end annotation
.end field

.field private final iPredicates:[Lorg/apache/commons/collections4/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TI;>;"
        }
    .end annotation
.end field

.field private final iTransformers:[Lorg/apache/commons/collections4/Transformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TI;+TO;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Z[Lorg/apache/commons/collections4/Predicate;[Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Transformer;)V
    .locals 1
    .param p1, "clone"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TI;>;[",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TI;+TO;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TI;+TO;>;)V"
        }
    .end annotation

    .line 131
    .local p0, "this":Lorg/apache/commons/collections4/functors/SwitchTransformer;, "Lorg/apache/commons/collections4/functors/SwitchTransformer<TI;TO;>;"
    .local p2, "predicates":[Lorg/apache/commons/collections4/Predicate;, "[Lorg/apache/commons/collections4/Predicate<-TI;>;"
    .local p3, "transformers":[Lorg/apache/commons/collections4/Transformer;, "[Lorg/apache/commons/collections4/Transformer<-TI;+TO;>;"
    .local p4, "defaultTransformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TI;+TO;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    if-eqz p1, :cond_0

    invoke-static {p2}, Lorg/apache/commons/collections4/functors/FunctorUtils;->copy([Lorg/apache/commons/collections4/Predicate;)[Lorg/apache/commons/collections4/Predicate;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/collections4/functors/SwitchTransformer;->iPredicates:[Lorg/apache/commons/collections4/Predicate;

    .line 133
    if-eqz p1, :cond_1

    invoke-static {p3}, Lorg/apache/commons/collections4/functors/FunctorUtils;->copy([Lorg/apache/commons/collections4/Transformer;)[Lorg/apache/commons/collections4/Transformer;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, p3

    :goto_1
    iput-object v0, p0, Lorg/apache/commons/collections4/functors/SwitchTransformer;->iTransformers:[Lorg/apache/commons/collections4/Transformer;

    .line 134
    if-nez p4, :cond_2

    .line 135
    invoke-static {}, Lorg/apache/commons/collections4/functors/ConstantTransformer;->nullTransformer()Lorg/apache/commons/collections4/Transformer;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, p4

    :goto_2
    iput-object v0, p0, Lorg/apache/commons/collections4/functors/SwitchTransformer;->iDefault:Lorg/apache/commons/collections4/Transformer;

    .line 136
    return-void
.end method

.method public constructor <init>([Lorg/apache/commons/collections4/Predicate;[Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Transformer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TI;>;[",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TI;+TO;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TI;+TO;>;)V"
        }
    .end annotation

    .line 149
    .local p0, "this":Lorg/apache/commons/collections4/functors/SwitchTransformer;, "Lorg/apache/commons/collections4/functors/SwitchTransformer<TI;TO;>;"
    .local p1, "predicates":[Lorg/apache/commons/collections4/Predicate;, "[Lorg/apache/commons/collections4/Predicate<-TI;>;"
    .local p2, "transformers":[Lorg/apache/commons/collections4/Transformer;, "[Lorg/apache/commons/collections4/Transformer<-TI;+TO;>;"
    .local p3, "defaultTransformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TI;+TO;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/commons/collections4/functors/SwitchTransformer;-><init>(Z[Lorg/apache/commons/collections4/Predicate;[Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Transformer;)V

    .line 150
    return-void
.end method

.method public static switchTransformer(Ljava/util/Map;)Lorg/apache/commons/collections4/Transformer;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "+",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TI;>;+",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TI;+TO;>;>;)",
            "Lorg/apache/commons/collections4/Transformer<",
            "TI;TO;>;"
        }
    .end annotation

    .line 94
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<+Lorg/apache/commons/collections4/Predicate<-TI;>;+Lorg/apache/commons/collections4/Transformer<-TI;+TO;>;>;"
    if-eqz p0, :cond_4

    .line 97
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 98
    invoke-static {}, Lorg/apache/commons/collections4/functors/ConstantTransformer;->nullTransformer()Lorg/apache/commons/collections4/Transformer;

    move-result-object v0

    return-object v0

    .line 101
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/Transformer;

    .line 102
    .local v0, "defaultTransformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TI;+TO;>;"
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    .line 103
    .local v1, "size":I
    if-nez v1, :cond_2

    .line 104
    if-nez v0, :cond_1

    invoke-static {}, Lorg/apache/commons/collections4/functors/ConstantTransformer;->nullTransformer()Lorg/apache/commons/collections4/Transformer;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    return-object v2

    .line 107
    :cond_2
    new-array v2, v1, [Lorg/apache/commons/collections4/Transformer;

    .line 108
    .local v2, "transformers":[Lorg/apache/commons/collections4/Transformer;, "[Lorg/apache/commons/collections4/Transformer<-TI;+TO;>;"
    new-array v3, v1, [Lorg/apache/commons/collections4/Predicate;

    .line 109
    .local v3, "preds":[Lorg/apache/commons/collections4/Predicate;, "[Lorg/apache/commons/collections4/Predicate<-TI;>;"
    const/4 v4, 0x0

    .line 111
    .local v4, "i":I
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 112
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Lorg/apache/commons/collections4/Predicate<-TI;>;+Lorg/apache/commons/collections4/Transformer<-TI;+TO;>;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/collections4/Predicate;

    aput-object v7, v3, v4

    .line 113
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/collections4/Transformer;

    aput-object v7, v2, v4

    .line 114
    nop

    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Lorg/apache/commons/collections4/Predicate<-TI;>;+Lorg/apache/commons/collections4/Transformer<-TI;+TO;>;>;"
    add-int/lit8 v4, v4, 0x1

    .line 115
    goto :goto_1

    .line 116
    :cond_3
    new-instance v5, Lorg/apache/commons/collections4/functors/SwitchTransformer;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v3, v2, v0}, Lorg/apache/commons/collections4/functors/SwitchTransformer;-><init>(Z[Lorg/apache/commons/collections4/Predicate;[Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Transformer;)V

    return-object v5

    .line 95
    .end local v0    # "defaultTransformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TI;+TO;>;"
    .end local v1    # "size":I
    .end local v2    # "transformers":[Lorg/apache/commons/collections4/Transformer;, "[Lorg/apache/commons/collections4/Transformer<-TI;+TO;>;"
    .end local v3    # "preds":[Lorg/apache/commons/collections4/Predicate;, "[Lorg/apache/commons/collections4/Predicate<-TI;>;"
    .end local v4    # "i":I
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The predicate and transformer map must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static switchTransformer([Lorg/apache/commons/collections4/Predicate;[Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/Transformer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TI;>;[",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TI;+TO;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TI;+TO;>;)",
            "Lorg/apache/commons/collections4/Transformer<",
            "TI;TO;>;"
        }
    .end annotation

    .line 59
    .local p0, "predicates":[Lorg/apache/commons/collections4/Predicate;, "[Lorg/apache/commons/collections4/Predicate<-TI;>;"
    .local p1, "transformers":[Lorg/apache/commons/collections4/Transformer;, "[Lorg/apache/commons/collections4/Transformer<-TI;+TO;>;"
    .local p2, "defaultTransformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TI;+TO;>;"
    invoke-static {p0}, Lorg/apache/commons/collections4/functors/FunctorUtils;->validate([Lorg/apache/commons/collections4/Predicate;)V

    .line 60
    invoke-static {p1}, Lorg/apache/commons/collections4/functors/FunctorUtils;->validate([Lorg/apache/commons/collections4/Transformer;)V

    .line 61
    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_2

    .line 64
    array-length v0, p0

    if-nez v0, :cond_1

    .line 65
    if-nez p2, :cond_0

    invoke-static {}, Lorg/apache/commons/collections4/functors/ConstantTransformer;->nullTransformer()Lorg/apache/commons/collections4/Transformer;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    return-object v0

    .line 68
    :cond_1
    new-instance v0, Lorg/apache/commons/collections4/functors/SwitchTransformer;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections4/functors/SwitchTransformer;-><init>([Lorg/apache/commons/collections4/Predicate;[Lorg/apache/commons/collections4/Transformer;Lorg/apache/commons/collections4/Transformer;)V

    return-object v0

    .line 62
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The predicate and transformer arrays must be the same size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getDefaultTransformer()Lorg/apache/commons/collections4/Transformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TI;+TO;>;"
        }
    .end annotation

    .line 196
    .local p0, "this":Lorg/apache/commons/collections4/functors/SwitchTransformer;, "Lorg/apache/commons/collections4/functors/SwitchTransformer<TI;TO;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/SwitchTransformer;->iDefault:Lorg/apache/commons/collections4/Transformer;

    return-object v0
.end method

.method public getPredicates()[Lorg/apache/commons/collections4/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TI;>;"
        }
    .end annotation

    .line 176
    .local p0, "this":Lorg/apache/commons/collections4/functors/SwitchTransformer;, "Lorg/apache/commons/collections4/functors/SwitchTransformer<TI;TO;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/SwitchTransformer;->iPredicates:[Lorg/apache/commons/collections4/Predicate;

    invoke-static {v0}, Lorg/apache/commons/collections4/functors/FunctorUtils;->copy([Lorg/apache/commons/collections4/Predicate;)[Lorg/apache/commons/collections4/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public getTransformers()[Lorg/apache/commons/collections4/Transformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TI;+TO;>;"
        }
    .end annotation

    .line 186
    .local p0, "this":Lorg/apache/commons/collections4/functors/SwitchTransformer;, "Lorg/apache/commons/collections4/functors/SwitchTransformer<TI;TO;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/SwitchTransformer;->iTransformers:[Lorg/apache/commons/collections4/Transformer;

    invoke-static {v0}, Lorg/apache/commons/collections4/functors/FunctorUtils;->copy([Lorg/apache/commons/collections4/Transformer;)[Lorg/apache/commons/collections4/Transformer;

    move-result-object v0

    return-object v0
.end method

.method public transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)TO;"
        }
    .end annotation

    .line 161
    .local p0, "this":Lorg/apache/commons/collections4/functors/SwitchTransformer;, "Lorg/apache/commons/collections4/functors/SwitchTransformer<TI;TO;>;"
    .local p1, "input":Ljava/lang/Object;, "TI;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/collections4/functors/SwitchTransformer;->iPredicates:[Lorg/apache/commons/collections4/Predicate;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 162
    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lorg/apache/commons/collections4/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 163
    iget-object v1, p0, Lorg/apache/commons/collections4/functors/SwitchTransformer;->iTransformers:[Lorg/apache/commons/collections4/Transformer;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lorg/apache/commons/collections4/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 161
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/SwitchTransformer;->iDefault:Lorg/apache/commons/collections4/Transformer;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
