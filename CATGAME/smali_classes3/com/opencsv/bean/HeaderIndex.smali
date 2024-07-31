.class public Lcom/opencsv/bean/HeaderIndex;
.super Ljava/lang/Object;
.source "HeaderIndex.java"


# instance fields
.field private headerToPosition:Lorg/apache/commons/collections4/MultiValuedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/MultiValuedMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private positionToHeader:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/opencsv/bean/HeaderIndex;->positionToHeader:[Ljava/lang/String;

    .line 42
    new-instance v0, Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;

    invoke-direct {v0}, Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;-><init>()V

    iput-object v0, p0, Lcom/opencsv/bean/HeaderIndex;->headerToPosition:Lorg/apache/commons/collections4/MultiValuedMap;

    .line 45
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 51
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/opencsv/bean/HeaderIndex;->positionToHeader:[Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lcom/opencsv/bean/HeaderIndex;->headerToPosition:Lorg/apache/commons/collections4/MultiValuedMap;

    invoke-interface {v0}, Lorg/apache/commons/collections4/MultiValuedMap;->clear()V

    .line 53
    return-void
.end method

.method public findMaxIndex()I
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/opencsv/bean/HeaderIndex;->positionToHeader:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getByName(Ljava/lang/String;)[I
    .locals 2
    .param p1, "headerName"    # Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/opencsv/bean/HeaderIndex;->headerToPosition:Lorg/apache/commons/collections4/MultiValuedMap;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/MultiValuedMap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 101
    .local v0, "positions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    .line 102
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Integer;

    invoke-static {v1}, Lorg/apache/commons/lang3/ArrayUtils;->toPrimitive([Ljava/lang/Integer;)[I

    move-result-object v1

    return-object v1

    .line 104
    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [I

    return-object v1
.end method

.method public getByPosition(I)Ljava/lang/String;
    .locals 2
    .param p1, "i"    # I

    .line 114
    iget-object v0, p0, Lcom/opencsv/bean/HeaderIndex;->positionToHeader:[Ljava/lang/String;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 115
    aget-object v0, v0, p1

    return-object v0

    .line 117
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaderIndex()[Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/opencsv/bean/HeaderIndex;->positionToHeader:[Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderIndexLength()I
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/opencsv/bean/HeaderIndex;->positionToHeader:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public initializeHeaderIndex([Ljava/lang/String;)V
    .locals 4
    .param p1, "header"    # [Ljava/lang/String;

    .line 78
    if-eqz p1, :cond_0

    invoke-static {p1}, Lorg/apache/commons/lang3/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/opencsv/bean/HeaderIndex;->positionToHeader:[Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lcom/opencsv/bean/HeaderIndex;->headerToPosition:Lorg/apache/commons/collections4/MultiValuedMap;

    invoke-interface {v0}, Lorg/apache/commons/collections4/MultiValuedMap;->clear()V

    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/opencsv/bean/HeaderIndex;->positionToHeader:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 82
    iget-object v1, p0, Lcom/opencsv/bean/HeaderIndex;->headerToPosition:Lorg/apache/commons/collections4/MultiValuedMap;

    aget-object v2, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/collections4/MultiValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 85
    :cond_1
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/opencsv/bean/HeaderIndex;->positionToHeader:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public put(ILjava/lang/String;)V
    .locals 2
    .param p1, "k"    # I
    .param p2, "v"    # Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lcom/opencsv/bean/HeaderIndex;->positionToHeader:[Ljava/lang/String;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    .line 143
    add-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/opencsv/bean/HeaderIndex;->positionToHeader:[Ljava/lang/String;

    .line 144
    aput-object p2, v0, p1

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/opencsv/bean/HeaderIndex;->headerToPosition:Lorg/apache/commons/collections4/MultiValuedMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lorg/apache/commons/collections4/MultiValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 147
    return-void
.end method
