.class final Lcom/koushikdutta/async/http/cache/ResponseHeaders;
.super Ljava/lang/Object;
.source "ResponseHeaders.java"


# static fields
.field private static final RECEIVED_MILLIS:Ljava/lang/String; = "X-Android-Received-Millis"

.field private static final SENT_MILLIS:Ljava/lang/String; = "X-Android-Sent-Millis"


# instance fields
.field private ageSeconds:I

.field private connection:Ljava/lang/String;

.field private contentEncoding:Ljava/lang/String;

.field private contentLength:J

.field private etag:Ljava/lang/String;

.field private expires:Ljava/util/Date;

.field private final headers:Lcom/koushikdutta/async/http/cache/RawHeaders;

.field private isPublic:Z

.field private lastModified:Ljava/util/Date;

.field private maxAgeSeconds:I

.field private mustRevalidate:Z

.field private noCache:Z

.field private noStore:Z

.field private proxyAuthenticate:Ljava/lang/String;

.field private receivedResponseMillis:J

.field private sMaxAgeSeconds:I

.field private sentRequestMillis:J

.field private servedDate:Ljava/util/Date;

.field private transferEncoding:Ljava/lang/String;

.field private final uri:Landroid/net/Uri;

.field private varyFields:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private wwwAuthenticate:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/koushikdutta/async/http/cache/RawHeaders;)V
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "headers"    # Lcom/koushikdutta/async/http/cache/RawHeaders;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->maxAgeSeconds:I

    .line 93
    iput v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->sMaxAgeSeconds:I

    .line 105
    iput v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->ageSeconds:I

    .line 108
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->varyFields:Ljava/util/Set;

    .line 112
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->contentLength:J

    .line 118
    iput-object p1, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->uri:Landroid/net/Uri;

    .line 119
    iput-object p2, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->headers:Lcom/koushikdutta/async/http/cache/RawHeaders;

    .line 121
    new-instance v0, Lcom/koushikdutta/async/http/cache/ResponseHeaders$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/cache/ResponseHeaders$1;-><init>(Lcom/koushikdutta/async/http/cache/ResponseHeaders;)V

    .line 139
    .local v0, "handler":Lcom/koushikdutta/async/http/cache/HeaderParser$CacheControlHandler;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Lcom/koushikdutta/async/http/cache/RawHeaders;->length()I

    move-result v2

    if-ge v1, v2, :cond_11

    .line 140
    invoke-virtual {p2, v1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->getFieldName(I)Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, "fieldName":Ljava/lang/String;
    invoke-virtual {p2, v1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->getValue(I)Ljava/lang/String;

    move-result-object v3

    .line 142
    .local v3, "value":Ljava/lang/String;
    const-string v4, "Cache-Control"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 143
    invoke-static {v3, v0}, Lcom/koushikdutta/async/http/cache/HeaderParser;->parseCacheControl(Ljava/lang/String;Lcom/koushikdutta/async/http/cache/HeaderParser$CacheControlHandler;)V

    goto/16 :goto_3

    .line 144
    :cond_0
    const-string v4, "Date"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 145
    invoke-static {v3}, Lcom/koushikdutta/async/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    iput-object v4, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->servedDate:Ljava/util/Date;

    goto/16 :goto_3

    .line 146
    :cond_1
    const-string v4, "Expires"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 147
    invoke-static {v3}, Lcom/koushikdutta/async/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    iput-object v4, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->expires:Ljava/util/Date;

    goto/16 :goto_3

    .line 148
    :cond_2
    const-string v4, "Last-Modified"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 149
    invoke-static {v3}, Lcom/koushikdutta/async/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    iput-object v4, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->lastModified:Ljava/util/Date;

    goto/16 :goto_3

    .line 150
    :cond_3
    const-string v4, "ETag"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 151
    iput-object v3, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->etag:Ljava/lang/String;

    goto/16 :goto_3

    .line 152
    :cond_4
    const-string v4, "Pragma"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 153
    const-string v4, "no-cache"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 154
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->noCache:Z

    goto/16 :goto_3

    .line 156
    :cond_5
    const-string v4, "Age"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 157
    invoke-static {v3}, Lcom/koushikdutta/async/http/cache/HeaderParser;->parseSeconds(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->ageSeconds:I

    goto/16 :goto_3

    .line 158
    :cond_6
    const-string v4, "Vary"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 160
    iget-object v4, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->varyFields:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 161
    new-instance v4, Ljava/util/TreeSet;

    sget-object v5, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v4, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v4, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->varyFields:Ljava/util/Set;

    .line 163
    :cond_7
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_10

    aget-object v7, v4, v6

    .line 164
    .local v7, "varyField":Ljava/lang/String;
    iget-object v8, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->varyFields:Ljava/util/Set;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 163
    .end local v7    # "varyField":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 166
    :cond_8
    const-string v4, "Content-Encoding"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 167
    iput-object v3, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->contentEncoding:Ljava/lang/String;

    goto :goto_3

    .line 168
    :cond_9
    const-string v4, "Transfer-Encoding"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 169
    iput-object v3, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->transferEncoding:Ljava/lang/String;

    goto :goto_3

    .line 170
    :cond_a
    const-string v4, "Content-Length"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 172
    :try_start_0
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->contentLength:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 173
    :catch_0
    move-exception v4

    .line 174
    :goto_2
    goto :goto_3

    .line 175
    :cond_b
    const-string v4, "Connection"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 176
    iput-object v3, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->connection:Ljava/lang/String;

    goto :goto_3

    .line 177
    :cond_c
    const-string v4, "Proxy-Authenticate"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 178
    iput-object v3, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->proxyAuthenticate:Ljava/lang/String;

    goto :goto_3

    .line 179
    :cond_d
    const-string v4, "WWW-Authenticate"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 180
    iput-object v3, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->wwwAuthenticate:Ljava/lang/String;

    goto :goto_3

    .line 181
    :cond_e
    const-string v4, "X-Android-Sent-Millis"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 182
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->sentRequestMillis:J

    goto :goto_3

    .line 183
    :cond_f
    const-string v4, "X-Android-Received-Millis"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 184
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->receivedResponseMillis:J

    .line 139
    .end local v2    # "fieldName":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_10
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 187
    .end local v1    # "i":I
    :cond_11
    return-void
.end method

.method static synthetic access$002(Lcom/koushikdutta/async/http/cache/ResponseHeaders;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/koushikdutta/async/http/cache/ResponseHeaders;
    .param p1, "x1"    # Z

    .line 36
    iput-boolean p1, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->noCache:Z

    return p1
.end method

.method static synthetic access$102(Lcom/koushikdutta/async/http/cache/ResponseHeaders;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/koushikdutta/async/http/cache/ResponseHeaders;
    .param p1, "x1"    # Z

    .line 36
    iput-boolean p1, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->noStore:Z

    return p1
.end method

.method static synthetic access$202(Lcom/koushikdutta/async/http/cache/ResponseHeaders;I)I
    .locals 0
    .param p0, "x0"    # Lcom/koushikdutta/async/http/cache/ResponseHeaders;
    .param p1, "x1"    # I

    .line 36
    iput p1, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->maxAgeSeconds:I

    return p1
.end method

.method static synthetic access$302(Lcom/koushikdutta/async/http/cache/ResponseHeaders;I)I
    .locals 0
    .param p0, "x0"    # Lcom/koushikdutta/async/http/cache/ResponseHeaders;
    .param p1, "x1"    # I

    .line 36
    iput p1, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->sMaxAgeSeconds:I

    return p1
.end method

.method static synthetic access$402(Lcom/koushikdutta/async/http/cache/ResponseHeaders;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/koushikdutta/async/http/cache/ResponseHeaders;
    .param p1, "x1"    # Z

    .line 36
    iput-boolean p1, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->isPublic:Z

    return p1
.end method

.method static synthetic access$502(Lcom/koushikdutta/async/http/cache/ResponseHeaders;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/koushikdutta/async/http/cache/ResponseHeaders;
    .param p1, "x1"    # Z

    .line 36
    iput-boolean p1, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->mustRevalidate:Z

    return p1
.end method

.method private computeAge(J)J
    .locals 10
    .param p1, "nowMillis"    # J

    .line 290
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->servedDate:Ljava/util/Date;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    iget-wide v3, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->receivedResponseMillis:J

    .line 291
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    goto :goto_0

    :cond_0
    nop

    :goto_0
    move-wide v0, v1

    .line 293
    .local v0, "apparentReceivedAge":J
    iget v2, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->ageSeconds:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v3, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->ageSeconds:I

    int-to-long v3, v3

    .line 294
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    goto :goto_1

    :cond_1
    move-wide v2, v0

    .line 296
    .local v2, "receivedAge":J
    :goto_1
    iget-wide v4, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->receivedResponseMillis:J

    iget-wide v6, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->sentRequestMillis:J

    sub-long v6, v4, v6

    .line 297
    .local v6, "responseDuration":J
    sub-long v4, p1, v4

    .line 298
    .local v4, "residentDuration":J
    add-long v8, v2, v6

    add-long/2addr v8, v4

    return-wide v8
.end method

.method private computeFreshnessLifetime()J
    .locals 7

    .line 306
    iget v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->maxAgeSeconds:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 307
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v1, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->maxAgeSeconds:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->expires:Ljava/util/Date;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_3

    .line 309
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->servedDate:Ljava/util/Date;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    iget-wide v3, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->receivedResponseMillis:J

    .line 310
    .local v3, "servedMillis":J
    :goto_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->expires:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 311
    .local v5, "delta":J
    cmp-long v0, v5, v1

    if-lez v0, :cond_2

    move-wide v1, v5

    :cond_2
    return-wide v1

    .line 312
    .end local v3    # "servedMillis":J
    .end local v5    # "delta":J
    :cond_3
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->lastModified:Ljava/util/Date;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    .line 319
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->servedDate:Ljava/util/Date;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    goto :goto_1

    :cond_4
    iget-wide v3, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->sentRequestMillis:J

    .line 320
    .restart local v3    # "servedMillis":J
    :goto_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->lastModified:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long v5, v3, v5

    .line 321
    .restart local v5    # "delta":J
    cmp-long v0, v5, v1

    if-lez v0, :cond_5

    const-wide/16 v0, 0xa

    div-long v1, v5, v0

    :cond_5
    return-wide v1

    .line 323
    .end local v3    # "servedMillis":J
    .end local v5    # "delta":J
    :cond_6
    return-wide v1
.end method

.method private static isEndToEnd(Ljava/lang/String;)Z
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;

    .line 513
    const-string v0, "Connection"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 514
    const-string v0, "Keep-Alive"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 515
    const-string v0, "Proxy-Authenticate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 516
    const-string v0, "Proxy-Authorization"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 517
    const-string v0, "TE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 518
    const-string v0, "Trailers"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 519
    const-string v0, "Transfer-Encoding"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 520
    const-string v0, "Upgrade"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 513
    :goto_0
    return v0
.end method

.method private isFreshnessLifetimeHeuristic()Z
    .locals 2

    .line 332
    iget v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->maxAgeSeconds:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->expires:Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public chooseResponseSource(JLcom/koushikdutta/async/http/cache/RequestHeaders;)Lcom/koushikdutta/async/http/cache/ResponseSource;
    .locals 12
    .param p1, "nowMillis"    # J
    .param p3, "request"    # Lcom/koushikdutta/async/http/cache/RequestHeaders;

    .line 402
    invoke-virtual {p0, p3}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->isCacheable(Lcom/koushikdutta/async/http/cache/RequestHeaders;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 403
    sget-object v0, Lcom/koushikdutta/async/http/cache/ResponseSource;->NETWORK:Lcom/koushikdutta/async/http/cache/ResponseSource;

    return-object v0

    .line 406
    :cond_0
    invoke-virtual {p3}, Lcom/koushikdutta/async/http/cache/RequestHeaders;->isNoCache()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p3}, Lcom/koushikdutta/async/http/cache/RequestHeaders;->hasConditions()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 410
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->computeAge(J)J

    move-result-wide v0

    .line 411
    .local v0, "ageMillis":J
    invoke-direct {p0}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->computeFreshnessLifetime()J

    move-result-wide v2

    .line 413
    .local v2, "freshMillis":J
    invoke-virtual {p3}, Lcom/koushikdutta/async/http/cache/RequestHeaders;->getMaxAgeSeconds()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 414
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 415
    invoke-virtual {p3}, Lcom/koushikdutta/async/http/cache/RequestHeaders;->getMaxAgeSeconds()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    .line 414
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 418
    :cond_2
    const-wide/16 v6, 0x0

    .line 419
    .local v6, "minFreshMillis":J
    invoke-virtual {p3}, Lcom/koushikdutta/async/http/cache/RequestHeaders;->getMinFreshSeconds()I

    move-result v4

    if-eq v4, v5, :cond_3

    .line 420
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3}, Lcom/koushikdutta/async/http/cache/RequestHeaders;->getMinFreshSeconds()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v4, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    .line 423
    :cond_3
    const-wide/16 v8, 0x0

    .line 424
    .local v8, "maxStaleMillis":J
    iget-boolean v4, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->mustRevalidate:Z

    if-nez v4, :cond_4

    invoke-virtual {p3}, Lcom/koushikdutta/async/http/cache/RequestHeaders;->getMaxStaleSeconds()I

    move-result v4

    if-eq v4, v5, :cond_4

    .line 425
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3}, Lcom/koushikdutta/async/http/cache/RequestHeaders;->getMaxStaleSeconds()I

    move-result v5

    int-to-long v10, v5

    invoke-virtual {v4, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    .line 428
    :cond_4
    iget-boolean v4, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->noCache:Z

    if-nez v4, :cond_7

    add-long v4, v0, v6

    add-long v10, v2, v8

    cmp-long v4, v4, v10

    if-gez v4, :cond_7

    .line 429
    add-long v4, v0, v6

    cmp-long v4, v4, v2

    const-string v5, "Warning"

    if-ltz v4, :cond_5

    .line 430
    iget-object v4, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->headers:Lcom/koushikdutta/async/http/cache/RawHeaders;

    const-string v10, "110 HttpURLConnection \"Response is stale\""

    invoke-virtual {v4, v5, v10}, Lcom/koushikdutta/async/http/cache/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    :cond_5
    const-wide/32 v10, 0x5265c00

    cmp-long v4, v0, v10

    if-lez v4, :cond_6

    invoke-direct {p0}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->isFreshnessLifetimeHeuristic()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 437
    iget-object v4, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->headers:Lcom/koushikdutta/async/http/cache/RawHeaders;

    const-string v10, "113 HttpURLConnection \"Heuristic expiration\""

    invoke-virtual {v4, v5, v10}, Lcom/koushikdutta/async/http/cache/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    :cond_6
    sget-object v4, Lcom/koushikdutta/async/http/cache/ResponseSource;->CACHE:Lcom/koushikdutta/async/http/cache/ResponseSource;

    return-object v4

    .line 442
    :cond_7
    iget-object v4, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->etag:Ljava/lang/String;

    if-eqz v4, :cond_8

    .line 443
    invoke-virtual {p3, v4}, Lcom/koushikdutta/async/http/cache/RequestHeaders;->setIfNoneMatch(Ljava/lang/String;)V

    goto :goto_0

    .line 445
    :cond_8
    iget-object v4, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->lastModified:Ljava/util/Date;

    if-eqz v4, :cond_9

    .line 446
    invoke-virtual {p3, v4}, Lcom/koushikdutta/async/http/cache/RequestHeaders;->setIfModifiedSince(Ljava/util/Date;)V

    goto :goto_0

    .line 447
    :cond_9
    iget-object v4, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->servedDate:Ljava/util/Date;

    if-eqz v4, :cond_a

    .line 448
    invoke-virtual {p3, v4}, Lcom/koushikdutta/async/http/cache/RequestHeaders;->setIfModifiedSince(Ljava/util/Date;)V

    .line 452
    :cond_a
    :goto_0
    invoke-virtual {p3}, Lcom/koushikdutta/async/http/cache/RequestHeaders;->hasConditions()Z

    move-result v4

    if-eqz v4, :cond_b

    sget-object v4, Lcom/koushikdutta/async/http/cache/ResponseSource;->CONDITIONAL_CACHE:Lcom/koushikdutta/async/http/cache/ResponseSource;

    goto :goto_1

    :cond_b
    sget-object v4, Lcom/koushikdutta/async/http/cache/ResponseSource;->NETWORK:Lcom/koushikdutta/async/http/cache/ResponseSource;

    :goto_1
    return-object v4

    .line 407
    .end local v0    # "ageMillis":J
    .end local v2    # "freshMillis":J
    .end local v6    # "minFreshMillis":J
    .end local v8    # "maxStaleMillis":J
    :cond_c
    :goto_2
    sget-object v0, Lcom/koushikdutta/async/http/cache/ResponseSource;->NETWORK:Lcom/koushikdutta/async/http/cache/ResponseSource;

    return-object v0
.end method

.method public combine(Lcom/koushikdutta/async/http/cache/ResponseHeaders;)Lcom/koushikdutta/async/http/cache/ResponseHeaders;
    .locals 5
    .param p1, "network"    # Lcom/koushikdutta/async/http/cache/ResponseHeaders;

    .line 485
    new-instance v0, Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/cache/RawHeaders;-><init>()V

    .line 487
    .local v0, "result":Lcom/koushikdutta/async/http/cache/RawHeaders;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->headers:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/cache/RawHeaders;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 488
    iget-object v2, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->headers:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v2, v1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->getFieldName(I)Ljava/lang/String;

    move-result-object v2

    .line 489
    .local v2, "fieldName":Ljava/lang/String;
    iget-object v3, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->headers:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v3, v1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->getValue(I)Ljava/lang/String;

    move-result-object v3

    .line 490
    .local v3, "value":Ljava/lang/String;
    const-string v4, "Warning"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 491
    goto :goto_1

    .line 493
    :cond_0
    invoke-static {v2}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->isEndToEnd(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p1, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->headers:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v4, v2}, Lcom/koushikdutta/async/http/cache/RawHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 494
    :cond_1
    invoke-virtual {v0, v2, v3}, Lcom/koushikdutta/async/http/cache/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    .end local v2    # "fieldName":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 498
    .end local v1    # "i":I
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p1, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->headers:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/cache/RawHeaders;->length()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 499
    iget-object v2, p1, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->headers:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v2, v1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->getFieldName(I)Ljava/lang/String;

    move-result-object v2

    .line 500
    .restart local v2    # "fieldName":Ljava/lang/String;
    invoke-static {v2}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->isEndToEnd(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 501
    iget-object v3, p1, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->headers:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v3, v1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/koushikdutta/async/http/cache/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    .end local v2    # "fieldName":Ljava/lang/String;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 505
    .end local v1    # "i":I
    :cond_5
    new-instance v1, Lcom/koushikdutta/async/http/cache/ResponseHeaders;

    iget-object v2, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->uri:Landroid/net/Uri;

    invoke-direct {v1, v2, v0}, Lcom/koushikdutta/async/http/cache/ResponseHeaders;-><init>(Landroid/net/Uri;Lcom/koushikdutta/async/http/cache/RawHeaders;)V

    return-object v1
.end method

.method public getConnection()Ljava/lang/String;
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->connection:Ljava/lang/String;

    return-object v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->contentEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .line 263
    iget-wide v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->contentLength:J

    return-wide v0
.end method

.method public getEtag()Ljava/lang/String;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public getExpires()Ljava/util/Date;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->expires:Ljava/util/Date;

    return-object v0
.end method

.method public getHeaders()Lcom/koushikdutta/async/http/cache/RawHeaders;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->headers:Lcom/koushikdutta/async/http/cache/RawHeaders;

    return-object v0
.end method

.method public getLastModified()Ljava/util/Date;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->lastModified:Ljava/util/Date;

    return-object v0
.end method

.method public getMaxAgeSeconds()I
    .locals 1

    .line 235
    iget v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->maxAgeSeconds:I

    return v0
.end method

.method public getProxyAuthenticate()Ljava/lang/String;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->proxyAuthenticate:Ljava/lang/String;

    return-object v0
.end method

.method public getSMaxAgeSeconds()I
    .locals 1

    .line 239
    iget v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->sMaxAgeSeconds:I

    return v0
.end method

.method public getServedDate()Ljava/util/Date;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->servedDate:Ljava/util/Date;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public getVaryFields()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->varyFields:Ljava/util/Set;

    return-object v0
.end method

.method public getWwwAuthenticate()Ljava/lang/String;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->wwwAuthenticate:Ljava/lang/String;

    return-object v0
.end method

.method public hasConnectionClose()Z
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->connection:Ljava/lang/String;

    const-string v1, "close"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasVaryAll()Z
    .locals 2

    .line 376
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->varyFields:Ljava/util/Set;

    const-string v1, "*"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isCacheable(Lcom/koushikdutta/async/http/cache/RequestHeaders;)Z
    .locals 4
    .param p1, "request"    # Lcom/koushikdutta/async/http/cache/RequestHeaders;

    .line 344
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->headers:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/cache/RawHeaders;->getResponseCode()I

    move-result v0

    .line 345
    .local v0, "responseCode":I
    const/4 v1, 0x0

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_0

    const/16 v2, 0xcb

    if-eq v0, v2, :cond_0

    const/16 v2, 0x12c

    if-eq v0, v2, :cond_0

    const/16 v2, 0x12d

    if-eq v0, v2, :cond_0

    const/16 v2, 0x19a

    if-eq v0, v2, :cond_0

    .line 350
    return v1

    .line 357
    :cond_0
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/cache/RequestHeaders;->hasAuthorization()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->isPublic:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->mustRevalidate:Z

    if-nez v2, :cond_1

    iget v2, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->sMaxAgeSeconds:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 361
    return v1

    .line 364
    :cond_1
    iget-boolean v2, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->noStore:Z

    if-eqz v2, :cond_2

    .line 365
    return v1

    .line 368
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public isChunked()Z
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->transferEncoding:Ljava/lang/String;

    const-string v1, "chunked"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isContentEncodingGzip()Z
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->contentEncoding:Ljava/lang/String;

    const-string v1, "gzip"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isMustRevalidate()Z
    .locals 1

    .line 247
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->mustRevalidate:Z

    return v0
.end method

.method public isNoCache()Z
    .locals 1

    .line 227
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->noCache:Z

    return v0
.end method

.method public isNoStore()Z
    .locals 1

    .line 231
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->noStore:Z

    return v0
.end method

.method public isPublic()Z
    .locals 1

    .line 243
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->isPublic:Z

    return v0
.end method

.method public setLocalTimestamps(JJ)V
    .locals 3
    .param p1, "sentRequestMillis"    # J
    .param p3, "receivedResponseMillis"    # J

    .line 279
    iput-wide p1, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->sentRequestMillis:J

    .line 280
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->headers:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-Android-Sent-Millis"

    invoke-virtual {v0, v2, v1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iput-wide p3, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->receivedResponseMillis:J

    .line 282
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->headers:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-Android-Received-Millis"

    invoke-virtual {v0, v2, v1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    return-void
.end method

.method public stripContentEncoding()V
    .locals 2

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->contentEncoding:Ljava/lang/String;

    .line 195
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->headers:Lcom/koushikdutta/async/http/cache/RawHeaders;

    const-string v1, "Content-Encoding"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/cache/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method public validate(Lcom/koushikdutta/async/http/cache/ResponseHeaders;)Z
    .locals 6
    .param p1, "networkResponse"    # Lcom/koushikdutta/async/http/cache/ResponseHeaders;

    .line 462
    iget-object v0, p1, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->headers:Lcom/koushikdutta/async/http/cache/RawHeaders;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/cache/RawHeaders;->getResponseCode()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x130

    if-ne v0, v2, :cond_0

    .line 463
    return v1

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->lastModified:Ljava/util/Date;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->lastModified:Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 473
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->lastModified:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    .line 474
    return v1

    .line 477
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public varyMatches(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    .line 385
    .local p1, "cachedRequest":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .local p2, "newRequest":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v0, p0, Lcom/koushikdutta/async/http/cache/ResponseHeaders;->varyFields:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 386
    .local v1, "field":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/koushikdutta/async/http/cache/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 387
    const/4 v0, 0x0

    return v0

    .line 389
    .end local v1    # "field":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 390
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
