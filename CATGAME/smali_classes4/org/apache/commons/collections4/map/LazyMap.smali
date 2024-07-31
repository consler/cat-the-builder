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
    .locals 2
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
    .local p0, "this":Lorg/apache/commons/collections4/map/LazyMap;, "Lorg/apache/commons/collections4/map/LazyMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p2, "factory":Lorg/apache/commons/collections4/Factory;, "Lorg/apache/commons/collections4/Factory<+TV;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;-><init>(Ljava/util/Map;)V

    .line 117
    if-eqz p2, :cond_0

    .line 120
    invoke-static {p2}, Lorg/apache/commons/collections4/functors/FactoryTransformer;->factoryTransformer(Lorg/apache/commons/collections4/Factory;)Lorg/apache/commons/collections4/Transformer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/map/LazyMap;->factory:Lorg/apache/commons/collections4/Transformer;

    .line 121
    return-void

    .line 118
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Factory must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected constructor <init>(Ljava/util/Map;Lorg/apache/commons/collections4/Transformer;)V
    .locals 2
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
    .local p0, "this":Lorg/apache/commons/collections4/map/LazyMap;, "Lorg/apache/commons/collections4/map/LazyMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p2, "factory":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TK;+TV;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;-><init>(Ljava/util/Map;)V

    .line 132
    if-eqz p2, :cond_0

    .line 135
    iput-object p2, p0, Lorg/apache/commons/collections4/map/LazyMap;->factory:Lorg/apache/commons/collections4/Transformer;

    .line 136
    return-void

    .line 133
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Factory must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
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
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "factory":Lorg/apache/commons/collections4/Factory;, "Lorg/apache/commons/collections4/Factory<+TV;>;"
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
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "factory":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TK;+TV;>;"
    new-instance v0, Lorg/apache/commons/collections4/map/LazyMap;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/map/LazyMap;-><init>(Ljava/util/Map;Lorg/apache/commons/collections4/Transformer;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 161
    .local p0, "this":Lorg/apache/commons/collections4/map/LazyMap;, "Lorg/apache/commons/collections4/map/LazyMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 162
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/LazyMap;->map:Ljava/util/Map;

    .line 163
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    .local p0, "this":Lorg/apache/commons/collections4/map/LazyMap;, "Lorg/apache/commons/collections4/map/LazyMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 148
    iget-object v0, p0, Lorg/apache/commons/collections4/map/LazyMap;->map:Ljava/util/Map;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 149
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 169
    .local p0, "this":Lorg/apache/commons/collections4/map/LazyMap;, "Lorg/apache/commons/collections4/map/LazyMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/LazyMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    move-object v0, p1

    .line 172
    .local v0, "castKey":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lorg/apache/commons/collections4/map/LazyMap;->factory:Lorg/apache/commons/collections4/Transformer;

    invoke-interface {v1, v0}, Lorg/apache/commons/collections4/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 173
    .local v1, "value":Ljava/lang/Object;, "TV;"
    iget-object v2, p0, Lorg/apache/commons/collections4/map/LazyMap;->map:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    return-object v1

    .line 176
    .end local v0    # "castKey":Ljava/lang/Object;, "TK;"
    .end local v1    # "value":Ljava/lang/Object;, "TV;"
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/LazyMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
