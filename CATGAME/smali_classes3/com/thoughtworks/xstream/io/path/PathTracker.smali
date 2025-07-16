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

    const/16 v0, 0x10

    .line 56
    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/path/PathTracker;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 65
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->capacity:I

    .line 66
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->pathStack:[Ljava/lang/String;

    .line 67
    new-array p1, p1, [Ljava/util/Map;

    iput-object p1, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->indexMapStack:[Ljava/util/Map;

    return-void
.end method

.method private resizeStacks(I)V
    .locals 5

    .line 151
    new-array v0, p1, [Ljava/lang/String;

    .line 152
    new-array v1, p1, [Ljava/util/Map;

    .line 153
    iget v2, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->capacity:I

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 154
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

    const/4 v2, 0x0

    const-string v3, ""

    .line 167
    aput-object v3, v1, v2

    neg-int v0, v0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    if-gtz v0, :cond_0

    .line 169
    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/io/path/PathTracker;->peekElement(I)Ljava/lang/String;

    move-result-object v2

    .line 170
    iget v3, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->pointer:I

    add-int/2addr v3, v0

    aput-object v2, v1, v3

    goto :goto_0

    .line 172
    :cond_0
    new-instance v0, Lcom/thoughtworks/xstream/io/path/Path;

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/io/path/Path;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->currentPath:Lcom/thoughtworks/xstream/io/path/Path;

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->currentPath:Lcom/thoughtworks/xstream/io/path/Path;

    return-object v0
.end method

.method public peekElement()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 111
    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/io/path/PathTracker;->peekElement(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public peekElement(I)Ljava/lang/String;
    .locals 3

    .line 123
    iget v0, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->pointer:I

    neg-int v1, v0

    if-lt p1, v1, :cond_1

    if-gtz p1, :cond_1

    add-int/2addr v0, p1

    const/4 p1, 0x1

    sub-int/2addr v0, p1

    .line 128
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->indexMapStack:[Ljava/util/Map;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->pathStack:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 129
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 131
    new-instance p1, Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->pathStack:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x6

    invoke-direct {p1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 132
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->pathStack:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 133
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 135
    :cond_0
    iget-object p1, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->pathStack:[Ljava/lang/String;

    aget-object p1, p1, v0

    :goto_0
    return-object p1

    .line 124
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

    add-int/lit8 v1, v1, -0x1

    .line 101
    iput v1, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->pointer:I

    return-void
.end method

.method public pushElement(Ljava/lang/String;)V
    .locals 4

    .line 76
    iget v0, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->pointer:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget v2, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->capacity:I

    if-lt v0, v2, :cond_0

    mul-int/lit8 v2, v2, 0x2

    .line 77
    invoke-direct {p0, v2}, Lcom/thoughtworks/xstream/io/path/PathTracker;->resizeStacks(I)V

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->pathStack:[Ljava/lang/String;

    iget v2, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->pointer:I

    aput-object p1, v0, v2

    .line 80
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->indexMapStack:[Ljava/util/Map;

    aget-object v0, v0, v2

    if-nez v0, :cond_1

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

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
    iget p1, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->pointer:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->pointer:I

    const/4 p1, 0x0

    .line 91
    iput-object p1, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->currentPath:Lcom/thoughtworks/xstream/io/path/Path;

    return-void
.end method
