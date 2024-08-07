.class public Lcom/thoughtworks/xstream/persistence/XmlArrayList;
.super Ljava/util/AbstractList;
.source "XmlArrayList.java"


# instance fields
.field private final map:Lcom/thoughtworks/xstream/persistence/XmlMap;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/persistence/PersistenceStrategy;)V
    .locals 1
    .param p1, "persistenceStrategy"    # Lcom/thoughtworks/xstream/persistence/PersistenceStrategy;

    .line 25
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 26
    new-instance v0, Lcom/thoughtworks/xstream/persistence/XmlMap;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/persistence/XmlMap;-><init>(Lcom/thoughtworks/xstream/persistence/PersistenceStrategy;)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/persistence/XmlArrayList;->map:Lcom/thoughtworks/xstream/persistence/XmlMap;

    .line 27
    return-void
.end method

.method private rangeCheck(I)V
    .locals 4
    .param p1, "index"    # I

    .line 54
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/persistence/XmlArrayList;->size()I

    move-result v0

    .line 55
    .local v0, "size":I
    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 59
    return-void

    .line 56
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, ", Size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 7
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Object;

    .line 41
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/persistence/XmlArrayList;->size()I

    move-result v0

    .line 42
    .local v0, "size":I
    add-int/lit8 v1, v0, 0x1

    if-ge p1, v1, :cond_2

    if-ltz p1, :cond_2

    .line 46
    if-eq p1, v0, :cond_0

    add-int/lit8 v1, p1, -0x1

    goto :goto_0

    :cond_0
    move v1, p1

    .line 47
    .local v1, "to":I
    :goto_0
    move v2, v0

    .local v2, "i":I
    :goto_1
    if-le v2, v1, :cond_1

    .line 48
    iget-object v3, p0, Lcom/thoughtworks/xstream/persistence/XmlArrayList;->map:Lcom/thoughtworks/xstream/persistence/XmlMap;

    new-instance v4, Ljava/lang/Integer;

    add-int/lit8 v5, v2, 0x1

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    iget-object v5, p0, Lcom/thoughtworks/xstream/persistence/XmlArrayList;->map:Lcom/thoughtworks/xstream/persistence/XmlMap;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v6}, Lcom/thoughtworks/xstream/persistence/XmlMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/thoughtworks/xstream/persistence/XmlMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 50
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/thoughtworks/xstream/persistence/XmlArrayList;->map:Lcom/thoughtworks/xstream/persistence/XmlMap;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3, p2}, Lcom/thoughtworks/xstream/persistence/XmlMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    return-void

    .line 43
    .end local v1    # "to":I
    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, ", Size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I

    .line 62
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/persistence/XmlArrayList;->rangeCheck(I)V

    .line 63
    iget-object v0, p0, Lcom/thoughtworks/xstream/persistence/XmlArrayList;->map:Lcom/thoughtworks/xstream/persistence/XmlMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/persistence/XmlMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 8
    .param p1, "index"    # I

    .line 67
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/persistence/XmlArrayList;->size()I

    move-result v0

    .line 68
    .local v0, "size":I
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/persistence/XmlArrayList;->rangeCheck(I)V

    .line 69
    iget-object v1, p0, Lcom/thoughtworks/xstream/persistence/XmlArrayList;->map:Lcom/thoughtworks/xstream/persistence/XmlMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/thoughtworks/xstream/persistence/XmlMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 70
    .local v1, "value":Ljava/lang/Object;
    move v2, p1

    .local v2, "i":I
    :goto_0
    add-int/lit8 v3, v0, -0x1

    if-ge v2, v3, :cond_0

    .line 71
    iget-object v3, p0, Lcom/thoughtworks/xstream/persistence/XmlArrayList;->map:Lcom/thoughtworks/xstream/persistence/XmlMap;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    iget-object v5, p0, Lcom/thoughtworks/xstream/persistence/XmlArrayList;->map:Lcom/thoughtworks/xstream/persistence/XmlMap;

    new-instance v6, Ljava/lang/Integer;

    add-int/lit8 v7, v2, 0x1

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v6}, Lcom/thoughtworks/xstream/persistence/XmlMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/thoughtworks/xstream/persistence/XmlMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 73
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/thoughtworks/xstream/persistence/XmlArrayList;->map:Lcom/thoughtworks/xstream/persistence/XmlMap;

    new-instance v3, Ljava/lang/Integer;

    add-int/lit8 v4, v0, -0x1

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/thoughtworks/xstream/persistence/XmlMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    return-object v1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Object;

    .line 34
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/persistence/XmlArrayList;->rangeCheck(I)V

    .line 35
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/persistence/XmlArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 36
    .local v0, "value":Ljava/lang/Object;
    iget-object v1, p0, Lcom/thoughtworks/xstream/persistence/XmlArrayList;->map:Lcom/thoughtworks/xstream/persistence/XmlMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, p2}, Lcom/thoughtworks/xstream/persistence/XmlMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    return-object v0
.end method

.method public size()I
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/thoughtworks/xstream/persistence/XmlArrayList;->map:Lcom/thoughtworks/xstream/persistence/XmlMap;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/persistence/XmlMap;->size()I

    move-result v0

    return v0
.end method
