.class final Lcom/koushikdutta/async/http/cache/HeaderParser;
.super Ljava/lang/Object;
.source "HeaderParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/http/cache/HeaderParser$CacheControlHandler;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseCacheControl(Ljava/lang/String;Lcom/koushikdutta/async/http/cache/HeaderParser$CacheControlHandler;)V
    .locals 5
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "handler"    # Lcom/koushikdutta/async/http/cache/HeaderParser$CacheControlHandler;

    .line 29
    if-nez p0, :cond_0

    .line 30
    return-void

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    .local v0, "pos":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 33
    move v1, v0

    .line 34
    .local v1, "tokenStart":I
    const-string v2, "=,"

    invoke-static {p0, v0, v2}, Lcom/koushikdutta/async/http/cache/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 35
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 37
    .local v2, "directive":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v0, v3, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2c

    if-ne v3, v4, :cond_1

    goto :goto_2

    .line 43
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 44
    invoke-static {p0, v0}, Lcom/koushikdutta/async/http/cache/HeaderParser;->skipWhitespace(Ljava/lang/String;I)I

    move-result v0

    .line 49
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x22

    if-ne v3, v4, :cond_2

    .line 50
    add-int/lit8 v0, v0, 0x1

    .line 51
    move v3, v0

    .line 52
    .local v3, "parameterStart":I
    const-string v4, "\""

    invoke-static {p0, v0, v4}, Lcom/koushikdutta/async/http/cache/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 53
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 54
    .local v4, "parameter":Ljava/lang/String;
    nop

    .end local v3    # "parameterStart":I
    add-int/lit8 v0, v0, 0x1

    .line 57
    goto :goto_1

    .line 58
    .end local v4    # "parameter":Ljava/lang/String;
    :cond_2
    move v3, v0

    .line 59
    .restart local v3    # "parameterStart":I
    const-string v4, ","

    invoke-static {p0, v0, v4}, Lcom/koushikdutta/async/http/cache/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 60
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 63
    .end local v3    # "parameterStart":I
    .restart local v4    # "parameter":Ljava/lang/String;
    :goto_1
    invoke-interface {p1, v2, v4}, Lcom/koushikdutta/async/http/cache/HeaderParser$CacheControlHandler;->handle(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .end local v1    # "tokenStart":I
    .end local v2    # "directive":Ljava/lang/String;
    .end local v4    # "parameter":Ljava/lang/String;
    goto :goto_0

    .line 38
    .restart local v1    # "tokenStart":I
    .restart local v2    # "directive":Ljava/lang/String;
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 39
    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Lcom/koushikdutta/async/http/cache/HeaderParser$CacheControlHandler;->handle(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    goto :goto_0

    .line 65
    .end local v1    # "tokenStart":I
    .end local v2    # "directive":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method public static parseSeconds(Ljava/lang/String;)I
    .locals 4
    .param p0, "value"    # Ljava/lang/String;

    .line 101
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .local v0, "seconds":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 103
    const v2, 0x7fffffff

    return v2

    .line 104
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 105
    const/4 v2, 0x0

    return v2

    .line 107
    :cond_1
    long-to-int v2, v0

    return v2

    .line 109
    .end local v0    # "seconds":J
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, -0x1

    return v1
.end method

.method private static skipUntil(Ljava/lang/String;ILjava/lang/String;)I
    .locals 2
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "characters"    # Ljava/lang/String;

    .line 73
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 74
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 75
    goto :goto_1

    .line 73
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 78
    :cond_1
    :goto_1
    return p1
.end method

.method private static skipWhitespace(Ljava/lang/String;I)I
    .locals 2
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I

    .line 86
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 87
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 88
    .local v0, "c":C
    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 89
    goto :goto_1

    .line 86
    .end local v0    # "c":C
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 92
    :cond_1
    :goto_1
    return p1
.end method
