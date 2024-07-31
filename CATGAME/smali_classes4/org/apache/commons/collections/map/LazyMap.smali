.class public Lorg/apache/commons/collections/map/LazyMap;
.super Lorg/apache/commons/collections/map/AbstractMapDecorator;
.source "LazyMap.java"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x6ee594829e791094L


# instance fields
.field protected final factory:Lorg/apache/commons/collections/Transformer;


# direct methods
.method protected constructor <init>(Ljava/util/Map;Lorg/apache/commons/collections/Factory;)V
    .locals 2
    .param p1, "map"    # Ljava/util/Map;
    .param p2, "factory"    # Lorg/apache/commons/collections/Factory;

    .line 106
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/AbstractMapDecorator;-><init>(Ljava/util/Map;)V

    .line 107
    if-eqz p2, :cond_0

    .line 110
    invoke-static {p2}, Lorg/apache/commons/collections/functors/FactoryTransformer;->getInstance(Lorg/apache/commons/collections/Factory;)Lorg/apache/commons/collections/Transformer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/map/LazyMap;->factory:Lorg/apache/commons/collections/Transformer;

    .line 111
    return-void

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Factory must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected constructor <init>(Ljava/util/Map;Lorg/apache/commons/collections/Transformer;)V
    .locals 2
    .param p1, "map"    # Ljava/util/Map;
    .param p2, "factory"    # Lorg/apache/commons/collections/Transformer;

    .line 121
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/AbstractMapDecorator;-><init>(Ljava/util/Map;)V

    .line 122
    if-eqz p2, :cond_0

    .line 125
    iput-object p2, p0, Lorg/apache/commons/collections/map/LazyMap;->factory:Lorg/apache/commons/collections/Transformer;

    .line 126
    return-void

    .line 123
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Factory must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static decorate(Ljava/util/Map;Lorg/apache/commons/collections/Factory;)Ljava/util/Map;
    .locals 1
    .param p0, "map"    # Ljava/util/Map;
    .param p1, "factory"    # Lorg/apache/commons/collections/Factory;

    .line 83
    new-instance v0, Lorg/apache/commons/collections/map/LazyMap;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/map/LazyMap;-><init>(Ljava/util/Map;Lorg/apache/commons/collections/Factory;)V

    return-object v0
.end method

.method public static decorate(Ljava/util/Map;Lorg/apache/commons/collections/Transformer;)Ljava/util/Map;
    .locals 1
    .param p0, "map"    # Ljava/util/Map;
    .param p1, "factory"    # Lorg/apache/commons/collections/Transformer;

    .line 94
    new-instance v0, Lorg/apache/commons/collections/map/LazyMap;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/map/LazyMap;-><init>(Ljava/util/Map;Lorg/apache/commons/collections/Transformer;)V

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

    .line 150
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 151
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lorg/apache/commons/collections/map/LazyMap;->map:Ljava/util/Map;

    .line 152
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

    .line 137
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 138
    iget-object v0, p0, Lorg/apache/commons/collections/map/LazyMap;->map:Ljava/util/Map;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 139
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .line 157
    iget-object v0, p0, Lorg/apache/commons/collections/map/LazyMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lorg/apache/commons/collections/map/LazyMap;->factory:Lorg/apache/commons/collections/Transformer;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 159
    .local v0, "value":Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/commons/collections/map/LazyMap;->map:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    return-object v0

    .line 162
    .end local v0    # "value":Ljava/lang/Object;
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/LazyMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
