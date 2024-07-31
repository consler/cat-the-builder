.class public final Lcom/badlogic/gdx/utils/PropertiesUtils;
.super Ljava/lang/Object;
.source "PropertiesUtils.java"


# static fields
.field private static final CONTINUE:I = 0x3

.field private static final IGNORE:I = 0x5

.field private static final KEY_DONE:I = 0x4

.field private static final LINE_SEPARATOR:Ljava/lang/String; = "\n"

.field private static final NONE:I = 0x0

.field private static final SLASH:I = 0x1

.field private static final UNICODE:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method private static dumpString(Lcom/badlogic/gdx/utils/StringBuilder;Ljava/lang/String;ZZ)V
    .locals 7
    .param p0, "outBuffer"    # Lcom/badlogic/gdx/utils/StringBuilder;
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "escapeSpace"    # Z
    .param p3, "escapeUnicode"    # Z

    .line 256
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 257
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_e

    .line 258
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 260
    .local v2, "ch":C
    const/16 v3, 0x5c

    const/16 v4, 0x3d

    if-le v2, v4, :cond_1

    const/16 v5, 0x7f

    if-ge v2, v5, :cond_1

    .line 261
    if-ne v2, v3, :cond_0

    const-string v3, "\\\\"

    goto :goto_1

    :cond_0
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    :goto_1
    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 262
    goto/16 :goto_6

    .line 264
    :cond_1
    const/16 v5, 0x9

    if-eq v2, v5, :cond_d

    const/16 v5, 0xa

    if-eq v2, v5, :cond_c

    const/16 v5, 0xc

    if-eq v2, v5, :cond_b

    const/16 v5, 0xd

    if-eq v2, v5, :cond_a

    const/16 v5, 0x20

    if-eq v2, v5, :cond_7

    const/16 v6, 0x21

    if-eq v2, v6, :cond_6

    const/16 v6, 0x23

    if-eq v2, v6, :cond_6

    const/16 v6, 0x3a

    if-eq v2, v6, :cond_6

    if-eq v2, v4, :cond_6

    .line 291
    if-lt v2, v5, :cond_3

    const/16 v3, 0x7e

    if-le v2, v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v3, 0x1

    :goto_3
    and-int/2addr v3, p3

    if-eqz v3, :cond_5

    .line 292
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 293
    .local v3, "hex":Ljava/lang/String;
    const-string v4, "\\u"

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 294
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    rsub-int/lit8 v5, v5, 0x4

    if-ge v4, v5, :cond_4

    .line 295
    const/16 v5, 0x30

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 294
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 297
    .end local v4    # "j":I
    :cond_4
    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 298
    .end local v3    # "hex":Ljava/lang/String;
    goto :goto_6

    .line 299
    :cond_5
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_6

    .line 288
    :cond_6
    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 289
    goto :goto_6

    .line 266
    :cond_7
    if-eqz v1, :cond_9

    if-eqz p2, :cond_8

    goto :goto_5

    .line 269
    :cond_8
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 271
    goto :goto_6

    .line 267
    :cond_9
    :goto_5
    const-string v3, "\\ "

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_6

    .line 276
    :cond_a
    const-string v3, "\\r"

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 277
    goto :goto_6

    .line 282
    :cond_b
    const-string v3, "\\f"

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 283
    goto :goto_6

    .line 273
    :cond_c
    const-string v3, "\\n"

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 274
    goto :goto_6

    .line 279
    :cond_d
    const-string v3, "\\t"

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 280
    nop

    .line 257
    .end local v2    # "ch":C
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 304
    .end local v1    # "i":I
    :cond_e
    return-void
.end method

.method public static load(Lcom/badlogic/gdx/utils/ObjectMap;Ljava/io/Reader;)V
    .locals 17
    .param p1, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/Reader;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    .local p0, "properties":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v0, :cond_29

    .line 55
    if-eqz v1, :cond_28

    .line 56
    const/4 v2, 0x0

    .local v2, "mode":I
    const/4 v3, 0x0

    .local v3, "unicode":I
    const/4 v4, 0x0

    .line 57
    .local v4, "count":I
    const/16 v5, 0x28

    new-array v5, v5, [C

    .line 58
    .local v5, "buf":[C
    const/4 v6, 0x0

    .local v6, "offset":I
    const/4 v7, -0x1

    .line 59
    .local v7, "keyLength":I
    const/4 v8, 0x1

    .line 61
    .local v8, "firstChar":Z
    new-instance v9, Ljava/io/BufferedReader;

    invoke-direct {v9, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 64
    .local v9, "br":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    invoke-virtual {v9}, Ljava/io/BufferedReader;->read()I

    move-result v10

    .line 65
    .local v10, "intVal":I
    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x4

    const/4 v14, -0x1

    const/4 v15, 0x0

    if-ne v10, v14, :cond_6

    .line 66
    nop

    .line 197
    if-ne v2, v11, :cond_2

    if-le v4, v13, :cond_1

    goto :goto_1

    .line 198
    :cond_1
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Invalid Unicode sequence: expected format \\uxxxx"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 200
    :cond_2
    :goto_1
    if-ne v7, v14, :cond_3

    if-lez v6, :cond_3

    .line 201
    move v7, v6

    .line 203
    :cond_3
    if-ltz v7, :cond_5

    .line 204
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v5, v15, v6}, Ljava/lang/String;-><init>([CII)V

    .line 205
    .local v11, "temp":Ljava/lang/String;
    invoke-virtual {v11, v15, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 206
    .local v13, "key":Ljava/lang/String;
    invoke-virtual {v11, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 207
    .local v14, "value":Ljava/lang/String;
    if-ne v2, v12, :cond_4

    .line 208
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "\u0000"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 210
    :cond_4
    invoke-virtual {v0, v13, v14}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    .end local v11    # "temp":Ljava/lang/String;
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "value":Ljava/lang/String;
    :cond_5
    return-void

    .line 68
    :cond_6
    int-to-char v14, v10

    .line 70
    .local v14, "nextChar":C
    array-length v12, v5

    if-ne v6, v12, :cond_7

    .line 71
    array-length v12, v5

    mul-int/2addr v12, v11

    new-array v12, v12, [C

    .line 72
    .local v12, "newBuf":[C
    invoke-static {v5, v15, v12, v15, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    move-object v5, v12

    .line 75
    .end local v12    # "newBuf":[C
    :cond_7
    const/16 v12, 0xa

    if-ne v2, v11, :cond_c

    .line 76
    const/16 v11, 0x10

    invoke-static {v14, v11}, Ljava/lang/Character;->digit(CI)I

    move-result v11

    .line 77
    .local v11, "digit":I
    if-ltz v11, :cond_8

    .line 78
    shl-int/lit8 v16, v3, 0x4

    add-int v3, v16, v11

    .line 79
    add-int/lit8 v4, v4, 0x1

    if-ge v4, v13, :cond_9

    .line 80
    goto :goto_0

    .line 82
    :cond_8
    if-le v4, v13, :cond_b

    .line 85
    :cond_9
    const/4 v2, 0x0

    .line 86
    add-int/lit8 v16, v6, 0x1

    .end local v6    # "offset":I
    .local v16, "offset":I
    int-to-char v13, v3

    aput-char v13, v5, v6

    .line 87
    if-eq v14, v12, :cond_a

    .line 88
    move/from16 v6, v16

    goto :goto_0

    .line 87
    :cond_a
    move/from16 v6, v16

    goto :goto_2

    .line 83
    .end local v16    # "offset":I
    .restart local v6    # "offset":I
    :cond_b
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "Invalid Unicode sequence: illegal character"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 91
    .end local v11    # "digit":I
    :cond_c
    :goto_2
    const/16 v11, 0xd

    const/4 v13, 0x1

    if-ne v2, v13, :cond_15

    .line 92
    const/4 v2, 0x0

    .line 93
    if-eq v14, v12, :cond_14

    if-eq v14, v11, :cond_13

    const/16 v11, 0x62

    if-eq v14, v11, :cond_12

    const/16 v11, 0x66

    if-eq v14, v11, :cond_11

    const/16 v11, 0x6e

    if-eq v14, v11, :cond_10

    const/16 v11, 0x72

    if-eq v14, v11, :cond_f

    const/16 v11, 0x74

    if-eq v14, v11, :cond_e

    const/16 v11, 0x75

    if-eq v14, v11, :cond_d

    goto :goto_3

    .line 116
    :cond_d
    const/4 v2, 0x2

    .line 117
    move v4, v15

    move v3, v15

    .line 118
    goto/16 :goto_0

    .line 113
    :cond_e
    const/16 v14, 0x9

    .line 114
    goto :goto_3

    .line 110
    :cond_f
    const/16 v14, 0xd

    .line 111
    goto :goto_3

    .line 107
    :cond_10
    const/16 v14, 0xa

    .line 108
    goto :goto_3

    .line 104
    :cond_11
    const/16 v14, 0xc

    .line 105
    goto :goto_3

    .line 101
    :cond_12
    const/16 v14, 0x8

    .line 102
    nop

    .line 118
    :goto_3
    goto/16 :goto_5

    .line 95
    :cond_13
    const/4 v2, 0x3

    .line 96
    goto/16 :goto_0

    .line 98
    :cond_14
    const/4 v2, 0x5

    .line 99
    goto/16 :goto_0

    .line 121
    :cond_15
    const/4 v13, 0x3

    if-eq v14, v12, :cond_23

    if-eq v14, v11, :cond_24

    const/16 v15, 0x21

    if-eq v14, v15, :cond_19

    const/16 v15, 0x23

    if-eq v14, v15, :cond_19

    const/16 v11, 0x3a

    if-eq v14, v11, :cond_18

    const/16 v11, 0x3d

    if-eq v14, v11, :cond_18

    const/16 v11, 0x5c

    if-eq v14, v11, :cond_16

    goto :goto_4

    .line 158
    :cond_16
    const/4 v11, 0x4

    if-ne v2, v11, :cond_17

    .line 159
    move v7, v6

    .line 161
    :cond_17
    const/4 v2, 0x1

    .line 162
    goto/16 :goto_0

    .line 165
    :cond_18
    const/4 v11, -0x1

    if-ne v7, v11, :cond_1c

    .line 166
    const/4 v2, 0x0

    .line 167
    move v7, v6

    .line 168
    goto/16 :goto_0

    .line 124
    :cond_19
    if-eqz v8, :cond_1c

    .line 126
    :cond_1a
    invoke-virtual {v9}, Ljava/io/BufferedReader;->read()I

    move-result v10

    .line 127
    const/4 v13, -0x1

    if-ne v10, v13, :cond_1b

    .line 128
    goto/16 :goto_0

    .line 130
    :cond_1b
    int-to-char v14, v10

    .line 131
    if-eq v14, v11, :cond_0

    if-ne v14, v12, :cond_1a

    .line 132
    goto/16 :goto_0

    .line 173
    :cond_1c
    :goto_4
    invoke-static {v14}, Ljava/lang/Character;->isSpace(C)Z

    move-result v11

    const/4 v12, 0x5

    if-eqz v11, :cond_1f

    .line 174
    if-ne v2, v13, :cond_1d

    .line 175
    const/4 v2, 0x5

    .line 178
    :cond_1d
    if-eqz v6, :cond_0

    if-eq v6, v7, :cond_0

    if-ne v2, v12, :cond_1e

    .line 179
    goto/16 :goto_0

    .line 181
    :cond_1e
    const/4 v11, -0x1

    if-ne v7, v11, :cond_1f

    .line 182
    const/4 v2, 0x4

    .line 183
    goto/16 :goto_0

    .line 186
    :cond_1f
    if-eq v2, v12, :cond_20

    if-ne v2, v13, :cond_21

    .line 187
    :cond_20
    const/4 v2, 0x0

    .line 190
    :cond_21
    :goto_5
    const/4 v8, 0x0

    .line 191
    const/4 v11, 0x4

    if-ne v2, v11, :cond_22

    .line 192
    move v7, v6

    .line 193
    const/4 v2, 0x0

    .line 195
    :cond_22
    add-int/lit8 v11, v6, 0x1

    .end local v6    # "offset":I
    .local v11, "offset":I
    aput-char v14, v5, v6

    move v6, v11

    goto/16 :goto_0

    .line 139
    .end local v11    # "offset":I
    .restart local v6    # "offset":I
    :cond_23
    if-ne v2, v13, :cond_24

    .line 140
    const/4 v2, 0x5

    .line 141
    goto/16 :goto_0

    .line 145
    :cond_24
    const/4 v2, 0x0

    .line 146
    const/4 v8, 0x1

    .line 147
    if-gtz v6, :cond_25

    if-nez v6, :cond_27

    if-nez v7, :cond_27

    .line 148
    :cond_25
    const/4 v11, -0x1

    if-ne v7, v11, :cond_26

    .line 149
    move v7, v6

    .line 151
    :cond_26
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v5, v15, v6}, Ljava/lang/String;-><init>([CII)V

    .line 152
    .local v11, "temp":Ljava/lang/String;
    invoke-virtual {v11, v15, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v12, v13}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .end local v11    # "temp":Ljava/lang/String;
    :cond_27
    const/4 v7, -0x1

    .line 155
    const/4 v6, 0x0

    .line 156
    goto/16 :goto_0

    .line 55
    .end local v2    # "mode":I
    .end local v3    # "unicode":I
    .end local v4    # "count":I
    .end local v5    # "buf":[C
    .end local v6    # "offset":I
    .end local v7    # "keyLength":I
    .end local v8    # "firstChar":Z
    .end local v9    # "br":Ljava/io/BufferedReader;
    .end local v10    # "intVal":I
    .end local v14    # "nextChar":C
    :cond_28
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Reader cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 54
    :cond_29
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "ObjectMap cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static store(Lcom/badlogic/gdx/utils/ObjectMap;Ljava/io/Writer;Ljava/lang/String;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/Writer;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 231
    .local p0, "properties":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/badlogic/gdx/utils/PropertiesUtils;->storeImpl(Lcom/badlogic/gdx/utils/ObjectMap;Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 232
    return-void
.end method

.method private static storeImpl(Lcom/badlogic/gdx/utils/ObjectMap;Ljava/io/Writer;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "comment"    # Ljava/lang/String;
    .param p3, "escapeUnicode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/Writer;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    .local p0, "properties":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    .line 237
    invoke-static {p1, p2}, Lcom/badlogic/gdx/utils/PropertiesUtils;->writeComment(Ljava/io/Writer;Ljava/lang/String;)V

    .line 239
    :cond_0
    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 240
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 241
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 243
    new-instance v1, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v2, 0xc8

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 244
    .local v1, "sb":Lcom/badlogic/gdx/utils/StringBuilder;
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectMap;->entries()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    .line 245
    .local v3, "entry":Lcom/badlogic/gdx/utils/ObjectMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectMap$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, v3, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v1, v4, v5, p3}, Lcom/badlogic/gdx/utils/PropertiesUtils;->dumpString(Lcom/badlogic/gdx/utils/StringBuilder;Ljava/lang/String;ZZ)V

    .line 246
    const/16 v4, 0x3d

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 247
    iget-object v4, v3, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v1, v4, v5, p3}, Lcom/badlogic/gdx/utils/PropertiesUtils;->dumpString(Lcom/badlogic/gdx/utils/StringBuilder;Ljava/lang/String;ZZ)V

    .line 248
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    .line 251
    .end local v3    # "entry":Lcom/badlogic/gdx/utils/ObjectMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectMap$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 252
    :cond_1
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 253
    return-void
.end method

.method private static writeComment(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 10
    .param p0, "writer"    # Ljava/io/Writer;
    .param p1, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 307
    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 309
    .local v1, "len":I
    const/4 v2, 0x0

    .line 310
    .local v2, "curIndex":I
    const/4 v3, 0x0

    .line 311
    .local v3, "lastIndex":I
    :goto_0
    const-string v4, "\n"

    if-ge v2, v1, :cond_8

    .line 312
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 313
    .local v5, "c":C
    const/16 v6, 0xd

    const/16 v7, 0xa

    const/16 v8, 0xff

    if-gt v5, v8, :cond_0

    if-eq v5, v7, :cond_0

    if-ne v5, v6, :cond_7

    .line 314
    :cond_0
    if-eq v3, v2, :cond_1

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 315
    :cond_1
    if-le v5, v8, :cond_3

    .line 316
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 317
    .local v4, "hex":Ljava/lang/String;
    const-string v6, "\\u"

    invoke-virtual {p0, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 318
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    rsub-int/lit8 v7, v7, 0x4

    if-ge v6, v7, :cond_2

    .line 319
    const/16 v7, 0x30

    invoke-virtual {p0, v7}, Ljava/io/Writer;->write(I)V

    .line 318
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 321
    .end local v6    # "j":I
    :cond_2
    invoke-virtual {p0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 322
    .end local v4    # "hex":Ljava/lang/String;
    goto :goto_2

    .line 323
    :cond_3
    invoke-virtual {p0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 324
    if-ne v5, v6, :cond_4

    add-int/lit8 v4, v1, -0x1

    if-eq v2, v4, :cond_4

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v7, :cond_4

    .line 325
    add-int/lit8 v2, v2, 0x1

    .line 327
    :cond_4
    add-int/lit8 v4, v1, -0x1

    if-eq v2, v4, :cond_5

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x23

    if-eq v4, v6, :cond_6

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x21

    if-eq v4, v6, :cond_6

    .line 328
    :cond_5
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 330
    :cond_6
    :goto_2
    add-int/lit8 v3, v2, 0x1

    .line 332
    :cond_7
    nop

    .end local v5    # "c":C
    add-int/lit8 v2, v2, 0x1

    .line 333
    goto :goto_0

    .line 334
    :cond_8
    if-eq v3, v2, :cond_9

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 335
    :cond_9
    invoke-virtual {p0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 336
    return-void
.end method
