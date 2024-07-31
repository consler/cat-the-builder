.class public final Lcom/amitshekhar/utils/TableNameParser;
.super Ljava/lang/Object;
.source "TableNameParser.java"


# static fields
.field private static final KEYWORD_FROM:Ljava/lang/String; = "from"

.field private static final KEYWORD_INTO:Ljava/lang/String; = "into"

.field private static final KEYWORD_JOIN:Ljava/lang/String; = "join"

.field private static final KEYWORD_TABLE:Ljava/lang/String; = "table"

.field private static final KEYWORD_UPDATE:Ljava/lang/String; = "update"

.field private static final KEYWORD_USING:Ljava/lang/String; = "using"

.field private static final NO_INDEX:I = -0x1

.field private static final REGEX_SPACE:Ljava/lang/String; = "\\s+"

.field private static final SPACE:Ljava/lang/String; = " "

.field private static final TOKEN_ASTERICK:Ljava/lang/String; = "*"

.field private static final TOKEN_COMMA:Ljava/lang/String; = ","

.field private static final TOKEN_CREATE:Ljava/lang/String; = "create"

.field private static final TOKEN_DELETE:Ljava/lang/String; = "delete"

.field private static final TOKEN_DUAL:Ljava/lang/String; = "dual"

.field private static final TOKEN_INDEX:Ljava/lang/String; = "index"

.field private static TOKEN_NEWLINE:Ljava/lang/String; = null

.field private static final TOKEN_OF:Ljava/lang/String; = "of"

.field private static final TOKEN_ORACLE_HINT_END:Ljava/lang/String; = "*/"

.field private static final TOKEN_ORACLE_HINT_START:Ljava/lang/String; = "/*+"

.field private static final TOKEN_PARAN_START:Ljava/lang/String; = "("

.field private static final TOKEN_SEMI_COLON:Ljava/lang/String; = ";"

.field private static final TOKEN_SET:Ljava/lang/String; = "set"

.field private static final TOKEN_SINGLE_LINE_COMMENT:Ljava/lang/String; = "--"

.field private static final concerned:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ignored:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private tables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 62
    const-string v0, "table"

    const-string v1, "into"

    const-string v2, "join"

    const-string/jumbo v3, "using"

    const-string/jumbo v4, "update"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/amitshekhar/utils/TableNameParser;->concerned:Ljava/util/List;

    .line 63
    const-string v0, "("

    const-string v1, "set"

    const-string v2, "of"

    const-string v3, "dual"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/amitshekhar/utils/TableNameParser;->ignored:Ljava/util/List;

    .line 64
    const-string v0, "\\r\\n|\\r|\\n|\\n\\r"

    sput-object v0, Lcom/amitshekhar/utils/TableNameParser;->TOKEN_NEWLINE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 9
    .param p1, "sql"    # Ljava/lang/String;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amitshekhar/utils/TableNameParser;->tables:Ljava/util/Map;

    .line 73
    invoke-direct {p0, p1}, Lcom/amitshekhar/utils/TableNameParser;->removeComments(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "nocomments":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/amitshekhar/utils/TableNameParser;->normalized(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "normalized":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/amitshekhar/utils/TableNameParser;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, "cleansed":Ljava/lang/String;
    const-string v3, "\\s+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, "tokens":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 79
    .local v4, "index":I
    aget-object v5, v3, v4

    .line 80
    .local v5, "firstToken":Ljava/lang/String;
    invoke-direct {p0, v5, v3, v4}, Lcom/amitshekhar/utils/TableNameParser;->isOracleSpecialDelete(Ljava/lang/String;[Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 81
    invoke-direct {p0, v5, v3, v4}, Lcom/amitshekhar/utils/TableNameParser;->handleSpecialOracleSpecialDelete(Ljava/lang/String;[Ljava/lang/String;I)V

    goto :goto_3

    .line 82
    :cond_0
    invoke-direct {p0, v5, v3, v4}, Lcom/amitshekhar/utils/TableNameParser;->isCreateIndex(Ljava/lang/String;[Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 83
    invoke-direct {p0, v5, v3, v4}, Lcom/amitshekhar/utils/TableNameParser;->handleCreateIndex(Ljava/lang/String;[Ljava/lang/String;I)V

    goto :goto_3

    .line 85
    :cond_1
    :goto_0
    invoke-direct {p0, v3, v4}, Lcom/amitshekhar/utils/TableNameParser;->moreTokens([Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 86
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "index":I
    .local v6, "index":I
    aget-object v4, v3, v4

    .line 88
    .local v4, "currentToken":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/amitshekhar/utils/TableNameParser;->isFromToken(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 89
    invoke-direct {p0, v3, v6}, Lcom/amitshekhar/utils/TableNameParser;->processFromToken([Ljava/lang/String;I)V

    goto :goto_1

    .line 90
    :cond_2
    invoke-direct {p0, v4}, Lcom/amitshekhar/utils/TableNameParser;->shouldProcess(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 91
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "index":I
    .local v7, "index":I
    aget-object v6, v3, v6

    .line 92
    .local v6, "nextToken":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/amitshekhar/utils/TableNameParser;->considerInclusion(Ljava/lang/String;)V

    .line 94
    invoke-direct {p0, v3, v7}, Lcom/amitshekhar/utils/TableNameParser;->moreTokens([Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 95
    .end local v6    # "nextToken":Ljava/lang/String;
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "index":I
    .local v6, "index":I
    aget-object v7, v3, v7

    move v4, v6

    goto :goto_2

    .line 94
    .local v6, "nextToken":Ljava/lang/String;
    .restart local v7    # "index":I
    :cond_3
    move v4, v7

    goto :goto_2

    .line 98
    .end local v4    # "currentToken":Ljava/lang/String;
    .end local v7    # "index":I
    .local v6, "index":I
    :cond_4
    :goto_1
    move v4, v6

    .end local v6    # "index":I
    .local v4, "index":I
    :goto_2
    goto :goto_0

    .line 100
    :cond_5
    :goto_3
    return-void
.end method

.method private clean(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "normalized"    # Ljava/lang/String;

    .line 133
    const-string v0, "/*+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 134
    .local v0, "start":I
    const/4 v1, -0x1

    .line 135
    .local v1, "end":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 136
    const-string v3, "*/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 137
    if-eq v1, v2, :cond_0

    .line 138
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, "firstHalf":Ljava/lang/String;
    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 140
    .local v3, "secondHalf":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 143
    .end local v2    # "firstHalf":Ljava/lang/String;
    .end local v3    # "secondHalf":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private considerInclusion(Ljava/lang/String;)V
    .locals 2
    .param p1, "token"    # Ljava/lang/String;

    .line 255
    sget-object v0, Lcom/amitshekhar/utils/TableNameParser;->ignored:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amitshekhar/utils/TableNameParser;->tables:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/amitshekhar/utils/TableNameParser;->tables:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    :cond_0
    return-void
.end method

.method private handleCreateIndex(Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 1
    .param p1, "currentToken"    # Ljava/lang/String;
    .param p2, "tokens"    # [Ljava/lang/String;
    .param p3, "index"    # I

    .line 177
    add-int/lit8 v0, p3, 0x4

    aget-object v0, p2, v0

    .line 178
    .local v0, "tableName":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/amitshekhar/utils/TableNameParser;->considerInclusion(Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method private handleSpecialOracleSpecialDelete(Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 1
    .param p1, "currentToken"    # Ljava/lang/String;
    .param p2, "tokens"    # [Ljava/lang/String;
    .param p3, "index"    # I

    .line 160
    add-int/lit8 v0, p3, 0x1

    aget-object v0, p2, v0

    .line 161
    .local v0, "tableName":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/amitshekhar/utils/TableNameParser;->considerInclusion(Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method private hasIthToken([Ljava/lang/String;II)Z
    .locals 2
    .param p1, "tokens"    # [Ljava/lang/String;
    .param p2, "currentIndex"    # I
    .param p3, "tokenNumber"    # I

    .line 182
    invoke-direct {p0, p1, p2}, Lcom/amitshekhar/utils/TableNameParser;->moreTokens([Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    array-length v0, p1

    add-int v1, p2, p3

    if-le v0, v1, :cond_0

    .line 183
    const/4 v0, 0x1

    return v0

    .line 185
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private indexOfRegex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "regex"    # Ljava/lang/String;
    .param p2, "string"    # Ljava/lang/String;

    .line 118
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 119
    .local v0, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 120
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    return v2
.end method

.method private isCreateIndex(Ljava/lang/String;[Ljava/lang/String;I)Z
    .locals 4
    .param p1, "currentToken"    # Ljava/lang/String;
    .param p2, "tokens"    # [Ljava/lang/String;
    .param p3, "index"    # I

    .line 165
    const/4 v0, 0x1

    add-int/2addr p3, v0

    .line 166
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "create"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    invoke-direct {p0, p2, p3, v1}, Lcom/amitshekhar/utils/TableNameParser;->hasIthToken([Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    add-int/lit8 v1, p3, 0x1

    .end local p3    # "index":I
    .local v1, "index":I
    aget-object p3, p2, p3

    .line 168
    .local p3, "nextToken":Ljava/lang/String;
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "index"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 169
    return v0

    .line 168
    :cond_0
    move p3, v1

    .line 173
    .end local v1    # "index":I
    .local p3, "index":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isFromToken(Ljava/lang/String;)Z
    .locals 2
    .param p1, "currentToken"    # Ljava/lang/String;

    .line 193
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "from"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isOracleSpecialDelete(Ljava/lang/String;[Ljava/lang/String;I)Z
    .locals 3
    .param p1, "currentToken"    # Ljava/lang/String;
    .param p2, "tokens"    # [Ljava/lang/String;
    .param p3, "index"    # I

    .line 147
    const/4 v0, 0x1

    add-int/2addr p3, v0

    .line 148
    const-string v1, "delete"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    invoke-direct {p0, p2, p3}, Lcom/amitshekhar/utils/TableNameParser;->moreTokens([Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    add-int/lit8 v1, p3, 0x1

    .end local p3    # "index":I
    .local v1, "index":I
    aget-object p3, p2, p3

    .line 151
    .local p3, "nextToken":Ljava/lang/String;
    const-string v2, "from"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "*"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 152
    return v0

    .line 156
    .end local p3    # "nextToken":Ljava/lang/String;
    :cond_0
    move p3, v1

    .end local v1    # "index":I
    .local p3, "index":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private moreTokens([Ljava/lang/String;I)Z
    .locals 1
    .param p1, "tokens"    # [Ljava/lang/String;
    .param p2, "index"    # I

    .line 251
    array-length v0, p1

    if-ge p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private normalized(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "sql"    # Ljava/lang/String;

    .line 124
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amitshekhar/utils/TableNameParser;->TOKEN_NEWLINE:Ljava/lang/String;

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    const-string v2, " , "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    const-string v1, "\\("

    const-string v2, " ( "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\)"

    const-string v2, " ) "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "normalized":Ljava/lang/String;
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 129
    :cond_0
    return-object v0
.end method

.method private processAliasedMultiTables([Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "tokens"    # [Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "currentToken"    # Ljava/lang/String;

    .line 225
    const/4 v0, 0x0

    .line 226
    .local v0, "nextNextToken":Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lcom/amitshekhar/utils/TableNameParser;->moreTokens([Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "index":I
    .local v1, "index":I
    aget-object v0, p1, p2

    move p2, v1

    .line 230
    .end local v1    # "index":I
    .restart local p2    # "index":I
    :cond_0
    invoke-direct {p0, v0}, Lcom/amitshekhar/utils/TableNameParser;->shouldProcessMultipleTables(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 231
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/amitshekhar/utils/TableNameParser;->moreTokens([Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 232
    invoke-direct {p0, p1, p2}, Lcom/amitshekhar/utils/TableNameParser;->moreTokens([Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 233
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "index":I
    .restart local v1    # "index":I
    aget-object p3, p1, p2

    move p2, v1

    .line 235
    .end local v1    # "index":I
    .restart local p2    # "index":I
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/amitshekhar/utils/TableNameParser;->moreTokens([Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 236
    add-int/lit8 p2, p2, 0x1

    .line 238
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/amitshekhar/utils/TableNameParser;->moreTokens([Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 239
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "index":I
    .restart local v1    # "index":I
    aget-object v0, p1, p2

    move p2, v1

    .line 241
    .end local v1    # "index":I
    .restart local p2    # "index":I
    :cond_3
    invoke-direct {p0, p3}, Lcom/amitshekhar/utils/TableNameParser;->considerInclusion(Ljava/lang/String;)V

    goto :goto_0

    .line 244
    :cond_4
    return-void
.end method

.method private processFromToken([Ljava/lang/String;I)V
    .locals 3
    .param p1, "tokens"    # [Ljava/lang/String;
    .param p2, "index"    # I

    .line 197
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "index":I
    .local v0, "index":I
    aget-object p2, p1, p2

    .line 198
    .local p2, "currentToken":Ljava/lang/String;
    invoke-direct {p0, p2}, Lcom/amitshekhar/utils/TableNameParser;->considerInclusion(Ljava/lang/String;)V

    .line 200
    const/4 v1, 0x0

    .line 201
    .local v1, "nextToken":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/amitshekhar/utils/TableNameParser;->moreTokens([Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "index":I
    .local v2, "index":I
    aget-object v1, p1, v0

    move v0, v2

    .line 205
    .end local v2    # "index":I
    .restart local v0    # "index":I
    :cond_0
    invoke-direct {p0, v1}, Lcom/amitshekhar/utils/TableNameParser;->shouldProcessMultipleTables(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 206
    invoke-direct {p0, p1, v0, v1}, Lcom/amitshekhar/utils/TableNameParser;->processNonAliasedMultiTables([Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 208
    :cond_1
    invoke-direct {p0, p1, v0, p2}, Lcom/amitshekhar/utils/TableNameParser;->processAliasedMultiTables([Ljava/lang/String;ILjava/lang/String;)V

    .line 210
    :goto_0
    return-void
.end method

.method private processNonAliasedMultiTables([Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "tokens"    # [Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "nextToken"    # Ljava/lang/String;

    .line 213
    :goto_0
    const-string v0, ","

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "index":I
    .local v0, "index":I
    aget-object p2, p1, p2

    .line 215
    .local p2, "currentToken":Ljava/lang/String;
    invoke-direct {p0, p2}, Lcom/amitshekhar/utils/TableNameParser;->considerInclusion(Ljava/lang/String;)V

    .line 216
    invoke-direct {p0, p1, v0}, Lcom/amitshekhar/utils/TableNameParser;->moreTokens([Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .local v1, "index":I
    aget-object p3, p1, v0

    .line 221
    .end local p2    # "currentToken":Ljava/lang/String;
    move p2, v1

    goto :goto_0

    .line 216
    .end local v1    # "index":I
    .restart local v0    # "index":I
    .restart local p2    # "currentToken":Ljava/lang/String;
    :cond_0
    move p2, v0

    .line 222
    .end local v0    # "index":I
    .local p2, "index":I
    :cond_1
    return-void
.end method

.method private removeComments(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "sql"    # Ljava/lang/String;

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 105
    .local v2, "nextCommentPosition":I
    :goto_0
    const/4 v3, -0x1

    if-le v2, v3, :cond_1

    .line 106
    sget-object v4, Lcom/amitshekhar/utils/TableNameParser;->TOKEN_NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/amitshekhar/utils/TableNameParser;->indexOfRegex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 107
    .local v4, "end":I
    if-ne v4, v3, :cond_0

    .line 108
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 110
    :cond_0
    add-int v3, v4, v2

    const-string v5, ""

    invoke-virtual {v0, v2, v3, v5}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 113
    .end local v4    # "end":I
    goto :goto_0

    .line 114
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private shouldProcess(Ljava/lang/String;)Z
    .locals 2
    .param p1, "currentToken"    # Ljava/lang/String;

    .line 189
    sget-object v0, Lcom/amitshekhar/utils/TableNameParser;->concerned:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private shouldProcessMultipleTables(Ljava/lang/String;)Z
    .locals 1
    .param p1, "nextToken"    # Ljava/lang/String;

    .line 247
    if-eqz p1, :cond_0

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public tables()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 264
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/amitshekhar/utils/TableNameParser;->tables:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
