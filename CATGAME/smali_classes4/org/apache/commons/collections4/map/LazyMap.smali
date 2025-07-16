.class public Lorg/apache/commons/collections4/map/LazyMap;
.super Lorg/apache/commons/collections4/map/AbstractMapDecorator;
.source "LazyMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/map/AbstractMapDecorator<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6ee594829e791094L


# instance fields
.field protected final factory:Lorg/apache/commons/collections4/Transformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/Transformer<",
            "-TK;+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/Map;Lorg/apache/commons/collections4/Factory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/Factory<",
            "+TV;>;)V"
        }
    .end annotation

    .line 116
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;-><init>(Ljava/util/Map;)V

    if-eqz p2, :cond_0

    .line 120
    invoke-static {p2}, Lorg/apache/commons/collections4/functors/FactoryTransformer;->factoryTransformer(Lorg/apache/commons/collections4/Factory;)Lorg/apache/commons/collections4/Transformer;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/collections4/map/LazyMap;->factory:Lorg/apache/commons/collections4/Transformer;

    return-void

    .line 118
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Factory must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected constructor <init>(Ljava/util/Map;Lorg/apache/commons/collections4/Transformer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TK;+TV;>;)V"
        }
    .end annotation

    .line 131
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;-><init>(Ljava/util/Map;)V

    if-eqz p2, :cond_0

    .line 135
    iput-object p2, p0, Lorg/apache/commons/collections4/map/LazyMap;->factory:Lorg/apache/commons/collections4/Transformer;

    return-void

    .line 133
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Factory must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static lazyMap(Ljava/util/Map;Lorg/apache/commons/collections4/Factory;)Lorg/apache/commons/collections4/map/LazyMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/Factory<",
            "+TV;>;)",
            "Lorg/apache/commons/collections4/map/LazyMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 89
    new-instance v0, Lorg/apache/commons/collections4/map/LazyMap;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/map/LazyMap;-><init>(Ljava/util/Map;Lorg/apache/commons/collections4/Factory;)V

    return-object v0
.end method

.method public static lazyMap(Ljava/util/Map;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/map/LazyMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TK;+TV;>;)",
            "Lorg/apache/commons/collections4/map/LazyMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 104
    new-instance v0, Lorg/apache/commons/collections4/map/LazyMap;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/map/LazyMap;-><init>(Ljava/util/Map;Lorg/apache/commons/collections4/Transformer;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 161
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 162
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lorg/apache/commons/collections4/map/LazyMap;->map:Ljava/util/Map;

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 148
    iget-object v0, p0, Lorg/apache/commons/collections4/map/LazyMap;->map:Ljava/util/Map;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lorg/apache/commons/collections4/map/LazyMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lorg/apache/commons/collections4/map/LazyMap;->factory:Lorg/apache/commons/collections4/Transformer;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 173
    iget-object v1, p0, Lorg/apache/commons/collections4/map/LazyMap;->map:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 176
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/LazyMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
