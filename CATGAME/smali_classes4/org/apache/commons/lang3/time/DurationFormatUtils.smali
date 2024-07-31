.class public Lorg/apache/commons/lang3/time/DurationFormatUtils;
.super Ljava/lang/Object;
.source "DurationFormatUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;
    }
.end annotation


# static fields
.field static final H:Ljava/lang/Object;

.field public static final ISO_EXTENDED_FORMAT_PATTERN:Ljava/lang/String; = "\'P\'yyyy\'Y\'M\'M\'d\'DT\'H\'H\'m\'M\'s.SSS\'S\'"

.field static final M:Ljava/lang/Object;

.field static final S:Ljava/lang/Object;

.field static final d:Ljava/lang/Object;

.field static final m:Ljava/lang/Object;

.field static final s:Ljava/lang/Object;

.field static final y:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 483
    const-string v0, "y"

    sput-object v0, Lorg/apache/commons/lang3/time/DurationFormatUtils;->y:Ljava/lang/Object;

    .line 484
    const-string v0, "M"

    sput-object v0, Lorg/apache/commons/lang3/time/DurationFormatUtils;->M:Ljava/lang/Object;

    .line 485
    const-string v0, "d"

    sput-object v0, Lorg/apache/commons/lang3/time/DurationFormatUtils;->d:Ljava/lang/Object;

    .line 486
    const-string v0, "H"

    sput-object v0, Lorg/apache/commons/lang3/time/DurationFormatUtils;->H:Ljava/lang/Object;

    .line 487
    const-string v0, "m"

    sput-object v0, Lorg/apache/commons/lang3/time/DurationFormatUtils;->m:Ljava/lang/Object;

    .line 488
    const-string v0, "s"

    sput-object v0, Lorg/apache/commons/lang3/time/DurationFormatUtils;->s:Ljava/lang/Object;

    .line 489
    const-string v0, "S"

    sput-object v0, Lorg/apache/commons/lang3/time/DurationFormatUtils;->S:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method static format([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;JJJJJJJZ)Ljava/lang/String;
    .locals 16
    .param p0, "tokens"    # [Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;
    .param p1, "years"    # J
    .param p3, "months"    # J
    .param p5, "days"    # J
    .param p7, "hours"    # J
    .param p9, "minutes"    # J
    .param p11, "seconds"    # J
    .param p13, "milliseconds"    # J
    .param p15, "padWithZeros"    # Z

    .line 428
    move-object/from16 v0, p0

    move-wide/from16 v1, p13

    move/from16 v3, p15

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 429
    .local v4, "buffer":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 430
    .local v5, "lastOutputSeconds":Z
    array-length v6, v0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_a

    aget-object v8, v0, v7

    .line 431
    .local v8, "token":Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;
    invoke-virtual {v8}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->getValue()Ljava/lang/Object;

    move-result-object v9

    .line 432
    .local v9, "value":Ljava/lang/Object;
    invoke-virtual {v8}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->getCount()I

    move-result v10

    .line 433
    .local v10, "count":I
    instance-of v11, v9, Ljava/lang/StringBuilder;

    if-eqz v11, :cond_0

    .line 434
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v13, p3

    move-wide/from16 v11, p11

    goto/16 :goto_2

    .line 436
    :cond_0
    sget-object v11, Lorg/apache/commons/lang3/time/DurationFormatUtils;->y:Ljava/lang/Object;

    invoke-virtual {v9, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 437
    move-wide/from16 v11, p1

    invoke-static {v11, v12, v3, v10}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->paddedValue(JZI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    const/4 v5, 0x0

    move-wide/from16 v13, p3

    move-wide/from16 v11, p11

    goto/16 :goto_2

    .line 439
    :cond_1
    move-wide/from16 v11, p1

    sget-object v13, Lorg/apache/commons/lang3/time/DurationFormatUtils;->M:Ljava/lang/Object;

    invoke-virtual {v9, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 440
    move-wide/from16 v13, p3

    invoke-static {v13, v14, v3, v10}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->paddedValue(JZI)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    const/4 v5, 0x0

    move-wide/from16 v11, p11

    goto/16 :goto_2

    .line 442
    :cond_2
    move-wide/from16 v13, p3

    sget-object v15, Lorg/apache/commons/lang3/time/DurationFormatUtils;->d:Ljava/lang/Object;

    invoke-virtual {v9, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 443
    move-wide/from16 v11, p5

    invoke-static {v11, v12, v3, v10}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->paddedValue(JZI)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    const/4 v5, 0x0

    move-wide/from16 v11, p11

    goto/16 :goto_2

    .line 445
    :cond_3
    move-wide/from16 v11, p5

    sget-object v15, Lorg/apache/commons/lang3/time/DurationFormatUtils;->H:Ljava/lang/Object;

    invoke-virtual {v9, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 446
    move-wide/from16 v11, p7

    invoke-static {v11, v12, v3, v10}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->paddedValue(JZI)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    const/4 v5, 0x0

    move-wide/from16 v11, p11

    goto :goto_2

    .line 448
    :cond_4
    move-wide/from16 v11, p7

    sget-object v15, Lorg/apache/commons/lang3/time/DurationFormatUtils;->m:Ljava/lang/Object;

    invoke-virtual {v9, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 449
    move-wide/from16 v11, p9

    invoke-static {v11, v12, v3, v10}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->paddedValue(JZI)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    const/4 v5, 0x0

    move-wide/from16 v11, p11

    goto :goto_2

    .line 451
    :cond_5
    move-wide/from16 v11, p9

    sget-object v15, Lorg/apache/commons/lang3/time/DurationFormatUtils;->s:Ljava/lang/Object;

    invoke-virtual {v9, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 452
    move-wide/from16 v11, p11

    invoke-static {v11, v12, v3, v10}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->paddedValue(JZI)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    const/4 v5, 0x1

    goto :goto_2

    .line 454
    :cond_6
    move-wide/from16 v11, p11

    sget-object v15, Lorg/apache/commons/lang3/time/DurationFormatUtils;->S:Ljava/lang/Object;

    invoke-virtual {v9, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 455
    if-eqz v5, :cond_8

    .line 457
    const/4 v15, 0x3

    if-eqz v3, :cond_7

    invoke-static {v15, v10}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 458
    .local v15, "width":I
    :cond_7
    const/4 v0, 0x1

    invoke-static {v1, v2, v0, v15}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->paddedValue(JZI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    .end local v15    # "width":I
    goto :goto_1

    .line 460
    :cond_8
    invoke-static {v1, v2, v3, v10}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->paddedValue(JZI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    :goto_1
    const/4 v0, 0x0

    move v5, v0

    .line 430
    .end local v8    # "token":Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;
    .end local v9    # "value":Ljava/lang/Object;
    .end local v10    # "count":I
    :cond_9
    :goto_2
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 466
    :cond_a
    move-wide/from16 v13, p3

    move-wide/from16 v11, p11

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDuration(JLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "durationMillis"    # J
    .param p2, "format"    # Ljava/lang/String;

    .line 114
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->formatDuration(JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDuration(JLjava/lang/String;Z)Ljava/lang/String;
    .locals 27
    .param p0, "durationMillis"    # J
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "padWithZeros"    # Z

    .line 131
    const-wide/16 v0, 0x0

    const-wide v2, 0x7fffffffffffffffL

    const-string v6, "durationMillis must not be negative"

    move-wide/from16 v4, p0

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang3/Validate;->inclusiveBetween(JJJLjava/lang/String;)V

    .line 133
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->lexx(Ljava/lang/String;)[Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    move-result-object v0

    .line 135
    .local v0, "tokens":[Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;
    const-wide/16 v1, 0x0

    .line 136
    .local v1, "days":J
    const-wide/16 v3, 0x0

    .line 137
    .local v3, "hours":J
    const-wide/16 v5, 0x0

    .line 138
    .local v5, "minutes":J
    const-wide/16 v7, 0x0

    .line 139
    .local v7, "seconds":J
    move-wide/from16 v9, p0

    .line 141
    .local v9, "milliseconds":J
    sget-object v11, Lorg/apache/commons/lang3/time/DurationFormatUtils;->d:Ljava/lang/Object;

    invoke-static {v0, v11}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 142
    const-wide/32 v11, 0x5265c00

    div-long v1, v9, v11

    .line 143
    mul-long/2addr v11, v1

    sub-long/2addr v9, v11

    .line 145
    :cond_0
    sget-object v11, Lorg/apache/commons/lang3/time/DurationFormatUtils;->H:Ljava/lang/Object;

    invoke-static {v0, v11}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 146
    const-wide/32 v11, 0x36ee80

    div-long v3, v9, v11

    .line 147
    mul-long/2addr v11, v3

    sub-long/2addr v9, v11

    .line 149
    :cond_1
    sget-object v11, Lorg/apache/commons/lang3/time/DurationFormatUtils;->m:Ljava/lang/Object;

    invoke-static {v0, v11}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 150
    const-wide/32 v11, 0xea60

    div-long v5, v9, v11

    .line 151
    mul-long/2addr v11, v5

    sub-long/2addr v9, v11

    .line 153
    :cond_2
    sget-object v11, Lorg/apache/commons/lang3/time/DurationFormatUtils;->s:Ljava/lang/Object;

    invoke-static {v0, v11}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 154
    const-wide/16 v11, 0x3e8

    div-long v7, v9, v11

    .line 155
    mul-long/2addr v11, v7

    sub-long/2addr v9, v11

    move-wide/from16 v23, v7

    move-wide/from16 v25, v9

    goto :goto_0

    .line 153
    :cond_3
    move-wide/from16 v23, v7

    move-wide/from16 v25, v9

    .line 158
    .end local v7    # "seconds":J
    .end local v9    # "milliseconds":J
    .local v23, "seconds":J
    .local v25, "milliseconds":J
    :goto_0
    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    move-object v7, v0

    move-wide v12, v1

    move-wide v14, v3

    move-wide/from16 v16, v5

    move-wide/from16 v18, v23

    move-wide/from16 v20, v25

    move/from16 v22, p3

    invoke-static/range {v7 .. v22}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->format([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;JJJJJJJZ)Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public static formatDurationHMS(J)Ljava/lang/String;
    .locals 1
    .param p0, "durationMillis"    # J

    .line 83
    const-string v0, "HH:mm:ss.SSS"

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->formatDuration(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDurationISO(J)Ljava/lang/String;
    .locals 2
    .param p0, "durationMillis"    # J

    .line 99
    const-string v0, "\'P\'yyyy\'Y\'M\'M\'d\'DT\'H\'H\'m\'M\'s.SSS\'S\'"

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->formatDuration(JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDurationWords(JZZ)Ljava/lang/String;
    .locals 10
    .param p0, "durationMillis"    # J
    .param p2, "suppressLeadingZeroElements"    # Z
    .param p3, "suppressTrailingZeroElements"    # Z

    .line 181
    const-string v0, "d\' days \'H\' hours \'m\' minutes \'s\' seconds\'"

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->formatDuration(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "duration":Ljava/lang/String;
    const-string v1, " 0 minutes"

    const-string v2, " 0 hours"

    const-string v3, " 0 seconds"

    const-string v4, " 0 days"

    const-string v5, " "

    const-string v6, ""

    if-eqz p2, :cond_1

    .line 184
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-static {v0, v4, v6}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 186
    .local v7, "tmp":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-eq v8, v9, :cond_0

    .line 187
    move-object v0, v7

    .line 188
    invoke-static {v0, v2, v6}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 189
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-eq v8, v9, :cond_0

    .line 190
    move-object v0, v7

    .line 191
    invoke-static {v0, v1, v6}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 192
    move-object v0, v7

    .line 193
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-eq v8, v9, :cond_0

    .line 194
    invoke-static {v7, v3, v6}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    .line 200
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 203
    .end local v7    # "tmp":Ljava/lang/String;
    :cond_1
    if-eqz p3, :cond_2

    .line 204
    invoke-static {v0, v3, v6}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 205
    .local v3, "tmp":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-eq v7, v8, :cond_2

    .line 206
    move-object v0, v3

    .line 207
    invoke-static {v0, v1, v6}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 208
    .end local v3    # "tmp":Ljava/lang/String;
    .local v1, "tmp":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-eq v3, v7, :cond_2

    .line 209
    move-object v0, v1

    .line 210
    invoke-static {v0, v2, v6}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 211
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 212
    invoke-static {v1, v4, v6}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    .end local v1    # "tmp":Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 219
    const-string v1, " 1 seconds"

    const-string v2, " 1 second"

    invoke-static {v0, v1, v2}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    const-string v1, " 1 minutes"

    const-string v2, " 1 minute"

    invoke-static {v0, v1, v2}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    const-string v1, " 1 hours"

    const-string v2, " 1 hour"

    invoke-static {v0, v1, v2}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 222
    const-string v1, " 1 days"

    const-string v2, " 1 day"

    invoke-static {v0, v1, v2}, Lorg/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatPeriod(JJLjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "startMillis"    # J
    .param p2, "endMillis"    # J
    .param p4, "format"    # Ljava/lang/String;

    .line 252
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    const/4 v5, 0x1

    move-wide v0, p0

    move-wide v2, p2

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->formatPeriod(JJLjava/lang/String;ZLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatPeriod(JJLjava/lang/String;ZLjava/util/TimeZone;)Ljava/lang/String;
    .locals 28
    .param p0, "startMillis"    # J
    .param p2, "endMillis"    # J
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "padWithZeros"    # Z
    .param p6, "timezone"    # Ljava/util/TimeZone;

    .line 281
    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-gtz v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    new-array v5, v5, [Ljava/lang/Object;

    const-string v7, "startMillis must not be greater than endMillis"

    invoke-static {v4, v7, v5}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 290
    invoke-static/range {p4 .. p4}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->lexx(Ljava/lang/String;)[Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    move-result-object v4

    .line 294
    .local v4, "tokens":[Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;
    invoke-static/range {p6 .. p6}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v5

    .line 295
    .local v5, "start":Ljava/util/Calendar;
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 296
    invoke-static/range {p6 .. p6}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v7

    .line 297
    .local v7, "end":Ljava/util/Calendar;
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 300
    const/16 v8, 0xe

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    sub-int/2addr v9, v8

    .line 301
    .local v9, "milliseconds":I
    const/16 v8, 0xd

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    sub-int/2addr v10, v8

    .line 302
    .local v10, "seconds":I
    const/16 v8, 0xc

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    sub-int/2addr v11, v8

    .line 303
    .local v11, "minutes":I
    const/16 v8, 0xb

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    sub-int/2addr v12, v8

    .line 304
    .local v12, "hours":I
    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v14

    sub-int/2addr v13, v14

    .line 305
    .local v13, "days":I
    const/4 v14, 0x2

    invoke-virtual {v7, v14}, Ljava/util/Calendar;->get(I)I

    move-result v15

    invoke-virtual {v5, v14}, Ljava/util/Calendar;->get(I)I

    move-result v16

    sub-int v15, v15, v16

    .line 306
    .local v15, "months":I
    invoke-virtual {v7, v6}, Ljava/util/Calendar;->get(I)I

    move-result v16

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v17

    sub-int v16, v16, v17

    .line 309
    .local v16, "years":I
    :goto_1
    if-gez v9, :cond_1

    .line 310
    add-int/lit16 v9, v9, 0x3e8

    .line 311
    add-int/lit8 v10, v10, -0x1

    goto :goto_1

    .line 313
    :cond_1
    :goto_2
    if-gez v10, :cond_2

    .line 314
    add-int/lit8 v10, v10, 0x3c

    .line 315
    add-int/lit8 v11, v11, -0x1

    goto :goto_2

    .line 317
    :cond_2
    :goto_3
    if-gez v11, :cond_3

    .line 318
    add-int/lit8 v11, v11, 0x3c

    .line 319
    add-int/lit8 v12, v12, -0x1

    goto :goto_3

    .line 321
    :cond_3
    :goto_4
    if-gez v12, :cond_4

    .line 322
    add-int/lit8 v12, v12, 0x18

    .line 323
    add-int/lit8 v13, v13, -0x1

    goto :goto_4

    .line 326
    :cond_4
    sget-object v6, Lorg/apache/commons/lang3/time/DurationFormatUtils;->M:Ljava/lang/Object;

    invoke-static {v4, v6}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 327
    :goto_5
    if-gez v13, :cond_5

    .line 328
    invoke-virtual {v5, v8}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v6

    add-int/2addr v13, v6

    .line 329
    add-int/lit8 v15, v15, -0x1

    .line 330
    const/4 v6, 0x1

    invoke-virtual {v5, v14, v6}, Ljava/util/Calendar;->add(II)V

    goto :goto_5

    .line 333
    :cond_5
    :goto_6
    if-gez v15, :cond_6

    .line 334
    add-int/lit8 v15, v15, 0xc

    .line 335
    add-int/lit8 v16, v16, -0x1

    goto :goto_6

    .line 338
    :cond_6
    sget-object v6, Lorg/apache/commons/lang3/time/DurationFormatUtils;->y:Ljava/lang/Object;

    invoke-static {v4, v6}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    if-eqz v16, :cond_8

    .line 339
    :goto_7
    if-eqz v16, :cond_7

    .line 340
    mul-int/lit8 v6, v16, 0xc

    add-int/2addr v15, v6

    .line 341
    const/16 v16, 0x0

    goto :goto_7

    .line 339
    :cond_7
    move v6, v15

    move/from16 v15, v16

    goto/16 :goto_b

    .line 391
    :cond_8
    move v6, v15

    move/from16 v15, v16

    goto/16 :goto_b

    .line 347
    :cond_9
    sget-object v6, Lorg/apache/commons/lang3/time/DurationFormatUtils;->y:Ljava/lang/Object;

    invoke-static {v4, v6}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 348
    const/4 v6, 0x1

    invoke-virtual {v7, v6}, Ljava/util/Calendar;->get(I)I

    move-result v17

    .line 349
    .local v17, "target":I
    if-gez v15, :cond_a

    .line 351
    add-int/lit8 v17, v17, -0x1

    move/from16 v8, v17

    goto :goto_8

    .line 349
    :cond_a
    move/from16 v8, v17

    .line 354
    .end local v17    # "target":I
    .local v8, "target":I
    :goto_8
    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v14

    if-eq v14, v8, :cond_c

    .line 355
    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v14

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v20

    sub-int v14, v14, v20

    add-int/2addr v13, v14

    .line 358
    instance-of v14, v5, Ljava/util/GregorianCalendar;

    if-eqz v14, :cond_b

    .line 359
    const/4 v14, 0x2

    invoke-virtual {v5, v14}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v14, 0x1

    if-ne v6, v14, :cond_b

    .line 360
    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v14

    const/16 v6, 0x1d

    if-ne v14, v6, :cond_b

    .line 361
    add-int/lit8 v13, v13, 0x1

    .line 364
    :cond_b
    const/4 v6, 0x1

    invoke-virtual {v5, v6, v6}, Ljava/util/Calendar;->add(II)V

    .line 366
    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/2addr v13, v6

    const/4 v6, 0x1

    const/4 v14, 0x2

    goto :goto_8

    .line 369
    :cond_c
    const/16 v16, 0x0

    .line 372
    .end local v8    # "target":I
    :cond_d
    :goto_9
    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v7, v6}, Ljava/util/Calendar;->get(I)I

    move-result v14

    if-eq v8, v14, :cond_e

    .line 373
    const/4 v8, 0x5

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v14

    add-int/2addr v13, v14

    .line 374
    const/4 v14, 0x1

    invoke-virtual {v5, v6, v14}, Ljava/util/Calendar;->add(II)V

    goto :goto_9

    .line 377
    :cond_e
    const/4 v8, 0x5

    const/4 v6, 0x0

    move v15, v6

    .line 379
    :goto_a
    if-gez v13, :cond_f

    .line 380
    invoke-virtual {v5, v8}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v6

    add-int/2addr v13, v6

    .line 381
    add-int/lit8 v15, v15, -0x1

    .line 382
    const/4 v6, 0x2

    const/4 v14, 0x1

    invoke-virtual {v5, v6, v14}, Ljava/util/Calendar;->add(II)V

    goto :goto_a

    .line 379
    :cond_f
    move v6, v15

    move/from16 v15, v16

    .line 391
    .end local v16    # "years":I
    .local v6, "months":I
    .local v15, "years":I
    :goto_b
    sget-object v8, Lorg/apache/commons/lang3/time/DurationFormatUtils;->d:Ljava/lang/Object;

    invoke-static {v4, v8}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_10

    .line 392
    mul-int/lit8 v8, v13, 0x18

    add-int/2addr v12, v8

    .line 393
    const/4 v13, 0x0

    .line 395
    :cond_10
    sget-object v8, Lorg/apache/commons/lang3/time/DurationFormatUtils;->H:Ljava/lang/Object;

    invoke-static {v4, v8}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_11

    .line 396
    mul-int/lit8 v8, v12, 0x3c

    add-int/2addr v11, v8

    .line 397
    const/4 v12, 0x0

    move v14, v12

    goto :goto_c

    .line 395
    :cond_11
    move v14, v12

    .line 399
    .end local v12    # "hours":I
    .local v14, "hours":I
    :goto_c
    sget-object v8, Lorg/apache/commons/lang3/time/DurationFormatUtils;->m:Ljava/lang/Object;

    invoke-static {v4, v8}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12

    .line 400
    mul-int/lit8 v8, v11, 0x3c

    add-int/2addr v10, v8

    .line 401
    const/4 v11, 0x0

    .line 403
    :cond_12
    sget-object v8, Lorg/apache/commons/lang3/time/DurationFormatUtils;->s:Ljava/lang/Object;

    invoke-static {v4, v8}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_13

    .line 404
    mul-int/lit16 v8, v10, 0x3e8

    add-int/2addr v9, v8

    .line 405
    const/4 v10, 0x0

    move v12, v9

    move v9, v10

    goto :goto_d

    .line 403
    :cond_13
    move v12, v9

    move v9, v10

    .line 408
    .end local v10    # "seconds":I
    .local v9, "seconds":I
    .local v12, "milliseconds":I
    :goto_d
    int-to-long v0, v15

    int-to-long v2, v6

    move-object/from16 v24, v5

    move/from16 v25, v6

    .end local v5    # "start":Ljava/util/Calendar;
    .end local v6    # "months":I
    .local v24, "start":Ljava/util/Calendar;
    .local v25, "months":I
    int-to-long v5, v13

    move-wide/from16 v16, v5

    int-to-long v5, v14

    move-wide/from16 v18, v5

    int-to-long v5, v11

    move-wide/from16 v20, v5

    int-to-long v5, v9

    move-wide/from16 v22, v5

    int-to-long v5, v12

    move-object v8, v4

    move/from16 v26, v9

    .end local v9    # "seconds":I
    .local v26, "seconds":I
    move-wide v9, v0

    move v1, v11

    move v0, v12

    .end local v11    # "minutes":I
    .end local v12    # "milliseconds":I
    .local v0, "milliseconds":I
    .local v1, "minutes":I
    move-wide v11, v2

    move v3, v13

    move v2, v14

    .end local v13    # "days":I
    .end local v14    # "hours":I
    .local v2, "hours":I
    .local v3, "days":I
    move-wide/from16 v13, v16

    move/from16 v27, v15

    .end local v15    # "years":I
    .local v27, "years":I
    move-wide/from16 v15, v18

    move-wide/from16 v17, v20

    move-wide/from16 v19, v22

    move-wide/from16 v21, v5

    move/from16 v23, p5

    invoke-static/range {v8 .. v23}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->format([Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;JJJJJJJZ)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static formatPeriodISO(JJ)Ljava/lang/String;
    .locals 7
    .param p0, "startMillis"    # J
    .param p2, "endMillis"    # J

    .line 238
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    const-string v4, "\'P\'yyyy\'Y\'M\'M\'d\'DT\'H\'H\'m\'M\'s.SSS\'S\'"

    const/4 v5, 0x0

    move-wide v0, p0

    move-wide v2, p2

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->formatPeriod(JJLjava/lang/String;ZLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static lexx(Ljava/lang/String;)[Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;
    .locals 8
    .param p0, "format"    # Ljava/lang/String;

    .line 498
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 500
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;>;"
    const/4 v1, 0x0

    .line 503
    .local v1, "inLiteral":Z
    const/4 v2, 0x0

    .line 504
    .local v2, "buffer":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 505
    .local v3, "previous":Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_d

    .line 506
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 507
    .local v5, "ch":C
    const/16 v6, 0x27

    if-eqz v1, :cond_0

    if-eq v5, v6, :cond_0

    .line 508
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 509
    goto/16 :goto_3

    .line 511
    :cond_0
    const/4 v7, 0x0

    .line 512
    .local v7, "value":Ljava/lang/Object;
    if-eq v5, v6, :cond_9

    const/16 v6, 0x48

    if-eq v5, v6, :cond_8

    const/16 v6, 0x4d

    if-eq v5, v6, :cond_7

    const/16 v6, 0x53

    if-eq v5, v6, :cond_6

    const/16 v6, 0x64

    if-eq v5, v6, :cond_5

    const/16 v6, 0x6d

    if-eq v5, v6, :cond_4

    const/16 v6, 0x73

    if-eq v5, v6, :cond_3

    const/16 v6, 0x79

    if-eq v5, v6, :cond_2

    .line 546
    if-nez v2, :cond_1

    .line 547
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v6

    .line 548
    new-instance v6, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    invoke-direct {v6, v2}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 550
    :cond_1
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 525
    :cond_2
    sget-object v7, Lorg/apache/commons/lang3/time/DurationFormatUtils;->y:Ljava/lang/Object;

    .line 526
    goto :goto_1

    .line 540
    :cond_3
    sget-object v7, Lorg/apache/commons/lang3/time/DurationFormatUtils;->s:Ljava/lang/Object;

    .line 541
    goto :goto_1

    .line 537
    :cond_4
    sget-object v7, Lorg/apache/commons/lang3/time/DurationFormatUtils;->m:Ljava/lang/Object;

    .line 538
    goto :goto_1

    .line 531
    :cond_5
    sget-object v7, Lorg/apache/commons/lang3/time/DurationFormatUtils;->d:Ljava/lang/Object;

    .line 532
    goto :goto_1

    .line 543
    :cond_6
    sget-object v7, Lorg/apache/commons/lang3/time/DurationFormatUtils;->S:Ljava/lang/Object;

    .line 544
    goto :goto_1

    .line 528
    :cond_7
    sget-object v7, Lorg/apache/commons/lang3/time/DurationFormatUtils;->M:Ljava/lang/Object;

    .line 529
    goto :goto_1

    .line 534
    :cond_8
    sget-object v7, Lorg/apache/commons/lang3/time/DurationFormatUtils;->H:Ljava/lang/Object;

    .line 535
    goto :goto_1

    .line 515
    :cond_9
    if-eqz v1, :cond_a

    .line 516
    const/4 v2, 0x0

    .line 517
    const/4 v1, 0x0

    goto :goto_1

    .line 519
    :cond_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v6

    .line 520
    new-instance v6, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    invoke-direct {v6, v2}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    const/4 v1, 0x1

    .line 523
    nop

    .line 553
    :goto_1
    if-eqz v7, :cond_c

    .line 554
    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 555
    invoke-virtual {v3}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;->increment()V

    goto :goto_2

    .line 557
    :cond_b
    new-instance v6, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    invoke-direct {v6, v7}, Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;-><init>(Ljava/lang/Object;)V

    .line 558
    .local v6, "token":Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    move-object v3, v6

    .line 561
    .end local v6    # "token":Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;
    :goto_2
    const/4 v2, 0x0

    .line 505
    .end local v5    # "ch":C
    .end local v7    # "value":Ljava/lang/Object;
    :cond_c
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 564
    .end local v4    # "i":I
    :cond_d
    if-nez v1, :cond_e

    .line 567
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/apache/commons/lang3/time/DurationFormatUtils$Token;

    return-object v4

    .line 565
    :cond_e
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unmatched quote in format: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static paddedValue(JZI)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # J
    .param p2, "padWithZeros"    # Z
    .param p3, "count"    # I

    .line 479
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 480
    .local v0, "longString":Ljava/lang/String;
    if-eqz p2, :cond_0

    const/16 v1, 0x30

    invoke-static {v0, p3, v1}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method
