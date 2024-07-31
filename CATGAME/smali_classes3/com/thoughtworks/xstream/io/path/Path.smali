.class public Lcom/thoughtworks/xstream/io/path/Path;
.super Ljava/lang/Object;
.source "Path.java"


# static fields
.field private static final DOT:Lcom/thoughtworks/xstream/io/path/Path;


# instance fields
.field private final chunks:[Ljava/lang/String;

.field private transient pathAsString:Ljava/lang/String;

.field private transient pathExplicit:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 66
    new-instance v0, Lcom/thoughtworks/xstream/io/path/Path;

    const-string v1, "."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/io/path/Path;-><init>([Ljava/lang/String;)V

    sput-object v0, Lcom/thoughtworks/xstream/io/path/Path;->DOT:Lcom/thoughtworks/xstream/io/path/Path;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "pathAsString"    # Ljava/lang/String;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v0, "result":Ljava/util/List;
    const/4 v1, 0x0

    .line 73
    .local v1, "currentIndex":I
    iput-object p1, p0, Lcom/thoughtworks/xstream/io/path/Path;->pathAsString:Ljava/lang/String;

    .line 74
    :goto_0
    const/16 v2, 0x2f

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    move v3, v2

    .local v3, "nextSeparator":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 76
    invoke-direct {p0, p1, v1, v3}, Lcom/thoughtworks/xstream/io/path/Path;->normalize(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    add-int/lit8 v1, v3, 0x1

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Lcom/thoughtworks/xstream/io/path/Path;->normalize(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 81
    .local v2, "arr":[Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 82
    iput-object v2, p0, Lcom/thoughtworks/xstream/io/path/Path;->chunks:[Ljava/lang/String;

    .line 83
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 0
    .param p1, "chunks"    # [Ljava/lang/String;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/thoughtworks/xstream/io/path/Path;->chunks:[Ljava/lang/String;

    .line 100
    return-void
.end method

.method private depthOfPathDivergence([Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "path1"    # [Ljava/lang/String;
    .param p2, "path2"    # [Ljava/lang/String;

    .line 175
    array-length v0, p1

    array-length v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 176
    .local v0, "minLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 177
    aget-object v2, p1, v1

    aget-object v3, p2, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 178
    return v1

    .line 176
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 181
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method private normalize(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 86
    sub-int v0, p3, p2

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    add-int/lit8 v0, p3, -0x3

    .line 87
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p3, -0x2

    .line 88
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x31

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p3, -0x1

    .line 89
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_0

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/path/Path;->pathAsString:Ljava/lang/String;

    .line 91
    add-int/lit8 v0, p3, -0x3

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 93
    :cond_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/thoughtworks/xstream/io/path/Path;)Lcom/thoughtworks/xstream/io/path/Path;
    .locals 4
    .param p1, "relativePath"    # Lcom/thoughtworks/xstream/io/path/Path;

    .line 185
    new-instance v0, Lcom/thoughtworks/xstream/core/util/FastStack;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/core/util/FastStack;-><init>(I)V

    .line 187
    .local v0, "absoluteStack":Lcom/thoughtworks/xstream/core/util/FastStack;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/path/Path;->chunks:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 188
    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Lcom/thoughtworks/xstream/core/util/FastStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 191
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p1, Lcom/thoughtworks/xstream/io/path/Path;->chunks:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 192
    aget-object v2, v2, v1

    .line 193
    .local v2, "relativeChunk":Ljava/lang/String;
    const-string v3, ".."

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 194
    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/FastStack;->pop()Ljava/lang/Object;

    goto :goto_2

    .line 195
    :cond_1
    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 196
    invoke-virtual {v0, v2}, Lcom/thoughtworks/xstream/core/util/FastStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .end local v2    # "relativeChunk":Ljava/lang/String;
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 200
    .end local v1    # "i":I
    :cond_3
    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/FastStack;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 201
    .local v1, "result":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    array-length v3, v1

    if-ge v2, v3, :cond_4

    .line 202
    invoke-virtual {v0, v2}, Lcom/thoughtworks/xstream/core/util/FastStack;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 201
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 205
    .end local v2    # "i":I
    :cond_4
    new-instance v2, Lcom/thoughtworks/xstream/io/path/Path;

    invoke-direct {v2, v1}, Lcom/thoughtworks/xstream/io/path/Path;-><init>([Ljava/lang/String;)V

    return-object v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 135
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 136
    :cond_0
    instance-of v1, p1, Lcom/thoughtworks/xstream/io/path/Path;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 138
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/thoughtworks/xstream/io/path/Path;

    .line 139
    .local v1, "other":Lcom/thoughtworks/xstream/io/path/Path;
    iget-object v3, p0, Lcom/thoughtworks/xstream/io/path/Path;->chunks:[Ljava/lang/String;

    array-length v3, v3

    iget-object v4, v1, Lcom/thoughtworks/xstream/io/path/Path;->chunks:[Ljava/lang/String;

    array-length v4, v4

    if-eq v3, v4, :cond_2

    return v2

    .line 140
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/thoughtworks/xstream/io/path/Path;->chunks:[Ljava/lang/String;

    array-length v5, v4

    if-ge v3, v5, :cond_4

    .line 141
    aget-object v4, v4, v3

    iget-object v5, v1, Lcom/thoughtworks/xstream/io/path/Path;->chunks:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    return v2

    .line 140
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 144
    .end local v3    # "i":I
    :cond_4
    return v0
.end method

.method public explicit()Ljava/lang/String;
    .locals 6

    .line 115
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/path/Path;->pathExplicit:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 116
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 117
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/path/Path;->chunks:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 118
    if-lez v1, :cond_0

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 119
    :cond_0
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/path/Path;->chunks:[Ljava/lang/String;

    aget-object v2, v2, v1

    .line 120
    .local v2, "chunk":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 122
    .local v3, "length":I
    if-lez v3, :cond_1

    .line 123
    add-int/lit8 v4, v3, -0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 124
    .local v4, "c":C
    const/16 v5, 0x5d

    if-eq v4, v5, :cond_1

    const/16 v5, 0x2e

    if-eq v4, v5, :cond_1

    .line 125
    const-string v5, "[1]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    .end local v2    # "chunk":Ljava/lang/String;
    .end local v3    # "length":I
    .end local v4    # "c":C
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/thoughtworks/xstream/io/path/Path;->pathExplicit:Ljava/lang/String;

    .line 131
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    :cond_3
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/path/Path;->pathExplicit:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 148
    const v0, 0x20675fcb

    .line 149
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/path/Path;->chunks:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 150
    mul-int/lit8 v3, v0, 0x1d

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v3, v2

    .line 149
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 152
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method public isAncestor(Lcom/thoughtworks/xstream/io/path/Path;)Z
    .locals 4
    .param p1, "child"    # Lcom/thoughtworks/xstream/io/path/Path;

    .line 209
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object v1, p1, Lcom/thoughtworks/xstream/io/path/Path;->chunks:[Ljava/lang/String;

    array-length v1, v1

    iget-object v2, p0, Lcom/thoughtworks/xstream/io/path/Path;->chunks:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    goto :goto_1

    .line 212
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/path/Path;->chunks:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 213
    aget-object v2, v2, v1

    iget-object v3, p1, Lcom/thoughtworks/xstream/io/path/Path;->chunks:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 214
    return v0

    .line 212
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 217
    .end local v1    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 210
    :cond_3
    :goto_1
    return v0
.end method

.method public relativeTo(Lcom/thoughtworks/xstream/io/path/Path;)Lcom/thoughtworks/xstream/io/path/Path;
    .locals 6
    .param p1, "that"    # Lcom/thoughtworks/xstream/io/path/Path;

    .line 156
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/path/Path;->chunks:[Ljava/lang/String;

    iget-object v1, p1, Lcom/thoughtworks/xstream/io/path/Path;->chunks:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/io/path/Path;->depthOfPathDivergence([Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 157
    .local v0, "depthOfPathDivergence":I
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/path/Path;->chunks:[Ljava/lang/String;

    array-length v1, v1

    iget-object v2, p1, Lcom/thoughtworks/xstream/io/path/Path;->chunks:[Ljava/lang/String;

    array-length v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v2, v0, 0x2

    sub-int/2addr v1, v2

    new-array v1, v1, [Ljava/lang/String;

    .line 158
    .local v1, "result":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 160
    .local v2, "count":I
    move v3, v0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/thoughtworks/xstream/io/path/Path;->chunks:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 161
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "count":I
    .local v4, "count":I
    const-string v5, ".."

    aput-object v5, v1, v2

    .line 160
    add-int/lit8 v3, v3, 0x1

    move v2, v4

    goto :goto_0

    .line 163
    .end local v3    # "i":I
    .end local v4    # "count":I
    .restart local v2    # "count":I
    :cond_0
    move v3, v0

    .local v3, "j":I
    :goto_1
    iget-object v4, p1, Lcom/thoughtworks/xstream/io/path/Path;->chunks:[Ljava/lang/String;

    array-length v5, v4

    if-ge v3, v5, :cond_1

    .line 164
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "count":I
    .local v5, "count":I
    aget-object v4, v4, v3

    aput-object v4, v1, v2

    .line 163
    add-int/lit8 v3, v3, 0x1

    move v2, v5

    goto :goto_1

    .line 167
    .end local v3    # "j":I
    .end local v5    # "count":I
    .restart local v2    # "count":I
    :cond_1
    if-nez v2, :cond_2

    .line 168
    sget-object v3, Lcom/thoughtworks/xstream/io/path/Path;->DOT:Lcom/thoughtworks/xstream/io/path/Path;

    return-object v3

    .line 170
    :cond_2
    new-instance v3, Lcom/thoughtworks/xstream/io/path/Path;

    invoke-direct {v3, v1}, Lcom/thoughtworks/xstream/io/path/Path;-><init>([Ljava/lang/String;)V

    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/path/Path;->pathAsString:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 104
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 105
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/path/Path;->chunks:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 106
    if-lez v1, :cond_0

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 107
    :cond_0
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/path/Path;->chunks:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 109
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/thoughtworks/xstream/io/path/Path;->pathAsString:Ljava/lang/String;

    .line 111
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    :cond_2
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/path/Path;->pathAsString:Ljava/lang/String;

    return-object v0
.end method
