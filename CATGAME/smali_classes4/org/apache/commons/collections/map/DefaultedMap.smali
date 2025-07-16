.class public Lorg/apache/commons/collections/map/DefaultedMap;
.super Lorg/apache/commons/collections/map/AbstractMapDecorator;
.source "DefaultedMap.java"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x11ea71c4da63L


# instance fields
.field protected final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/map/AbstractMapDecorator;-><init>(Ljava/util/Map;)V

    .line 140
    instance-of v0, p1, Lorg/apache/commons/collections/Transformer;

    if-eqz v0, :cond_0

    .line 141
    invoke-static {p1}, Lorg/apache/commons/collections/functors/ConstantTransformer;->getInstance(Ljava/lang/Object;)Lorg/apache/commons/collections/Transformer;

    move-result-object p1

    .line 143
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/collections/map/DefaultedMap;->value:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 0

    .line 154
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/AbstractMapDecorator;-><init>(Ljava/util/Map;)V

    .line 155
    iput-object p2, p0, Lorg/apache/commons/collections/map/DefaultedMap;->value:Ljava/lang/Object;

    return-void
.end method

.method public static decorate(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;
    .locals 1

    .line 87
    instance-of v0, p1, Lorg/apache/commons/collections/Transformer;

    if-eqz v0, :cond_0

    .line 88
    invoke-static {p1}, Lorg/apache/commons/collections/functors/ConstantTransformer;->getInstance(Ljava/lang/Object;)Lorg/apache/commons/collections/Transformer;

    move-result-object p1

    .line 90
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/map/DefaultedMap;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/map/DefaultedMap;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static decorate(Ljava/util/Map;Lorg/apache/commons/collections/Factory;)Ljava/util/Map;
    .locals 1

    if-eqz p1, :cond_0

    .line 107
    new-instance v0, Lorg/apache/commons/collections/map/DefaultedMap;

    invoke-static {p1}, Lorg/apache/commons/collections/functors/FactoryTransformer;->getInstance(Lorg/apache/commons/collections/Factory;)Lorg/apache/commons/collections/Transformer;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/map/DefaultedMap;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    return-object v0

    .line 105
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Factory must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static decorate(Ljava/util/Map;Lorg/apache/commons/collections/Transformer;)Ljava/util/Map;
    .locals 1

    if-eqz p1, :cond_0

    .line 125
    new-instance v0, Lorg/apache/commons/collections/map/DefaultedMap;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/map/DefaultedMap;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    return-object v0

    .line 123
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Transformer must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 178
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 179
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lorg/apache/commons/collections/map/DefaultedMap;->map:Ljava/util/Map;

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 167
    iget-object v0, p0, Lorg/apache/commons/collections/map/DefaultedMap;->map:Ljava/util/Map;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 185
    iget-object v0, p0, Lorg/apache/commons/collections/map/DefaultedMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 186
    iget-object v0, p0, Lorg/apache/commons/collections/map/DefaultedMap;->value:Ljava/lang/Object;

    instance-of v1, v0, Lorg/apache/commons/collections/Transformer;

    if-eqz v1, :cond_0

    .line 187
    check-cast v0, Lorg/apache/commons/collections/Transformer;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0

    .line 191
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections/map/DefaultedMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
