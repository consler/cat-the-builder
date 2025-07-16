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
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/AbstractMapDecorator;-><init>(Ljava/util/Map;)V

    if-eqz p2, :cond_0

    .line 110
    invoke-static {p2}, Lorg/apache/commons/collections/functors/FactoryTransformer;->getInstance(Lorg/apache/commons/collections/Factory;)Lorg/apache/commons/collections/Transformer;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/collections/map/LazyMap;->factory:Lorg/apache/commons/collections/Transformer;

    return-void

    .line 108
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Factory must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected constructor <init>(Ljava/util/Map;Lorg/apache/commons/collections/Transformer;)V
    .locals 0

    .line 121
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/AbstractMapDecorator;-><init>(Ljava/util/Map;)V

    if-eqz p2, :cond_0

    .line 125
    iput-object p2, p0, Lorg/apache/commons/collections/map/LazyMap;->factory:Lorg/apache/commons/collections/Transformer;

    return-void

    .line 123
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Factory must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static decorate(Ljava/util/Map;Lorg/apache/commons/collections/Factory;)Ljava/util/Map;
    .locals 1

    .line 83
    new-instance v0, Lorg/apache/commons/collections/map/LazyMap;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/map/LazyMap;-><init>(Ljava/util/Map;Lorg/apache/commons/collections/Factory;)V

    return-object v0
.end method

.method public static decorate(Ljava/util/Map;Lorg/apache/commons/collections/Transformer;)Ljava/util/Map;
    .locals 1

    .line 94
    new-instance v0, Lorg/apache/commons/collections/map/LazyMap;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/map/LazyMap;-><init>(Ljava/util/Map;Lorg/apache/commons/collections/Transformer;)V

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

    .line 150
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 151
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lorg/apache/commons/collections/map/LazyMap;->map:Ljava/util/Map;

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
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

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

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
    iget-object v1, p0, Lorg/apache/commons/collections/map/LazyMap;->map:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 162
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/LazyMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
