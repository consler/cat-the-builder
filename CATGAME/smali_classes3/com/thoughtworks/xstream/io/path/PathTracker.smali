.class public Lcom/thoughtworks/xstream/io/path/PathTracker;
.super Ljava/lang/Object;
.source "PathTracker.java"


# instance fields
.field private capacity:I

.field private currentPath:Lcom/thoughtworks/xstream/io/path/Path;

.field private indexMapStack:[Ljava/util/Map;

.field private pathStack:[Ljava/lang/String;

.field private pointer:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/path/PathTracker;-><init>(I)V

    .line 57
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "initialCapacity"    # I

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->capacity:I

    .line 66
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->pathStack:[Ljava/lang/String;

    .line 67
    new-array v0, v0, [Ljava/util/Map;

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->indexMapStack:[Ljava/util/Map;

    .line 68
    return-void
.end method

.method private resizeStacks(I)V
    .locals 5
    .param p1, "newCapacity"    # I

    .line 151
    new-array v0, p1, [Ljava/lang/String;

    .line 152
    .local v0, "newPathStack":[Ljava/lang/String;
    new-array v1, p1, [Ljava/util/Map;

    .line 153
    .local v1, "newIndexMapStack":[Ljava/util/Map;
    iget v2, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->capacity:I

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 154
    .local v2, "min":I
    iget-object v3, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->pathStack:[Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v3, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    iget-object v3, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->indexMapStack:[Ljava/util/Map;

    invoke-static {v3, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 156
    iput-object v0, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->pathStack:[Ljava/lang/String;

    .line 157
    iput-object v1, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->indexMapStack:[Ljava/util/Map;

    .line 158
    iput p1, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->capacity:I

    .line 159
    return-void
.end method


# virtual methods
.method public depth()I
    .locals 1

    .line 147
    iget v0, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->pointer:I

    return v0
.end method

.method public getPath()Lcom/thoughtworks/xstream/io/path/Path;
    .locals 4

    .line 165
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->currentPath:Lcom/thoughtworks/xstream/io/path/Path;

    if-nez v0, :cond_1

    .line 166
    iget v0, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->pointer:I

    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 167
    .local v1, "chunks":[Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    .line 168
    neg-int v0, v0

    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, 0x1

    if-gtz v0, :cond_0

    .line 169
    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/io/path/PathTracker;->peekElement(I)Ljava/lang/String;

    move-result-object v2

    .line 170
    .local v2, "name":Ljava/lang/String;
    iget v3, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->pointer:I

    add-int/2addr v3, v0

    aput-object v2, v1, v3

    .line 171
    .end local v2    # "name":Ljava/lang/String;
    goto :goto_0

    .line 172
    .end local v0    # "i":I
    :cond_0
    new-instance v0, Lcom/thoughtworks/xstream/io/path/Path;

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/io/path/Path;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->currentPath:Lcom/thoughtworks/xstream/io/path/Path;

    .line 174
    .end local v1    # "chunks":[Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->currentPath:Lcom/thoughtworks/xstream/io/path/Path;

    return-object v0
.end method

.method public peekElement()Ljava/lang/String;
    .locals 1

    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/io/path/PathTracker;->peekElement(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public peekElement(I)Ljava/lang/String;
    .locals 5
    .param p1, "i"    # I

    .line 123
    iget v0, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->pointer:I

    neg-int v1, v0

    if-lt p1, v1, :cond_1

    if-gtz p1, :cond_1

    .line 126
    add-int/2addr v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 128
    .local v0, "idx":I
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->indexMapStack:[Ljava/util/Map;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->pathStack:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 129
    .local v2, "integer":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 130
    .local v3, "index":I
    if-le v3, v1, :cond_0

    .line 131
    new-instance v1, Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->pathStack:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x6

    invoke-direct {v1, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 132
    .local v1, "chunk":Ljava/lang/StringBuffer;
    iget-object v4, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->pathStack:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v4, 0x5b

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v4, 0x5d

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 133
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, "name":Ljava/lang/String;
    goto :goto_0

    .line 135
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->pathStack:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 137
    .restart local v1    # "name":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 124
    .end local v0    # "idx":I
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "integer":Ljava/lang/Integer;
    .end local v3    # "index":I
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public popElement()V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->indexMapStack:[Ljava/util/Map;

    iget v1, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->pointer:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 99
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->pathStack:[Ljava/lang/String;

    aput-object v2, v0, v1

    .line 100
    iput-object v2, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->currentPath:Lcom/thoughtworks/xstream/io/path/Path;

    .line 101
    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->pointer:I

    .line 102
    return-void
.end method

.method public pushElement(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 76
    iget v0, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->pointer:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget v2, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->capacity:I

    if-lt v0, v2, :cond_0

    .line 77
    mul-int/lit8 v2, v2, 0x2

    invoke-direct {p0, v2}, Lcom/thoughtworks/xstream/io/path/PathTracker;->resizeStacks(I)V

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->pathStack:[Ljava/lang/String;

    iget v2, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->pointer:I

    aput-object p1, v0, v2

    .line 80
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->indexMapStack:[Ljava/util/Map;

    aget-object v0, v0, v2

    .line 81
    .local v0, "indexMap":Ljava/util/Map;
    if-nez v0, :cond_1

    .line 82
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v0, v2

    .line 83
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->indexMapStack:[Ljava/util/Map;

    iget v3, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->pointer:I

    aput-object v0, v2, v3

    .line 85
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 86
    new-instance v2, Ljava/lang/Integer;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 88
    :cond_2
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :goto_0
    iget v2, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->pointer:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->pointer:I

    .line 91
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->currentPath:Lcom/thoughtworks/xstream/io/path/Path;

    .line 92
    return-void
.end method
