.class public final Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
.super Ljava/lang/Object;
.source "PublicSuffixDatabase.java"


# static fields
.field private static final EMPTY_RULE:[Ljava/lang/String;

.field private static final EXCEPTION_MARKER:B = 0x21t

.field private static final PREVAILING_RULE:[Ljava/lang/String;

.field public static final PUBLIC_SUFFIX_RESOURCE:Ljava/lang/String; = "publicsuffixes.gz"

.field private static final WILDCARD_LABEL:[B

.field private static final instance:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;


# instance fields
.field private final listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private publicSuffixExceptionListBytes:[B

.field private publicSuffixListBytes:[B

.field private final readCompleteLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 38
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/16 v1, 0x2a

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->WILDCARD_LABEL:[B

    .line 39
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->EMPTY_RULE:[Ljava/lang/String;

    .line 40
    const-string v0, "*"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->PREVAILING_RULE:[Ljava/lang/String;

    .line 44
    new-instance v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    invoke-direct {v0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;-><init>()V

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->instance:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method private static binarySearchBytes([B[[BI)Ljava/lang/String;
    .locals 17
    .param p0, "bytesToSearch"    # [B
    .param p1, "labels"    # [[B
    .param p2, "labelIndex"    # I

    .line 197
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 198
    .local v2, "low":I
    array-length v3, v0

    .line 199
    .local v3, "high":I
    const/4 v4, 0x0

    .line 200
    .local v4, "match":Ljava/lang/String;
    :goto_0
    if-ge v2, v3, :cond_c

    .line 201
    add-int v5, v2, v3

    div-int/lit8 v5, v5, 0x2

    .line 204
    .local v5, "mid":I
    :goto_1
    const/16 v6, 0xa

    const/4 v7, -0x1

    if-le v5, v7, :cond_0

    aget-byte v7, v0, v5

    if-eq v7, v6, :cond_0

    .line 205
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 207
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 210
    const/4 v7, 0x1

    .line 211
    .local v7, "end":I
    :goto_2
    add-int v8, v5, v7

    aget-byte v8, v0, v8

    if-eq v8, v6, :cond_1

    .line 212
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 214
    :cond_1
    add-int v6, v5, v7

    sub-int/2addr v6, v5

    .line 219
    .local v6, "publicSuffixLength":I
    move/from16 v8, p2

    .line 220
    .local v8, "currentLabelIndex":I
    const/4 v9, 0x0

    .line 221
    .local v9, "currentLabelByteIndex":I
    const/4 v10, 0x0

    .line 223
    .local v10, "publicSuffixByteIndex":I
    const/4 v11, 0x0

    .line 226
    .local v11, "expectDot":Z
    :goto_3
    if-eqz v11, :cond_2

    .line 227
    const/16 v12, 0x2e

    .line 228
    .local v12, "byte0":I
    const/4 v11, 0x0

    goto :goto_4

    .line 230
    .end local v12    # "byte0":I
    :cond_2
    aget-object v12, v1, v8

    aget-byte v12, v12, v9

    and-int/lit16 v12, v12, 0xff

    .line 233
    .restart local v12    # "byte0":I
    :goto_4
    add-int v13, v5, v10

    aget-byte v13, v0, v13

    and-int/lit16 v13, v13, 0xff

    .line 235
    .local v13, "byte1":I
    sub-int v14, v12, v13

    .line 236
    .local v14, "compareResult":I
    if-eqz v14, :cond_3

    goto :goto_5

    .line 238
    :cond_3
    add-int/lit8 v10, v10, 0x1

    .line 239
    add-int/lit8 v9, v9, 0x1

    .line 240
    if-ne v10, v6, :cond_4

    goto :goto_5

    .line 242
    :cond_4
    aget-object v15, v1, v8

    array-length v15, v15

    if-ne v15, v9, :cond_b

    .line 245
    array-length v15, v1

    add-int/lit8 v15, v15, -0x1

    if-ne v8, v15, :cond_a

    .line 246
    nop

    .line 255
    .end local v12    # "byte0":I
    .end local v13    # "byte1":I
    :goto_5
    if-gez v14, :cond_5

    .line 256
    add-int/lit8 v3, v5, -0x1

    goto :goto_7

    .line 257
    :cond_5
    if-lez v14, :cond_6

    .line 258
    add-int v12, v5, v7

    add-int/lit8 v12, v12, 0x1

    move v2, v12

    .end local v2    # "low":I
    .local v12, "low":I
    goto :goto_7

    .line 261
    .end local v12    # "low":I
    .restart local v2    # "low":I
    :cond_6
    sub-int v12, v6, v10

    .line 262
    .local v12, "publicSuffixBytesLeft":I
    aget-object v13, v1, v8

    array-length v13, v13

    sub-int/2addr v13, v9

    .line 263
    .local v13, "labelBytesLeft":I
    add-int/lit8 v15, v8, 0x1

    .local v15, "i":I
    :goto_6
    move/from16 v16, v2

    .end local v2    # "low":I
    .local v16, "low":I
    array-length v2, v1

    if-ge v15, v2, :cond_7

    .line 264
    aget-object v2, v1, v15

    array-length v2, v2

    add-int/2addr v13, v2

    .line 263
    add-int/lit8 v15, v15, 0x1

    move/from16 v2, v16

    goto :goto_6

    .line 267
    .end local v15    # "i":I
    :cond_7
    if-ge v13, v12, :cond_8

    .line 268
    add-int/lit8 v2, v5, -0x1

    move v3, v2

    move/from16 v2, v16

    .end local v3    # "high":I
    .local v2, "high":I
    goto :goto_7

    .line 269
    .end local v2    # "high":I
    .restart local v3    # "high":I
    :cond_8
    if-le v13, v12, :cond_9

    .line 270
    add-int v2, v5, v7

    add-int/lit8 v2, v2, 0x1

    .line 277
    .end local v5    # "mid":I
    .end local v6    # "publicSuffixLength":I
    .end local v7    # "end":I
    .end local v8    # "currentLabelIndex":I
    .end local v9    # "currentLabelByteIndex":I
    .end local v10    # "publicSuffixByteIndex":I
    .end local v11    # "expectDot":Z
    .end local v12    # "publicSuffixBytesLeft":I
    .end local v13    # "labelBytesLeft":I
    .end local v14    # "compareResult":I
    .end local v16    # "low":I
    .local v2, "low":I
    :goto_7
    goto/16 :goto_0

    .line 273
    .end local v2    # "low":I
    .restart local v5    # "mid":I
    .restart local v6    # "publicSuffixLength":I
    .restart local v7    # "end":I
    .restart local v8    # "currentLabelIndex":I
    .restart local v9    # "currentLabelByteIndex":I
    .restart local v10    # "publicSuffixByteIndex":I
    .restart local v11    # "expectDot":Z
    .restart local v12    # "publicSuffixBytesLeft":I
    .restart local v13    # "labelBytesLeft":I
    .restart local v14    # "compareResult":I
    .restart local v16    # "low":I
    :cond_9
    new-instance v2, Ljava/lang/String;

    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v5, v6, v15}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v4, v2

    .line 274
    goto :goto_9

    .line 248
    .end local v16    # "low":I
    .restart local v2    # "low":I
    .local v12, "byte0":I
    .local v13, "byte1":I
    :cond_a
    move/from16 v16, v2

    .end local v2    # "low":I
    .restart local v16    # "low":I
    add-int/lit8 v8, v8, 0x1

    .line 249
    const/4 v2, -0x1

    .line 250
    .end local v9    # "currentLabelByteIndex":I
    .local v2, "currentLabelByteIndex":I
    const/4 v9, 0x1

    move v11, v9

    move v9, v2

    .end local v11    # "expectDot":Z
    .local v9, "expectDot":Z
    goto :goto_8

    .line 242
    .end local v16    # "low":I
    .local v2, "low":I
    .local v9, "currentLabelByteIndex":I
    .restart local v11    # "expectDot":Z
    :cond_b
    move/from16 v16, v2

    .line 253
    .end local v2    # "low":I
    .end local v12    # "byte0":I
    .end local v13    # "byte1":I
    .restart local v16    # "low":I
    :goto_8
    move/from16 v2, v16

    goto :goto_3

    .line 200
    .end local v5    # "mid":I
    .end local v6    # "publicSuffixLength":I
    .end local v7    # "end":I
    .end local v8    # "currentLabelIndex":I
    .end local v9    # "currentLabelByteIndex":I
    .end local v10    # "publicSuffixByteIndex":I
    .end local v11    # "expectDot":Z
    .end local v14    # "compareResult":I
    .end local v16    # "low":I
    .restart local v2    # "low":I
    :cond_c
    move/from16 v16, v2

    .line 278
    .end local v2    # "low":I
    .restart local v16    # "low":I
    :goto_9
    return-object v4
.end method

.method private findMatchingRule([Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .param p1, "domainLabels"    # [Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-direct {p0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readTheListUninterruptibly()V

    goto :goto_0

    .line 114
    :cond_0
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "ignored":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 120
    .end local v0    # "ignored":Ljava/lang/InterruptedException;
    :goto_0
    monitor-enter p0

    .line 121
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    if-eqz v0, :cond_d

    .line 125
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    array-length v0, p1

    new-array v0, v0, [[B

    .line 129
    .local v0, "domainLabelsUtf8Bytes":[[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 130
    aget-object v3, p1, v2

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    aput-object v3, v0, v2

    .line 129
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 135
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x0

    .line 136
    .local v2, "exactMatch":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v4, v0

    if-ge v3, v4, :cond_3

    .line 137
    iget-object v4, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    invoke-static {v4, v0, v3}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->binarySearchBytes([B[[BI)Ljava/lang/String;

    move-result-object v4

    .line 138
    .local v4, "rule":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 139
    move-object v2, v4

    .line 140
    goto :goto_3

    .line 136
    .end local v4    # "rule":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 149
    .end local v3    # "i":I
    :cond_3
    :goto_3
    const/4 v3, 0x0

    .line 150
    .local v3, "wildcardMatch":Ljava/lang/String;
    array-length v4, v0

    if-le v4, v1, :cond_5

    .line 151
    invoke-virtual {v0}, [[B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[B

    .line 152
    .local v4, "labelsWithWildcard":[[B
    const/4 v5, 0x0

    .local v5, "labelIndex":I
    :goto_4
    array-length v6, v4

    sub-int/2addr v6, v1

    if-ge v5, v6, :cond_5

    .line 153
    sget-object v6, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->WILDCARD_LABEL:[B

    aput-object v6, v4, v5

    .line 154
    iget-object v6, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    invoke-static {v6, v4, v5}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->binarySearchBytes([B[[BI)Ljava/lang/String;

    move-result-object v6

    .line 155
    .local v6, "rule":Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 156
    move-object v3, v6

    .line 157
    goto :goto_5

    .line 152
    .end local v6    # "rule":Ljava/lang/String;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 163
    .end local v4    # "labelsWithWildcard":[[B
    .end local v5    # "labelIndex":I
    :cond_5
    :goto_5
    const/4 v4, 0x0

    .line 164
    .local v4, "exception":Ljava/lang/String;
    if-eqz v3, :cond_7

    .line 165
    const/4 v5, 0x0

    .restart local v5    # "labelIndex":I
    :goto_6
    array-length v6, v0

    sub-int/2addr v6, v1

    if-ge v5, v6, :cond_7

    .line 166
    iget-object v6, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixExceptionListBytes:[B

    invoke-static {v6, v0, v5}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->binarySearchBytes([B[[BI)Ljava/lang/String;

    move-result-object v6

    .line 168
    .restart local v6    # "rule":Ljava/lang/String;
    if-eqz v6, :cond_6

    .line 169
    move-object v4, v6

    .line 170
    goto :goto_7

    .line 165
    .end local v6    # "rule":Ljava/lang/String;
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 175
    .end local v5    # "labelIndex":I
    :cond_7
    :goto_7
    if-eqz v4, :cond_8

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 178
    .end local v4    # "exception":Ljava/lang/String;
    .local v1, "exception":Ljava/lang/String;
    const-string v4, "\\."

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 179
    .end local v1    # "exception":Ljava/lang/String;
    .restart local v4    # "exception":Ljava/lang/String;
    :cond_8
    if-nez v2, :cond_9

    if-nez v3, :cond_9

    .line 180
    sget-object v1, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->PREVAILING_RULE:[Ljava/lang/String;

    return-object v1

    .line 183
    :cond_9
    if-eqz v2, :cond_a

    .line 184
    const-string v1, "\\."

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    .line 185
    :cond_a
    sget-object v1, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->EMPTY_RULE:[Ljava/lang/String;

    :goto_8
    nop

    .line 187
    .local v1, "exactRuleLabels":[Ljava/lang/String;
    if-eqz v3, :cond_b

    .line 188
    const-string v5, "\\."

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    goto :goto_9

    .line 189
    :cond_b
    sget-object v5, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->EMPTY_RULE:[Ljava/lang/String;

    :goto_9
    nop

    .line 191
    .local v5, "wildcardRuleLabels":[Ljava/lang/String;
    array-length v6, v1

    array-length v7, v5

    if-le v6, v7, :cond_c

    .line 192
    move-object v6, v1

    goto :goto_a

    .line 193
    :cond_c
    move-object v6, v5

    .line 191
    :goto_a
    return-object v6

    .line 122
    .end local v0    # "domainLabelsUtf8Bytes":[[B
    .end local v1    # "exactRuleLabels":[Ljava/lang/String;
    .end local v2    # "exactMatch":Ljava/lang/String;
    .end local v3    # "wildcardMatch":Ljava/lang/String;
    .end local v4    # "exception":Ljava/lang/String;
    .end local v5    # "wildcardRuleLabels":[Ljava/lang/String;
    :cond_d
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to load publicsuffixes.gz resource from the classpath."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p1    # "domainLabels":[Ljava/lang/String;
    throw v0

    .line 125
    .restart local p1    # "domainLabels":[Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public static get()Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
    .locals 1

    .line 60
    sget-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->instance:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    return-object v0
.end method

.method private readTheList()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 312
    const-class v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    const-string v1, "publicsuffixes.gz"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 313
    .local v0, "resource":Ljava/io/InputStream;
    if-nez v0, :cond_0

    return-void

    .line 315
    :cond_0
    new-instance v1, Lokio/GzipSource;

    invoke-static {v0}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object v2

    invoke-direct {v1, v2}, Lokio/GzipSource;-><init>(Lokio/Source;)V

    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v1

    .line 316
    .local v1, "bufferedSource":Lokio/BufferedSource;
    :try_start_0
    invoke-interface {v1}, Lokio/BufferedSource;->readInt()I

    move-result v2

    .line 317
    .local v2, "totalBytes":I
    new-array v3, v2, [B

    .line 318
    .local v3, "publicSuffixListBytes":[B
    invoke-interface {v1, v3}, Lokio/BufferedSource;->readFully([B)V

    .line 320
    invoke-interface {v1}, Lokio/BufferedSource;->readInt()I

    move-result v4

    .line 321
    .local v4, "totalExceptionBytes":I
    new-array v5, v4, [B

    .line 322
    .local v5, "publicSuffixExceptionListBytes":[B
    invoke-interface {v1, v5}, Lokio/BufferedSource;->readFully([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 323
    .end local v2    # "totalBytes":I
    .end local v4    # "totalExceptionBytes":I
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lokio/BufferedSource;->close()V

    .line 325
    .end local v1    # "bufferedSource":Lokio/BufferedSource;
    :cond_1
    monitor-enter p0

    .line 326
    :try_start_1
    iput-object v3, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    .line 327
    iput-object v5, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixExceptionListBytes:[B

    .line 328
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 330
    iget-object v1, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 331
    return-void

    .line 328
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 315
    .end local v3    # "publicSuffixListBytes":[B
    .end local v5    # "publicSuffixExceptionListBytes":[B
    .restart local v1    # "bufferedSource":Lokio/BufferedSource;
    :catchall_1
    move-exception v2

    .end local v0    # "resource":Ljava/io/InputStream;
    .end local v1    # "bufferedSource":Lokio/BufferedSource;
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 323
    .restart local v0    # "resource":Ljava/io/InputStream;
    .restart local v1    # "bufferedSource":Lokio/BufferedSource;
    :catchall_2
    move-exception v3

    if-eqz v1, :cond_2

    :try_start_4
    invoke-interface {v1}, Lokio/BufferedSource;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_0

    :catchall_3
    move-exception v4

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v3
.end method

.method private readTheListUninterruptibly()V
    .locals 5

    .line 287
    const/4 v0, 0x0

    .line 291
    .local v0, "interrupted":Z
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readTheList()V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    if-eqz v0, :cond_0

    .line 303
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 292
    :cond_0
    return-void

    .line 302
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 296
    :catch_0
    move-exception v1

    .line 297
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v2

    const/4 v3, 0x5

    const-string v4, "Failed to read public suffix list"

    invoke-virtual {v2, v3, v4, v1}, Lokhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 302
    if-eqz v0, :cond_1

    .line 303
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 298
    :cond_1
    return-void

    .line 293
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 294
    .local v1, "e":Ljava/io/InterruptedIOException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 295
    const/4 v0, 0x1

    .line 299
    .end local v1    # "e":Ljava/io/InterruptedIOException;
    goto :goto_0

    .line 302
    :goto_1
    if-eqz v0, :cond_2

    .line 303
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    throw v1
.end method


# virtual methods
.method public getEffectiveTldPlusOne(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "domain"    # Ljava/lang/String;

    .line 79
    if-eqz p1, :cond_3

    .line 82
    invoke-static {p1}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "unicodeDomain":Ljava/lang/String;
    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, "domainLabels":[Ljava/lang/String;
    invoke-direct {p0, v2}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->findMatchingRule([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, "rule":[Ljava/lang/String;
    array-length v4, v2

    array-length v5, v3

    const/16 v6, 0x21

    const/4 v7, 0x0

    if-ne v4, v5, :cond_0

    aget-object v4, v3, v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v6, :cond_0

    .line 87
    const/4 v1, 0x0

    return-object v1

    .line 91
    :cond_0
    aget-object v4, v3, v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_1

    .line 93
    array-length v4, v2

    array-length v5, v3

    sub-int/2addr v4, v5

    .local v4, "firstLabelOffset":I
    goto :goto_0

    .line 96
    .end local v4    # "firstLabelOffset":I
    :cond_1
    array-length v4, v2

    array-length v5, v3

    add-int/lit8 v5, v5, 0x1

    sub-int/2addr v4, v5

    .line 99
    .restart local v4    # "firstLabelOffset":I
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .local v5, "effectiveTldPlusOne":Ljava/lang/StringBuilder;
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "punycodeLabels":[Ljava/lang/String;
    move v6, v4

    .local v6, "i":I
    :goto_1
    array-length v7, v1

    if-ge v6, v7, :cond_2

    .line 102
    aget-object v7, v1, v6

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x2e

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 101
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 104
    .end local v6    # "i":I
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 79
    .end local v0    # "unicodeDomain":Ljava/lang/String;
    .end local v1    # "punycodeLabels":[Ljava/lang/String;
    .end local v2    # "domainLabels":[Ljava/lang/String;
    .end local v3    # "rule":[Ljava/lang/String;
    .end local v4    # "firstLabelOffset":I
    .end local v5    # "effectiveTldPlusOne":Ljava/lang/StringBuilder;
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "domain == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setListBytes([B[B)V
    .locals 2
    .param p1, "publicSuffixListBytes"    # [B
    .param p2, "publicSuffixExceptionListBytes"    # [B

    .line 335
    iput-object p1, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    .line 336
    iput-object p2, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixExceptionListBytes:[B

    .line 337
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 338
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 339
    return-void
.end method
