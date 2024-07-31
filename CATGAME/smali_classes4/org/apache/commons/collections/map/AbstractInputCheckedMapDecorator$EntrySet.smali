.class Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator$EntrySet;
.super Lorg/apache/commons/collections/set/AbstractSetDecorator;
.source "AbstractInputCheckedMapDecorator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EntrySet"
.end annotation


# instance fields
.field private final parent:Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator;


# direct methods
.method protected constructor <init>(Ljava/util/Set;Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator;)V
    .locals 0
    .param p1, "set"    # Ljava/util/Set;
    .param p2, "parent"    # Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator;

    .line 117
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/set/AbstractSetDecorator;-><init>(Ljava/util/Set;)V

    .line 118
    iput-object p2, p0, Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator$EntrySet;->parent:Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator;

    .line 119
    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3

    .line 122
    new-instance v0, Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator$EntrySetIterator;

    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator$EntrySet;->collection:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator$EntrySet;->parent:Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator$EntrySetIterator;-><init>(Ljava/util/Iterator;Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator;)V

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 5

    .line 126
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator$EntrySet;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 127
    .local v0, "array":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 128
    new-instance v2, Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator$MapEntry;

    aget-object v3, v0, v1

    check-cast v3, Ljava/util/Map$Entry;

    iget-object v4, p0, Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator$EntrySet;->parent:Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator;

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator$MapEntry;-><init>(Ljava/util/Map$Entry;Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator;)V

    aput-object v2, v0, v1

    .line 127
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
    .param p1, "array"    # [Ljava/lang/Object;

    .line 134
    move-object v0, p1

    .line 135
    .local v0, "result":[Ljava/lang/Object;
    array-length v1, p1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 138
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 140
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator$EntrySet;->collection:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 141
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 142
    new-instance v3, Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator$MapEntry;

    aget-object v4, v0, v1

    check-cast v4, Ljava/util/Map$Entry;

    iget-object v5, p0, Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator$EntrySet;->parent:Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator;

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator$MapEntry;-><init>(Ljava/util/Map$Entry;Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator;)V

    aput-object v3, v0, v1

    .line 141
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    .end local v1    # "i":I
    :cond_1
    array-length v1, v0

    array-length v3, p1

    if-le v1, v3, :cond_2

    .line 147
    return-object v0

    .line 151
    :cond_2
    array-length v1, v0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    array-length v1, p1

    array-length v2, v0

    if-le v1, v2, :cond_3

    .line 153
    array-length v1, v0

    const/4 v2, 0x0

    aput-object v2, p1, v1

    .line 155
    :cond_3
    return-object p1
.end method
