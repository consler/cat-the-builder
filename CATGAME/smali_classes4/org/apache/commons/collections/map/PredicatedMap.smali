.class public Lorg/apache/commons/collections/map/PredicatedMap;
.super Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator;
.source "PredicatedMap.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x66deecd99f9e25b4L


# instance fields
.field protected final keyPredicate:Lorg/apache/commons/collections/Predicate;

.field protected final valuePredicate:Lorg/apache/commons/collections/Predicate;


# direct methods
.method protected constructor <init>(Ljava/util/Map;Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Predicate;)V
    .locals 4
    .param p1, "map"    # Ljava/util/Map;
    .param p2, "keyPredicate"    # Lorg/apache/commons/collections/Predicate;
    .param p3, "valuePredicate"    # Lorg/apache/commons/collections/Predicate;

    .line 90
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator;-><init>(Ljava/util/Map;)V

    .line 91
    iput-object p2, p0, Lorg/apache/commons/collections/map/PredicatedMap;->keyPredicate:Lorg/apache/commons/collections/Predicate;

    .line 92
    iput-object p3, p0, Lorg/apache/commons/collections/map/PredicatedMap;->valuePredicate:Lorg/apache/commons/collections/Predicate;

    .line 94
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 95
    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 97
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 98
    .local v2, "key":Ljava/lang/Object;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 99
    .local v3, "value":Ljava/lang/Object;
    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/collections/map/PredicatedMap;->validate(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 100
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 101
    :cond_0
    return-void
.end method

.method public static decorate(Ljava/util/Map;Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Predicate;)Ljava/util/Map;
    .locals 1
    .param p0, "map"    # Ljava/util/Map;
    .param p1, "keyPredicate"    # Lorg/apache/commons/collections/Predicate;
    .param p2, "valuePredicate"    # Lorg/apache/commons/collections/Predicate;

    .line 77
    new-instance v0, Lorg/apache/commons/collections/map/PredicatedMap;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections/map/PredicatedMap;-><init>(Ljava/util/Map;Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Predicate;)V

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

    .line 125
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 126
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lorg/apache/commons/collections/map/PredicatedMap;->map:Ljava/util/Map;

    .line 127
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

    .line 112
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 113
    iget-object v0, p0, Lorg/apache/commons/collections/map/PredicatedMap;->map:Ljava/util/Map;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 114
    return-void
.end method


# virtual methods
.method protected checkSetValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .line 154
    iget-object v0, p0, Lorg/apache/commons/collections/map/PredicatedMap;->valuePredicate:Lorg/apache/commons/collections/Predicate;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    return-object p1

    .line 155
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set value - Predicate rejected it"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected isSetValueChecking()Z
    .locals 1

    .line 167
    iget-object v0, p0, Lorg/apache/commons/collections/map/PredicatedMap;->valuePredicate:Lorg/apache/commons/collections/Predicate;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 172
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections/map/PredicatedMap;->validate(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 173
    iget-object v0, p0, Lorg/apache/commons/collections/map/PredicatedMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 4
    .param p1, "mapToCopy"    # Ljava/util/Map;

    .line 177
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 178
    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 180
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 181
    .local v2, "key":Ljava/lang/Object;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 182
    .local v3, "value":Ljava/lang/Object;
    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/collections/map/PredicatedMap;->validate(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 183
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 184
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/map/PredicatedMap;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 185
    return-void
.end method

.method protected validate(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 138
    iget-object v0, p0, Lorg/apache/commons/collections/map/PredicatedMap;->keyPredicate:Lorg/apache/commons/collections/Predicate;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot add key - Predicate rejected it"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/PredicatedMap;->valuePredicate:Lorg/apache/commons/collections/Predicate;

    if-eqz v0, :cond_3

    invoke-interface {v0, p2}, Lorg/apache/commons/collections/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 142
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot add value - Predicate rejected it"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_3
    :goto_1
    return-void
.end method
