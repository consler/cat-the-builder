.class public Lorg/apache/commons/collections4/map/Flat3Map;
.super Ljava/lang/Object;
.source "Flat3Map.java"

# interfaces
.implements Lorg/apache/commons/collections4/IterableMap;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/map/Flat3Map$ValuesIterator;,
        Lorg/apache/commons/collections4/map/Flat3Map$Values;,
        Lorg/apache/commons/collections4/map/Flat3Map$KeySetIterator;,
        Lorg/apache/commons/collections4/map/Flat3Map$KeySet;,
        Lorg/apache/commons/collections4/map/Flat3Map$EntrySetIterator;,
        Lorg/apache/commons/collections4/map/Flat3Map$EntryIterator;,
        Lorg/apache/commons/collections4/map/Flat3Map$FlatMapEntry;,
        Lorg/apache/commons/collections4/map/Flat3Map$EntrySet;,
        Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/IterableMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5cff0b811e8e7b68L


# instance fields
.field private transient delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/AbstractHashedMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private transient hash1:I

.field private transient hash2:I

.field private transient hash3:I

.field private transient key1:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private transient key2:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private transient key3:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private transient size:I

.field private transient value1:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private transient value2:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private transient value3:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/Flat3Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/collections4/map/Flat3Map;)I
    .locals 0

    .line 81
    iget p0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    return p0
.end method

.method static synthetic access$100(Lorg/apache/commons/collections4/map/Flat3Map;)Ljava/lang/Object;
    .locals 0

    .line 81
    iget-object p0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$200(Lorg/apache/commons/collections4/map/Flat3Map;)Ljava/lang/Object;
    .locals 0

    .line 81
    iget-object p0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$300(Lorg/apache/commons/collections4/map/Flat3Map;)Ljava/lang/Object;
    .locals 0

    .line 81
    iget-object p0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$400(Lorg/apache/commons/collections4/map/Flat3Map;)Ljava/lang/Object;
    .locals 0

    .line 81
    iget-object p0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$402(Lorg/apache/commons/collections4/map/Flat3Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 81
    iput-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$500(Lorg/apache/commons/collections4/map/Flat3Map;)Ljava/lang/Object;
    .locals 0

    .line 81
    iget-object p0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$502(Lorg/apache/commons/collections4/map/Flat3Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 81
    iput-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$600(Lorg/apache/commons/collections4/map/Flat3Map;)Ljava/lang/Object;
    .locals 0

    .line 81
    iget-object p0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$602(Lorg/apache/commons/collections4/map/Flat3Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 81
    iput-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$700(Lorg/apache/commons/collections4/map/Flat3Map;)Lorg/apache/commons/collections4/map/AbstractHashedMap;
    .locals 0

    .line 81
    iget-object p0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    return-object p0
.end method

.method private convertToMap()V
    .locals 3

    .line 412
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/Flat3Map;->createDelegateMap()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    .line 413
    iget v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 415
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 423
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid map index: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 417
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const/4 v0, 0x0

    .line 426
    iput v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    .line 427
    iput v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash3:I

    iput v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash2:I

    iput v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash1:I

    const/4 v0, 0x0

    .line 428
    iput-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    .line 429
    iput-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1141
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1142
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 1144
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/Flat3Map;->createDelegateMap()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    :cond_0
    :goto_0
    if-lez v0, :cond_1

    .line 1147
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/collections4/map/Flat3Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1124
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1125
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/Flat3Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1126
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/Flat3Map;->mapIterator()Lorg/apache/commons/collections4/MapIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lorg/apache/commons/collections4/MapIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1127
    invoke-interface {v0}, Lorg/apache/commons/collections4/MapIterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1128
    invoke-interface {v0}, Lorg/apache/commons/collections4/MapIterator;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 603
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 604
    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->clear()V

    .line 605
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 607
    iput v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    .line 608
    iput v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash3:I

    iput v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash2:I

    iput v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash1:I

    .line 609
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    .line 610
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 81
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/Flat3Map;->clone()Lorg/apache/commons/collections4/map/Flat3Map;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/commons/collections4/map/Flat3Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/map/Flat3Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1162
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/map/Flat3Map;

    .line 1163
    iget-object v1, v0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    if-eqz v1, :cond_0

    .line 1164
    invoke-virtual {v1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->clone()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    .line 1168
    :catch_0
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 5

    .line 210
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez p1, :cond_4

    .line 214
    iget p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 216
    :cond_1
    iget-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    if-nez p1, :cond_2

    return v2

    .line 220
    :cond_2
    iget-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    if-nez p1, :cond_3

    return v2

    .line 224
    :cond_3
    iget-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    if-nez p1, :cond_8

    return v2

    .line 229
    :cond_4
    iget v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    if-lez v3, :cond_8

    .line 230
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    .line 231
    iget v4, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    if-eq v4, v2, :cond_7

    if-eq v4, v1, :cond_6

    if-eq v4, v0, :cond_5

    goto :goto_0

    .line 233
    :cond_5
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash3:I

    if-ne v0, v3, :cond_6

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v2

    .line 237
    :cond_6
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash2:I

    if-ne v0, v3, :cond_7

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v2

    .line 241
    :cond_7
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash1:I

    if-ne v0, v3, :cond_8

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    return v2

    :cond_8
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 4

    .line 258
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez p1, :cond_4

    .line 262
    iget p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 264
    :cond_1
    iget-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    if-nez p1, :cond_2

    return v2

    .line 268
    :cond_2
    iget-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    if-nez p1, :cond_3

    return v2

    .line 272
    :cond_3
    iget-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    if-nez p1, :cond_8

    return v2

    .line 277
    :cond_4
    iget v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    if-eq v3, v2, :cond_7

    if-eq v3, v1, :cond_6

    if-eq v3, v0, :cond_5

    goto :goto_0

    .line 279
    :cond_5
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v2

    .line 283
    :cond_6
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v2

    .line 287
    :cond_7
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    return v2

    :cond_8
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method protected createDelegateMap()Lorg/apache/commons/collections4/map/AbstractHashedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 443
    new-instance v0, Lorg/apache/commons/collections4/map/HashedMap;

    invoke-direct {v0}, Lorg/apache/commons/collections4/map/HashedMap;-><init>()V

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 756
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    if-eqz v0, :cond_0

    .line 757
    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 759
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/map/Flat3Map$EntrySet;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/Flat3Map$EntrySet;-><init>(Lorg/apache/commons/collections4/map/Flat3Map;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1183
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    if-eqz v1, :cond_1

    .line 1184
    invoke-virtual {v1, p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1186
    :cond_1
    instance-of v1, p1, Ljava/util/Map;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 1189
    :cond_2
    check-cast p1, Ljava/util/Map;

    .line 1190
    iget v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    .line 1193
    :cond_3
    iget v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    if-lez v1, :cond_d

    if-eq v1, v0, :cond_a

    const/4 v3, 0x2

    if-eq v1, v3, :cond_7

    const/4 v3, 0x3

    if-eq v1, v3, :cond_4

    goto :goto_3

    .line 1197
    :cond_4
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 1200
    :cond_5
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1201
    iget-object v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    if-nez v3, :cond_6

    if-eqz v1, :cond_7

    goto :goto_0

    :cond_6
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    :goto_0
    return v2

    .line 1205
    :cond_7
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 1208
    :cond_8
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1209
    iget-object v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    if-nez v3, :cond_9

    if-eqz v1, :cond_a

    goto :goto_1

    :cond_9
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    :goto_1
    return v2

    .line 1213
    :cond_a
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    .line 1216
    :cond_b
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1217
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    if-nez v1, :cond_c

    if-eqz p1, :cond_d

    goto :goto_2

    :cond_c
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    :goto_2
    return v2

    :cond_d
    :goto_3
    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez p1, :cond_4

    .line 140
    iget p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 143
    :cond_1
    iget-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    if-nez p1, :cond_2

    .line 144
    iget-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    return-object p1

    .line 147
    :cond_2
    iget-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    if-nez p1, :cond_3

    .line 148
    iget-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    return-object p1

    .line 151
    :cond_3
    iget-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    if-nez p1, :cond_8

    .line 152
    iget-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    return-object p1

    .line 156
    :cond_4
    iget v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    if-lez v3, :cond_8

    .line 157
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    .line 158
    iget v4, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    if-eq v4, v2, :cond_7

    if-eq v4, v1, :cond_6

    if-eq v4, v0, :cond_5

    goto :goto_0

    .line 161
    :cond_5
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash3:I

    if-ne v0, v3, :cond_6

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 162
    iget-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    return-object p1

    .line 165
    :cond_6
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash2:I

    if-ne v0, v3, :cond_7

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 166
    iget-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    return-object p1

    .line 169
    :cond_7
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash1:I

    if-ne v0, v3, :cond_8

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 170
    iget-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    return-object p1

    :cond_8
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public hashCode()I
    .locals 4

    .line 1232
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    if-eqz v0, :cond_0

    .line 1233
    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->hashCode()I

    move-result v0

    return v0

    .line 1236
    :cond_0
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 1238
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash3:I

    iget-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    xor-int/2addr v0, v2

    add-int/2addr v0, v1

    goto :goto_1

    .line 1246
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid map index: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v0, v1

    .line 1240
    :goto_1
    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash2:I

    iget-object v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    if-nez v3, :cond_4

    move v3, v1

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2
    xor-int/2addr v2, v3

    add-int/2addr v0, v2

    goto :goto_3

    :cond_5
    move v0, v1

    .line 1242
    :goto_3
    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash1:I

    iget-object v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    if-nez v3, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_4
    xor-int/2addr v1, v2

    add-int/2addr v1, v0

    :cond_7
    return v1
.end method

.method public isEmpty()Z
    .locals 1

    .line 198
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/Flat3Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 980
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    if-eqz v0, :cond_0

    .line 981
    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 983
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/map/Flat3Map$KeySet;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/Flat3Map$KeySet;-><init>(Lorg/apache/commons/collections4/map/Flat3Map;)V

    return-object v0
.end method

.method public mapIterator()Lorg/apache/commons/collections4/MapIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/MapIterator<",
            "TK;TV;>;"
        }
    .end annotation

    .line 628
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    if-eqz v0, :cond_0

    .line 629
    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->mapIterator()Lorg/apache/commons/collections4/MapIterator;

    move-result-object v0

    return-object v0

    .line 631
    :cond_0
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    if-nez v0, :cond_1

    .line 632
    invoke-static {}, Lorg/apache/commons/collections4/iterators/EmptyMapIterator;->emptyMapIterator()Lorg/apache/commons/collections4/MapIterator;

    move-result-object v0

    return-object v0

    .line 634
    :cond_1
    new-instance v0, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/Flat3Map$FlatMapIterator;-><init>(Lorg/apache/commons/collections4/map/Flat3Map;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez p1, :cond_4

    .line 310
    iget v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    if-eq v3, v2, :cond_3

    if-eq v3, v1, :cond_2

    if-eq v3, v0, :cond_1

    goto :goto_0

    .line 312
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 313
    iget-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    .line 314
    iput-object p2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    return-object p1

    .line 318
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    if-nez v0, :cond_3

    .line 319
    iget-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    .line 320
    iput-object p2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    return-object p1

    .line 324
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    if-nez v0, :cond_8

    .line 325
    iget-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    .line 326
    iput-object p2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    return-object p1

    .line 331
    :cond_4
    iget v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    if-lez v3, :cond_8

    .line 332
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    .line 333
    iget v4, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    if-eq v4, v2, :cond_7

    if-eq v4, v1, :cond_6

    if-eq v4, v0, :cond_5

    goto :goto_0

    .line 335
    :cond_5
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash3:I

    if-ne v0, v3, :cond_6

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 336
    iget-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    .line 337
    iput-object p2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    return-object p1

    .line 341
    :cond_6
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash2:I

    if-ne v0, v3, :cond_7

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 342
    iget-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    .line 343
    iput-object p2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    return-object p1

    .line 347
    :cond_7
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash1:I

    if-ne v0, v3, :cond_8

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 348
    iget-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    .line 349
    iput-object p2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    return-object p1

    .line 357
    :cond_8
    :goto_0
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_d

    if-eq v0, v2, :cond_b

    if-eq v0, v1, :cond_9

    .line 359
    invoke-direct {p0}, Lorg/apache/commons/collections4/map/Flat3Map;->convertToMap()V

    .line 360
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3

    :cond_9
    if-nez p1, :cond_a

    goto :goto_1

    .line 363
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_1
    iput v4, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash3:I

    .line 364
    iput-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    .line 365
    iput-object p2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    goto :goto_4

    :cond_b
    if-nez p1, :cond_c

    goto :goto_2

    .line 368
    :cond_c
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_2
    iput v4, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash2:I

    .line 369
    iput-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    .line 370
    iput-object p2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    goto :goto_4

    :cond_d
    if-nez p1, :cond_e

    goto :goto_3

    .line 373
    :cond_e
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_3
    iput v4, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash1:I

    .line 374
    iput-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    .line 375
    iput-object p2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    .line 378
    :goto_4
    iget p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    add-int/2addr p1, v2

    iput p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    return-object v3
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 390
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 394
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    if-eqz v1, :cond_1

    .line 395
    invoke-virtual {v1, p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->putAll(Ljava/util/Map;)V

    return-void

    :cond_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    .line 399
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 400
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/collections4/map/Flat3Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 403
    :cond_2
    invoke-direct {p0}, Lorg/apache/commons/collections4/map/Flat3Map;->convertToMap()V

    .line 404
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->putAll(Ljava/util/Map;)V

    :cond_3
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 454
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    if-eqz v0, :cond_0

    .line 455
    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 457
    :cond_0
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-nez p1, :cond_a

    if-eq v0, v3, :cond_9

    if-eq v0, v4, :cond_6

    if-eq v0, v2, :cond_2

    goto/16 :goto_0

    .line 463
    :cond_2
    iget-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    if-nez p1, :cond_3

    .line 464
    iget-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    .line 465
    iput v5, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash3:I

    .line 466
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    .line 467
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    .line 468
    iput v4, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    return-object p1

    .line 471
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    if-nez v0, :cond_4

    .line 472
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    .line 473
    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash3:I

    iput v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash2:I

    .line 474
    iput-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    .line 475
    iget-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    .line 476
    iput v5, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash3:I

    .line 477
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    .line 478
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    .line 479
    iput v4, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    return-object v0

    .line 482
    :cond_4
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    if-nez v0, :cond_5

    .line 483
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    .line 484
    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash3:I

    iput v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash1:I

    .line 485
    iput-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    .line 486
    iget-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    .line 487
    iput v5, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash3:I

    .line 488
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    .line 489
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    .line 490
    iput v4, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    return-object v0

    :cond_5
    return-object v1

    .line 495
    :cond_6
    iget-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    if-nez p1, :cond_7

    .line 496
    iget-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    .line 497
    iput v5, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash2:I

    .line 498
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    .line 499
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    .line 500
    iput v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    return-object p1

    .line 503
    :cond_7
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    if-nez v0, :cond_8

    .line 504
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    .line 505
    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash2:I

    iput v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash1:I

    .line 506
    iput-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    .line 507
    iget-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    .line 508
    iput v5, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash2:I

    .line 509
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    .line 510
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    .line 511
    iput v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    return-object v0

    :cond_8
    return-object v1

    .line 516
    :cond_9
    iget-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    if-nez p1, :cond_13

    .line 517
    iget-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    .line 518
    iput v5, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash1:I

    .line 519
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    .line 520
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    .line 521
    iput v5, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    return-object p1

    :cond_a
    if-lez v0, :cond_13

    .line 527
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 528
    iget v6, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    if-eq v6, v3, :cond_12

    if-eq v6, v4, :cond_f

    if-eq v6, v2, :cond_b

    goto/16 :goto_0

    .line 530
    :cond_b
    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash3:I

    if-ne v2, v0, :cond_c

    iget-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 531
    iget-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    .line 532
    iput v5, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash3:I

    .line 533
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    .line 534
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    .line 535
    iput v4, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    return-object p1

    .line 538
    :cond_c
    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash2:I

    if-ne v2, v0, :cond_d

    iget-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 539
    iget-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    .line 540
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash3:I

    iput v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash2:I

    .line 541
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    .line 542
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    .line 543
    iput v5, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash3:I

    .line 544
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    .line 545
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    .line 546
    iput v4, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    return-object p1

    .line 549
    :cond_d
    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash1:I

    if-ne v2, v0, :cond_e

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 550
    iget-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    .line 551
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash3:I

    iput v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash1:I

    .line 552
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    .line 553
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    .line 554
    iput v5, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash3:I

    .line 555
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    .line 556
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    .line 557
    iput v4, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    return-object p1

    :cond_e
    return-object v1

    .line 562
    :cond_f
    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash2:I

    if-ne v2, v0, :cond_10

    iget-object v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 563
    iget-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    .line 564
    iput v5, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash2:I

    .line 565
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    .line 566
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    .line 567
    iput v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    return-object p1

    .line 570
    :cond_10
    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash1:I

    if-ne v2, v0, :cond_11

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 571
    iget-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    .line 572
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash2:I

    iput v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash1:I

    .line 573
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    .line 574
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    .line 575
    iput v5, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash2:I

    .line 576
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    .line 577
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    .line 578
    iput v3, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    return-object p1

    :cond_11
    return-object v1

    .line 583
    :cond_12
    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash1:I

    if-ne v2, v0, :cond_13

    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 584
    iget-object p1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    .line 585
    iput v5, p0, Lorg/apache/commons/collections4/map/Flat3Map;->hash1:I

    .line 586
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    .line 587
    iput-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    .line 588
    iput v5, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    return-object p1

    :cond_13
    :goto_0
    return-object v1
.end method

.method public size()I
    .locals 1

    .line 185
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->size()I

    move-result v0

    return v0

    .line 188
    :cond_0
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1258
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    if-eqz v0, :cond_0

    .line 1259
    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1261
    :cond_0
    iget v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    if-nez v0, :cond_1

    const-string v0, "{}"

    return-object v0

    .line 1264
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    .line 1265
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1266
    iget v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    const/4 v2, 0x1

    const/16 v3, 0x3d

    const-string v4, "(this Map)"

    if-eq v1, v2, :cond_8

    const/4 v2, 0x2

    const/16 v5, 0x2c

    if-eq v1, v2, :cond_5

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 1268
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key3:Ljava/lang/Object;

    if-ne v1, p0, :cond_2

    move-object v1, v4

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1269
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1270
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value3:Ljava/lang/Object;

    if-ne v1, p0, :cond_3

    move-object v1, v4

    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1271
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1284
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid map index: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/apache/commons/collections4/map/Flat3Map;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1273
    :cond_5
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key2:Ljava/lang/Object;

    if-ne v1, p0, :cond_6

    move-object v1, v4

    :cond_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1274
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1275
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value2:Ljava/lang/Object;

    if-ne v1, p0, :cond_7

    move-object v1, v4

    :cond_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1276
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1278
    :cond_8
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->key1:Ljava/lang/Object;

    if-ne v1, p0, :cond_9

    move-object v1, v4

    :cond_9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1279
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1280
    iget-object v1, p0, Lorg/apache/commons/collections4/map/Flat3Map;->value1:Ljava/lang/Object;

    if-ne v1, p0, :cond_a

    goto :goto_1

    :cond_a
    move-object v4, v1

    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 1286
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1287
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1056
    iget-object v0, p0, Lorg/apache/commons/collections4/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections4/map/AbstractHashedMap;

    if-eqz v0, :cond_0

    .line 1057
    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0

    .line 1059
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/map/Flat3Map$Values;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/Flat3Map$Values;-><init>(Lorg/apache/commons/collections4/map/Flat3Map;)V

    return-object v0
.end method
