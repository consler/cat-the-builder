.class public Lorg/apache/commons/collections/map/AbstractHashedMap;
.super Ljava/util/AbstractMap;
.source "AbstractHashedMap.java"

# interfaces
.implements Lorg/apache/commons/collections/IterableMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/map/AbstractHashedMap$HashIterator;,
        Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;,
        Lorg/apache/commons/collections/map/AbstractHashedMap$ValuesIterator;,
        Lorg/apache/commons/collections/map/AbstractHashedMap$Values;,
        Lorg/apache/commons/collections/map/AbstractHashedMap$KeySetIterator;,
        Lorg/apache/commons/collections/map/AbstractHashedMap$KeySet;,
        Lorg/apache/commons/collections/map/AbstractHashedMap$EntrySetIterator;,
        Lorg/apache/commons/collections/map/AbstractHashedMap$EntrySet;,
        Lorg/apache/commons/collections/map/AbstractHashedMap$HashMapIterator;
    }
.end annotation


# static fields
.field protected static final DEFAULT_CAPACITY:I = 0x10

.field protected static final DEFAULT_LOAD_FACTOR:F = 0.75f

.field protected static final DEFAULT_THRESHOLD:I = 0xc

.field protected static final GETKEY_INVALID:Ljava/lang/String; = "getKey() can only be called after next() and before remove()"

.field protected static final GETVALUE_INVALID:Ljava/lang/String; = "getValue() can only be called after next() and before remove()"

.field protected static final MAXIMUM_CAPACITY:I = 0x40000000

.field protected static final NO_NEXT_ENTRY:Ljava/lang/String; = "No next() entry in the iteration"

.field protected static final NO_PREVIOUS_ENTRY:Ljava/lang/String; = "No previous() entry in the iteration"

.field protected static final NULL:Ljava/lang/Object;

.field protected static final REMOVE_INVALID:Ljava/lang/String; = "remove() can only be called once after next()"

.field protected static final SETVALUE_INVALID:Ljava/lang/String; = "setValue() can only be called after next() and before remove()"


# instance fields
.field protected transient data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

.field protected transient entrySet:Lorg/apache/commons/collections/map/AbstractHashedMap$EntrySet;

.field protected transient keySet:Lorg/apache/commons/collections/map/AbstractHashedMap$KeySet;

.field protected transient loadFactor:F

.field protected transient modCount:I

.field protected transient size:I

.field protected transient threshold:I

.field protected transient values:Lorg/apache/commons/collections/map/AbstractHashedMap$Values;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/commons/collections/map/AbstractHashedMap;->NULL:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 104
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .line 129
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;-><init>(IF)V

    .line 130
    return-void
.end method

.method protected constructor <init>(IF)V
    .locals 2
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .line 142
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 143
    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    .line 146
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_0

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    iput p2, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->loadFactor:F

    .line 150
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->calculateNewCapacity(I)I

    move-result p1

    .line 151
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections/map/AbstractHashedMap;->calculateThreshold(IF)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->threshold:I

    .line 152
    new-array v0, p1, [Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    .line 153
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->init()V

    .line 154
    return-void

    .line 147
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Load factor must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Initial capacity must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected constructor <init>(IFI)V
    .locals 1
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F
    .param p3, "threshold"    # I

    .line 114
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 115
    iput p2, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->loadFactor:F

    .line 116
    new-array v0, p1, [Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    .line 117
    iput p3, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->threshold:I

    .line 118
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->init()V

    .line 119
    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;)V
    .locals 2
    .param p1, "map"    # Ljava/util/Map;

    .line 163
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/map/AbstractHashedMap;-><init>(IF)V

    .line 164
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->putAll(Ljava/util/Map;)V

    .line 165
    return-void
.end method


# virtual methods
.method protected addEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;I)V
    .locals 1
    .param p1, "entry"    # Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    .param p2, "hashIndex"    # I

    .line 526
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    aput-object p1, v0, p2

    .line 527
    return-void
.end method

.method protected addMapping(IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "hashIndex"    # I
    .param p2, "hashCode"    # I
    .param p3, "key"    # Ljava/lang/Object;
    .param p4, "value"    # Ljava/lang/Object;

    .line 492
    iget v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->modCount:I

    .line 493
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    aget-object v0, v0, p1

    invoke-virtual {p0, v0, p2, p3, p4}, Lorg/apache/commons/collections/map/AbstractHashedMap;->createEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;ILjava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    move-result-object v0

    .line 494
    .local v0, "entry":Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->addEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;I)V

    .line 495
    iget v1, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->size:I

    .line 496
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->checkCapacity()V

    .line 497
    return-void
.end method

.method protected calculateNewCapacity(I)I
    .locals 2
    .param p1, "proposedCapacity"    # I

    .line 640
    const/4 v0, 0x1

    .line 641
    .local v0, "newCapacity":I
    const/high16 v1, 0x40000000    # 2.0f

    if-le p1, v1, :cond_0

    .line 642
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_1

    .line 644
    :cond_0
    :goto_0
    if-ge v0, p1, :cond_1

    .line 645
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 647
    :cond_1
    if-le v0, v1, :cond_2

    .line 648
    const/high16 v0, 0x40000000    # 2.0f

    .line 651
    :cond_2
    :goto_1
    return v0
.end method

.method protected calculateThreshold(IF)I
    .locals 1
    .param p1, "newCapacity"    # I
    .param p2, "factor"    # F

    .line 663
    int-to-float v0, p1

    mul-float/2addr v0, p2

    float-to-int v0, v0

    return v0
.end method

.method protected checkCapacity()V
    .locals 2

    .line 588
    iget v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->size:I

    iget v1, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->threshold:I

    if-lt v0, v1, :cond_0

    .line 589
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    .line 590
    .local v0, "newCapacity":I
    const/high16 v1, 0x40000000    # 2.0f

    if-gt v0, v1, :cond_0

    .line 591
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->ensureCapacity(I)V

    .line 594
    .end local v0    # "newCapacity":I
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 3

    .line 339
    iget v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->modCount:I

    .line 340
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    .line 341
    .local v0, "data":[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 342
    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 341
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 344
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->size:I

    .line 345
    return-void
.end method

.method protected clone()Ljava/lang/Object;
    .locals 3

    .line 1229
    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/collections/map/AbstractHashedMap;

    .line 1230
    .local v1, "cloned":Lorg/apache/commons/collections/map/AbstractHashedMap;
    iget-object v2, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v2, v2

    new-array v2, v2, [Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    iput-object v2, v1, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    .line 1231
    iput-object v0, v1, Lorg/apache/commons/collections/map/AbstractHashedMap;->entrySet:Lorg/apache/commons/collections/map/AbstractHashedMap$EntrySet;

    .line 1232
    iput-object v0, v1, Lorg/apache/commons/collections/map/AbstractHashedMap;->keySet:Lorg/apache/commons/collections/map/AbstractHashedMap$KeySet;

    .line 1233
    iput-object v0, v1, Lorg/apache/commons/collections/map/AbstractHashedMap;->values:Lorg/apache/commons/collections/map/AbstractHashedMap$Values;

    .line 1234
    const/4 v2, 0x0

    iput v2, v1, Lorg/apache/commons/collections/map/AbstractHashedMap;->modCount:I

    .line 1235
    iput v2, v1, Lorg/apache/commons/collections/map/AbstractHashedMap;->size:I

    .line 1236
    invoke-virtual {v1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->init()V

    .line 1237
    invoke-virtual {v1, p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1238
    return-object v1

    .line 1240
    .end local v1    # "cloned":Lorg/apache/commons/collections/map/AbstractHashedMap;
    :catch_0
    move-exception v1

    .line 1241
    .local v1, "ex":Ljava/lang/CloneNotSupportedException;
    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 219
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->convertKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 220
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 221
    .local v0, "hashCode":I
    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v2, v1

    invoke-virtual {p0, v0, v2}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    aget-object v1, v1, v2

    .line 222
    .local v1, "entry":Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    :goto_0
    if-eqz v1, :cond_1

    .line 223
    iget v2, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v0, :cond_0

    iget-object v2, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/collections/map/AbstractHashedMap;->isEqualKey(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 224
    const/4 v2, 0x1

    return v2

    .line 226
    :cond_0
    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    .line 228
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "value"    # Ljava/lang/Object;

    .line 238
    const/4 v0, 0x1

    if-nez p1, :cond_3

    .line 239
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v2, v2

    .local v2, "isize":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 240
    iget-object v3, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    aget-object v3, v3, v1

    .line 241
    .local v3, "entry":Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    :goto_1
    if-eqz v3, :cond_1

    .line 242
    invoke-virtual {v3}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 243
    return v0

    .line 245
    :cond_0
    iget-object v3, v3, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_1

    .line 239
    .end local v3    # "entry":Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    .end local v2    # "isize":I
    :cond_2
    goto :goto_4

    .line 249
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "i":I
    iget-object v2, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v2, v2

    .restart local v2    # "isize":I
    :goto_2
    if-ge v1, v2, :cond_6

    .line 250
    iget-object v3, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    aget-object v3, v3, v1

    .line 251
    .restart local v3    # "entry":Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    :goto_3
    if-eqz v3, :cond_5

    .line 252
    invoke-virtual {v3}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Lorg/apache/commons/collections/map/AbstractHashedMap;->isEqualValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 253
    return v0

    .line 255
    :cond_4
    iget-object v3, v3, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_3

    .line 249
    .end local v3    # "entry":Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 259
    .end local v1    # "i":I
    .end local v2    # "isize":I
    :cond_6
    :goto_4
    const/4 v0, 0x0

    return v0
.end method

.method protected convertKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 360
    if-nez p1, :cond_0

    sget-object v0, Lorg/apache/commons/collections/map/AbstractHashedMap;->NULL:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method protected createEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;ILjava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    .locals 1
    .param p1, "next"    # Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    .param p2, "hashCode"    # I
    .param p3, "key"    # Ljava/lang/Object;
    .param p4, "value"    # Ljava/lang/Object;

    .line 513
    new-instance v0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;-><init>(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected createEntrySetIterator()Ljava/util/Iterator;
    .locals 1

    .line 798
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 799
    sget-object v0, Lorg/apache/commons/collections/iterators/EmptyIterator;->INSTANCE:Ljava/util/Iterator;

    return-object v0

    .line 801
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/map/AbstractHashedMap$EntrySetIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/AbstractHashedMap$EntrySetIterator;-><init>(Lorg/apache/commons/collections/map/AbstractHashedMap;)V

    return-object v0
.end method

.method protected createKeySetIterator()Ljava/util/Iterator;
    .locals 1

    .line 887
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 888
    sget-object v0, Lorg/apache/commons/collections/iterators/EmptyIterator;->INSTANCE:Ljava/util/Iterator;

    return-object v0

    .line 890
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/map/AbstractHashedMap$KeySetIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/AbstractHashedMap$KeySetIterator;-><init>(Lorg/apache/commons/collections/map/AbstractHashedMap;)V

    return-object v0
.end method

.method protected createValuesIterator()Ljava/util/Iterator;
    .locals 1

    .line 964
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 965
    sget-object v0, Lorg/apache/commons/collections/iterators/EmptyIterator;->INSTANCE:Ljava/util/Iterator;

    return-object v0

    .line 967
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/map/AbstractHashedMap$ValuesIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/AbstractHashedMap$ValuesIterator;-><init>(Lorg/apache/commons/collections/map/AbstractHashedMap;)V

    return-object v0
.end method

.method protected destroyEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;)V
    .locals 1
    .param p1, "entry"    # Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    .line 576
    const/4 v0, 0x0

    iput-object v0, p1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    .line 577
    iput-object v0, p1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->key:Ljava/lang/Object;

    .line 578
    iput-object v0, p1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->value:Ljava/lang/Object;

    .line 579
    return-void
.end method

.method protected doReadObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1205
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->loadFactor:F

    .line 1206
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 1207
    .local v0, "capacity":I
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    .line 1208
    .local v1, "size":I
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->init()V

    .line 1209
    iget v2, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->loadFactor:F

    invoke-virtual {p0, v0, v2}, Lorg/apache/commons/collections/map/AbstractHashedMap;->calculateThreshold(IF)I

    move-result v2

    iput v2, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->threshold:I

    .line 1210
    new-array v2, v0, [Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    iput-object v2, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    .line 1211
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1212
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 1213
    .local v3, "key":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    .line 1214
    .local v4, "value":Ljava/lang/Object;
    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/collections/map/AbstractHashedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1211
    .end local v3    # "key":Ljava/lang/Object;
    .end local v4    # "value":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1216
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected doWriteObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1177
    iget v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->loadFactor:F

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeFloat(F)V

    .line 1178
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1179
    iget v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->size:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1180
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->mapIterator()Lorg/apache/commons/collections/MapIterator;

    move-result-object v0

    .local v0, "it":Lorg/apache/commons/collections/MapIterator;
    :goto_0
    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1181
    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1182
    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 1184
    .end local v0    # "it":Lorg/apache/commons/collections/MapIterator;
    :cond_0
    return-void
.end method

.method protected ensureCapacity(I)V
    .locals 8
    .param p1, "newCapacity"    # I

    .line 602
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v0, v0

    .line 603
    .local v0, "oldCapacity":I
    if-gt p1, v0, :cond_0

    .line 604
    return-void

    .line 606
    :cond_0
    iget v1, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->size:I

    if-nez v1, :cond_1

    .line 607
    iget v1, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->loadFactor:F

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->calculateThreshold(IF)I

    move-result v1

    iput v1, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->threshold:I

    .line 608
    new-array v1, p1, [Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    iput-object v1, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_1

    .line 610
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    .line 611
    .local v1, "oldEntries":[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    new-array v2, p1, [Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    .line 613
    .local v2, "newEntries":[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    iget v3, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->modCount:I

    .line 614
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_4

    .line 615
    aget-object v4, v1, v3

    .line 616
    .local v4, "entry":Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    if-eqz v4, :cond_3

    .line 617
    const/4 v5, 0x0

    aput-object v5, v1, v3

    .line 619
    :cond_2
    iget-object v5, v4, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    .line 620
    .local v5, "next":Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    iget v6, v4, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    invoke-virtual {p0, v6, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v6

    .line 621
    .local v6, "index":I
    aget-object v7, v2, v6

    iput-object v7, v4, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    .line 622
    aput-object v4, v2, v6

    .line 623
    move-object v4, v5

    .line 624
    .end local v5    # "next":Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    .end local v6    # "index":I
    if-nez v4, :cond_2

    .line 614
    .end local v4    # "entry":Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 627
    .end local v3    # "i":I
    :cond_4
    iget v3, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->loadFactor:F

    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/collections/map/AbstractHashedMap;->calculateThreshold(IF)I

    move-result v3

    iput v3, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->threshold:I

    .line 628
    iput-object v2, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    .line 630
    .end local v1    # "oldEntries":[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    .end local v2    # "newEntries":[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    :goto_1
    return-void
.end method

.method protected entryHashCode(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;)I
    .locals 1
    .param p1, "entry"    # Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    .line 690
    iget v0, p1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    return v0
.end method

.method protected entryKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;)Ljava/lang/Object;
    .locals 1
    .param p1, "entry"    # Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    .line 703
    iget-object v0, p1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method protected entryNext(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;)Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    .locals 1
    .param p1, "entry"    # Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    .line 677
    iget-object v0, p1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    .line 785
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->entrySet:Lorg/apache/commons/collections/map/AbstractHashedMap$EntrySet;

    if-nez v0, :cond_0

    .line 786
    new-instance v0, Lorg/apache/commons/collections/map/AbstractHashedMap$EntrySet;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/AbstractHashedMap$EntrySet;-><init>(Lorg/apache/commons/collections/map/AbstractHashedMap;)V

    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->entrySet:Lorg/apache/commons/collections/map/AbstractHashedMap$EntrySet;

    .line 788
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->entrySet:Lorg/apache/commons/collections/map/AbstractHashedMap$EntrySet;

    return-object v0
.end method

.method protected entryValue(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;)Ljava/lang/Object;
    .locals 1
    .param p1, "entry"    # Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    .line 716
    iget-object v0, p1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1252
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 1253
    return v0

    .line 1255
    :cond_0
    instance-of v1, p1, Ljava/util/Map;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1256
    return v2

    .line 1258
    :cond_1
    move-object v1, p1

    check-cast v1, Ljava/util/Map;

    .line 1259
    .local v1, "map":Ljava/util/Map;
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->size()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 1260
    return v2

    .line 1262
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->mapIterator()Lorg/apache/commons/collections/MapIterator;

    move-result-object v3

    .line 1264
    .local v3, "it":Lorg/apache/commons/collections/MapIterator;
    :goto_0
    :try_start_0
    invoke-interface {v3}, Lorg/apache/commons/collections/MapIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1265
    invoke-interface {v3}, Lorg/apache/commons/collections/MapIterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1266
    .local v4, "key":Ljava/lang/Object;
    invoke-interface {v3}, Lorg/apache/commons/collections/MapIterator;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 1267
    .local v5, "value":Ljava/lang/Object;
    if-nez v5, :cond_4

    .line 1268
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_3

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1269
    :cond_3
    return v2

    .line 1272
    :cond_4
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v6, :cond_5

    .line 1273
    return v2

    .line 1276
    .end local v4    # "key":Ljava/lang/Object;
    .end local v5    # "value":Ljava/lang/Object;
    :cond_5
    goto :goto_0

    .line 1281
    :cond_6
    nop

    .line 1282
    return v0

    .line 1279
    :catch_0
    move-exception v0

    .line 1280
    .local v0, "ignored":Ljava/lang/NullPointerException;
    return v2

    .line 1277
    .end local v0    # "ignored":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1278
    .local v0, "ignored":Ljava/lang/ClassCastException;
    return v2
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 181
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->convertKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 182
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 183
    .local v0, "hashCode":I
    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v2, v1

    invoke-virtual {p0, v0, v2}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    aget-object v1, v1, v2

    .line 184
    .local v1, "entry":Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    :goto_0
    if-eqz v1, :cond_1

    .line 185
    iget v2, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v0, :cond_0

    iget-object v2, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/collections/map/AbstractHashedMap;->isEqualKey(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 186
    invoke-virtual {v1}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 188
    :cond_0
    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    .line 190
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method protected getEntry(Ljava/lang/Object;)Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 432
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->convertKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 433
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 434
    .local v0, "hashCode":I
    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v2, v1

    invoke-virtual {p0, v0, v2}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    aget-object v1, v1, v2

    .line 435
    .local v1, "entry":Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    :goto_0
    if-eqz v1, :cond_1

    .line 436
    iget v2, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v0, :cond_0

    iget-object v2, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/collections/map/AbstractHashedMap;->isEqualKey(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 437
    return-object v1

    .line 439
    :cond_0
    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    .line 441
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method protected hash(Ljava/lang/Object;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .line 373
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 374
    .local v0, "h":I
    shl-int/lit8 v1, v0, 0x9

    not-int v1, v1

    add-int/2addr v0, v1

    .line 375
    ushr-int/lit8 v1, v0, 0xe

    xor-int/2addr v0, v1

    .line 376
    shl-int/lit8 v1, v0, 0x4

    add-int/2addr v0, v1

    .line 377
    ushr-int/lit8 v1, v0, 0xa

    xor-int/2addr v0, v1

    .line 378
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1291
    const/4 v0, 0x0

    .line 1292
    .local v0, "total":I
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->createEntrySetIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1293
    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1294
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    .line 1296
    :cond_0
    return v0
.end method

.method protected hashIndex(II)I
    .locals 1
    .param p1, "hashCode"    # I
    .param p2, "dataSize"    # I

    .line 417
    add-int/lit8 v0, p2, -0x1

    and-int/2addr v0, p1

    return v0
.end method

.method protected init()V
    .locals 0

    .line 171
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 208
    iget v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isEqualKey(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;

    .line 391
    if-eq p1, p2, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected isEqualValue(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value1"    # Ljava/lang/Object;
    .param p2, "value2"    # Ljava/lang/Object;

    .line 404
    if-eq p1, p2, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    .line 874
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->keySet:Lorg/apache/commons/collections/map/AbstractHashedMap$KeySet;

    if-nez v0, :cond_0

    .line 875
    new-instance v0, Lorg/apache/commons/collections/map/AbstractHashedMap$KeySet;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/AbstractHashedMap$KeySet;-><init>(Lorg/apache/commons/collections/map/AbstractHashedMap;)V

    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->keySet:Lorg/apache/commons/collections/map/AbstractHashedMap$KeySet;

    .line 877
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->keySet:Lorg/apache/commons/collections/map/AbstractHashedMap$KeySet;

    return-object v0
.end method

.method public mapIterator()Lorg/apache/commons/collections/MapIterator;
    .locals 1

    .line 732
    iget v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->size:I

    if-nez v0, :cond_0

    .line 733
    sget-object v0, Lorg/apache/commons/collections/iterators/EmptyMapIterator;->INSTANCE:Lorg/apache/commons/collections/MapIterator;

    return-object v0

    .line 735
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashMapIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashMapIterator;-><init>(Lorg/apache/commons/collections/map/AbstractHashedMap;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 271
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->convertKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 272
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 273
    .local v0, "hashCode":I
    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v1, v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v1

    .line 274
    .local v1, "index":I
    iget-object v2, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    aget-object v2, v2, v1

    .line 275
    .local v2, "entry":Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    :goto_0
    if-eqz v2, :cond_1

    .line 276
    iget v3, v2, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v3, v0, :cond_0

    iget-object v3, v2, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/collections/map/AbstractHashedMap;->isEqualKey(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 277
    invoke-virtual {v2}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 278
    .local v3, "oldValue":Ljava/lang/Object;
    invoke-virtual {p0, v2, p2}, Lorg/apache/commons/collections/map/AbstractHashedMap;->updateEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;)V

    .line 279
    return-object v3

    .line 281
    .end local v3    # "oldValue":Ljava/lang/Object;
    :cond_0
    iget-object v2, v2, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    .line 284
    :cond_1
    invoke-virtual {p0, v1, v0, p1, p2}, Lorg/apache/commons/collections/map/AbstractHashedMap;->addMapping(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 285
    const/4 v3, 0x0

    return-object v3
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 6
    .param p1, "map"    # Ljava/util/Map;

    .line 298
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    .line 299
    .local v0, "mapSize":I
    if-nez v0, :cond_0

    .line 300
    return-void

    .line 302
    :cond_0
    iget v1, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->size:I

    add-int/2addr v1, v0

    int-to-float v1, v1

    iget v2, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->loadFactor:F

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 303
    .local v1, "newSize":I
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->calculateNewCapacity(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/collections/map/AbstractHashedMap;->ensureCapacity(I)V

    .line 304
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 305
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 306
    .local v3, "entry":Ljava/util/Map$Entry;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/collections/map/AbstractHashedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    .end local v3    # "entry":Ljava/util/Map$Entry;
    goto :goto_0

    .line 308
    .end local v2    # "it":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "key"    # Ljava/lang/Object;

    .line 317
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->convertKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 318
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 319
    .local v0, "hashCode":I
    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v1, v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v1

    .line 320
    .local v1, "index":I
    iget-object v2, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    aget-object v2, v2, v1

    .line 321
    .local v2, "entry":Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    const/4 v3, 0x0

    .line 322
    .local v3, "previous":Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    :goto_0
    if-eqz v2, :cond_1

    .line 323
    iget v4, v2, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v4, v0, :cond_0

    iget-object v4, v2, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v4}, Lorg/apache/commons/collections/map/AbstractHashedMap;->isEqualKey(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 324
    invoke-virtual {v2}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 325
    .local v4, "oldValue":Ljava/lang/Object;
    invoke-virtual {p0, v2, v1, v3}, Lorg/apache/commons/collections/map/AbstractHashedMap;->removeMapping(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;ILorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;)V

    .line 326
    return-object v4

    .line 328
    .end local v4    # "oldValue":Ljava/lang/Object;
    :cond_0
    move-object v3, v2

    .line 329
    iget-object v2, v2, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    .line 331
    :cond_1
    const/4 v4, 0x0

    return-object v4
.end method

.method protected removeEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;ILorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;)V
    .locals 2
    .param p1, "entry"    # Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    .param p2, "hashIndex"    # I
    .param p3, "previous"    # Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    .line 560
    if-nez p3, :cond_0

    .line 561
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    iget-object v1, p1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    aput-object v1, v0, p2

    goto :goto_0

    .line 563
    :cond_0
    iget-object v0, p1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    iput-object v0, p3, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    .line 565
    :goto_0
    return-void
.end method

.method protected removeMapping(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;ILorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;)V
    .locals 1
    .param p1, "entry"    # Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    .param p2, "hashIndex"    # I
    .param p3, "previous"    # Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    .line 542
    iget v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->modCount:I

    .line 543
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/collections/map/AbstractHashedMap;->removeEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;ILorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;)V

    .line 544
    iget v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->size:I

    .line 545
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->destroyEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;)V

    .line 546
    return-void
.end method

.method protected reuseEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "entry"    # Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    .param p2, "hashIndex"    # I
    .param p3, "hashCode"    # I
    .param p4, "key"    # Ljava/lang/Object;
    .param p5, "value"    # Ljava/lang/Object;

    .line 471
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    aget-object v0, v0, p2

    iput-object v0, p1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    .line 472
    iput p3, p1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    .line 473
    iput-object p4, p1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->key:Ljava/lang/Object;

    .line 474
    iput-object p5, p1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->value:Ljava/lang/Object;

    .line 475
    return-void
.end method

.method public size()I
    .locals 1

    .line 199
    iget v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 1305
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1306
    const-string v0, "{}"

    return-object v0

    .line 1308
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->size()I

    move-result v1

    const/16 v2, 0x20

    mul-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1309
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1311
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->mapIterator()Lorg/apache/commons/collections/MapIterator;

    move-result-object v1

    .line 1312
    .local v1, "it":Lorg/apache/commons/collections/MapIterator;
    invoke-interface {v1}, Lorg/apache/commons/collections/MapIterator;->hasNext()Z

    move-result v3

    .line 1313
    .local v3, "hasNext":Z
    :goto_0
    if-eqz v3, :cond_4

    .line 1314
    invoke-interface {v1}, Lorg/apache/commons/collections/MapIterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1315
    .local v4, "key":Ljava/lang/Object;
    invoke-interface {v1}, Lorg/apache/commons/collections/MapIterator;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 1316
    .local v5, "value":Ljava/lang/Object;
    const-string v6, "(this Map)"

    if-ne v4, p0, :cond_1

    move-object v7, v6

    goto :goto_1

    :cond_1
    move-object v7, v4

    :goto_1
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/16 v7, 0x3d

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-ne v5, p0, :cond_2

    goto :goto_2

    :cond_2
    move-object v6, v5

    :goto_2
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1320
    invoke-interface {v1}, Lorg/apache/commons/collections/MapIterator;->hasNext()Z

    move-result v3

    .line 1321
    if-eqz v3, :cond_3

    .line 1322
    const/16 v6, 0x2c

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1324
    .end local v4    # "key":Ljava/lang/Object;
    .end local v5    # "value":Ljava/lang/Object;
    :cond_3
    goto :goto_0

    .line 1326
    :cond_4
    const/16 v2, 0x7d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1327
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected updateEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;)V
    .locals 0
    .param p1, "entry"    # Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 455
    invoke-virtual {p1, p2}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    return-void
.end method

.method public values()Ljava/util/Collection;
    .locals 1

    .line 951
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->values:Lorg/apache/commons/collections/map/AbstractHashedMap$Values;

    if-nez v0, :cond_0

    .line 952
    new-instance v0, Lorg/apache/commons/collections/map/AbstractHashedMap$Values;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/AbstractHashedMap$Values;-><init>(Lorg/apache/commons/collections/map/AbstractHashedMap;)V

    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->values:Lorg/apache/commons/collections/map/AbstractHashedMap$Values;

    .line 954
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->values:Lorg/apache/commons/collections/map/AbstractHashedMap$Values;

    return-object v0
.end method
