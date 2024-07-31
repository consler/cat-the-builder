.class public Lcom/badlogic/gdx/utils/UBJsonReader;
.super Ljava/lang/Object;
.source "UBJsonReader.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/BaseJsonReader;


# instance fields
.field public oldFormat:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/UBJsonReader;->oldFormat:Z

    return-void
.end method


# virtual methods
.method public parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/JsonValue;
    .locals 4
    .param p1, "file"    # Lcom/badlogic/gdx/files/FileHandle;

    .line 54
    const/16 v0, 0x2000

    :try_start_0
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/files/FileHandle;->read(I)Ljava/io/BufferedInputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/UBJsonReader;->parse(Ljava/io/InputStream;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public parse(Ljava/io/DataInputStream;)Lcom/badlogic/gdx/utils/JsonValue;
    .locals 1
    .param p1, "din"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    :try_start_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/UBJsonReader;->parse(Ljava/io/DataInputStream;B)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    invoke-static {p1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 62
    return-object v0

    .line 64
    :catchall_0
    move-exception v0

    invoke-static {p1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method protected parse(Ljava/io/DataInputStream;B)Lcom/badlogic/gdx/utils/JsonValue;
    .locals 3
    .param p1, "din"    # Ljava/io/DataInputStream;
    .param p2, "type"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    const/16 v0, 0x5b

    if-ne p2, v0, :cond_0

    .line 70
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonReader;->parseArray(Ljava/io/DataInputStream;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    return-object v0

    .line 71
    :cond_0
    const/16 v0, 0x7b

    if-ne p2, v0, :cond_1

    .line 72
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonReader;->parseObject(Ljava/io/DataInputStream;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    return-object v0

    .line 73
    :cond_1
    const/16 v0, 0x5a

    if-ne p2, v0, :cond_2

    .line 74
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->nullValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(Lcom/badlogic/gdx/utils/JsonValue$ValueType;)V

    return-object v0

    .line 75
    :cond_2
    const/16 v0, 0x54

    if-ne p2, v0, :cond_3

    .line 76
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(Z)V

    return-object v0

    .line 77
    :cond_3
    const/16 v0, 0x46

    if-ne p2, v0, :cond_4

    .line 78
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(Z)V

    return-object v0

    .line 79
    :cond_4
    const/16 v0, 0x42

    if-ne p2, v0, :cond_5

    .line 80
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonReader;->readUChar(Ljava/io/DataInputStream;)S

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(J)V

    return-object v0

    .line 81
    :cond_5
    const/16 v0, 0x55

    if-ne p2, v0, :cond_6

    .line 82
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonReader;->readUChar(Ljava/io/DataInputStream;)S

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(J)V

    return-object v0

    .line 83
    :cond_6
    const/16 v0, 0x69

    if-ne p2, v0, :cond_8

    .line 84
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/UBJsonReader;->oldFormat:Z

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v1

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    :goto_0
    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(J)V

    return-object v0

    .line 85
    :cond_8
    const/16 v0, 0x49

    if-ne p2, v0, :cond_a

    .line 86
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/UBJsonReader;->oldFormat:Z

    if-eqz v1, :cond_9

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    goto :goto_1

    :cond_9
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v1

    :goto_1
    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(J)V

    return-object v0

    .line 87
    :cond_a
    const/16 v0, 0x6c

    if-ne p2, v0, :cond_b

    .line 88
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(J)V

    return-object v0

    .line 89
    :cond_b
    const/16 v0, 0x4c

    if-ne p2, v0, :cond_c

    .line 90
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(J)V

    return-object v0

    .line 91
    :cond_c
    const/16 v0, 0x64

    if-ne p2, v0, :cond_d

    .line 92
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v1

    float-to-double v1, v1

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(D)V

    return-object v0

    .line 93
    :cond_d
    const/16 v0, 0x44

    if-ne p2, v0, :cond_e

    .line 94
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(D)V

    return-object v0

    .line 95
    :cond_e
    const/16 v0, 0x73

    if-eq p2, v0, :cond_13

    const/16 v0, 0x53

    if-ne p2, v0, :cond_f

    goto :goto_3

    .line 97
    :cond_f
    const/16 v0, 0x61

    if-eq p2, v0, :cond_12

    const/16 v0, 0x41

    if-ne p2, v0, :cond_10

    goto :goto_2

    .line 99
    :cond_10
    const/16 v0, 0x43

    if-ne p2, v0, :cond_11

    .line 100
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readChar()C

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(J)V

    return-object v0

    .line 102
    :cond_11
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Unrecognized data type"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_12
    :goto_2
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/UBJsonReader;->parseData(Ljava/io/DataInputStream;B)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    return-object v0

    .line 96
    :cond_13
    :goto_3
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/UBJsonReader;->parseString(Ljava/io/DataInputStream;B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public parse(Ljava/io/InputStream;)Lcom/badlogic/gdx/utils/JsonValue;
    .locals 3
    .param p1, "input"    # Ljava/io/InputStream;

    .line 40
    const/4 v0, 0x0

    .line 42
    .local v0, "din":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v1

    .line 43
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/UBJsonReader;->parse(Ljava/io/DataInputStream;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    invoke-static {v0}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 43
    return-object v1

    .line 47
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 44
    :catch_0
    move-exception v1

    .line 45
    .local v1, "ex":Ljava/io/IOException;
    :try_start_1
    new-instance v2, Lcom/badlogic/gdx/utils/SerializationException;

    invoke-direct {v2, v1}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "din":Ljava/io/DataInputStream;
    .end local p1    # "input":Ljava/io/InputStream;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local v0    # "din":Ljava/io/DataInputStream;
    .restart local p1    # "input":Ljava/io/InputStream;
    :goto_0
    invoke-static {v0}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method protected parseArray(Ljava/io/DataInputStream;)Lcom/badlogic/gdx/utils/JsonValue;
    .locals 13
    .param p1, "din"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(Lcom/badlogic/gdx/utils/JsonValue$ValueType;)V

    .line 107
    .local v0, "result":Lcom/badlogic/gdx/utils/JsonValue;
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    .line 108
    .local v1, "type":B
    const/4 v2, 0x0

    .line 109
    .local v2, "valueType":B
    const/16 v3, 0x24

    if-ne v1, v3, :cond_0

    .line 110
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    .line 111
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    .line 113
    :cond_0
    const-wide/16 v3, -0x1

    .line 114
    .local v3, "size":J
    const/16 v5, 0x23

    const-wide/16 v6, 0x0

    if-ne v1, v5, :cond_4

    .line 115
    const/4 v5, 0x0

    const-wide/16 v8, -0x1

    invoke-virtual {p0, p1, v5, v8, v9}, Lcom/badlogic/gdx/utils/UBJsonReader;->parseSize(Ljava/io/DataInputStream;ZJ)J

    move-result-wide v3

    .line 116
    cmp-long v5, v3, v6

    if-ltz v5, :cond_3

    .line 117
    cmp-long v5, v3, v6

    if-nez v5, :cond_1

    return-object v0

    .line 118
    :cond_1
    if-nez v2, :cond_2

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    goto :goto_0

    :cond_2
    move v5, v2

    :goto_0
    move v1, v5

    goto :goto_1

    .line 116
    :cond_3
    new-instance v5, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v6, "Unrecognized data type"

    invoke-direct {v5, v6}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 120
    :cond_4
    :goto_1
    const/4 v5, 0x0

    .line 121
    .local v5, "prev":Lcom/badlogic/gdx/utils/JsonValue;
    const-wide/16 v8, 0x0

    .line 122
    .local v8, "c":J
    :goto_2
    invoke-virtual {p1}, Ljava/io/DataInputStream;->available()I

    move-result v10

    if-lez v10, :cond_8

    const/16 v10, 0x5d

    if-eq v1, v10, :cond_8

    .line 123
    invoke-virtual {p0, p1, v1}, Lcom/badlogic/gdx/utils/UBJsonReader;->parse(Ljava/io/DataInputStream;B)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v10

    .line 124
    .local v10, "val":Lcom/badlogic/gdx/utils/JsonValue;
    iput-object v0, v10, Lcom/badlogic/gdx/utils/JsonValue;->parent:Lcom/badlogic/gdx/utils/JsonValue;

    .line 125
    const/4 v11, 0x1

    if-eqz v5, :cond_5

    .line 126
    iput-object v5, v10, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    .line 127
    iput-object v10, v5, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    .line 128
    iget v12, v0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    add-int/2addr v12, v11

    iput v12, v0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    goto :goto_3

    .line 130
    :cond_5
    iput-object v10, v0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .line 131
    iput v11, v0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    .line 133
    :goto_3
    move-object v5, v10

    .line 134
    cmp-long v11, v3, v6

    if-lez v11, :cond_6

    const-wide/16 v11, 0x1

    add-long/2addr v11, v8

    move-wide v8, v11

    cmp-long v11, v11, v3

    if-ltz v11, :cond_6

    goto :goto_5

    .line 135
    :cond_6
    if-nez v2, :cond_7

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v11

    goto :goto_4

    :cond_7
    move v11, v2

    :goto_4
    move v1, v11

    .line 136
    .end local v10    # "val":Lcom/badlogic/gdx/utils/JsonValue;
    goto :goto_2

    .line 137
    :cond_8
    :goto_5
    return-object v0
.end method

.method protected parseData(Ljava/io/DataInputStream;B)Lcom/badlogic/gdx/utils/JsonValue;
    .locals 10
    .param p1, "din"    # Ljava/io/DataInputStream;
    .param p2, "blockType"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    .line 181
    .local v0, "dataType":B
    const/16 v1, 0x41

    if-ne p2, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonReader;->readUInt(Ljava/io/DataInputStream;)J

    move-result-wide v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonReader;->readUChar(Ljava/io/DataInputStream;)S

    move-result v1

    int-to-long v1, v1

    .line 182
    .local v1, "size":J
    :goto_0
    new-instance v3, Lcom/badlogic/gdx/utils/JsonValue;

    sget-object v4, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(Lcom/badlogic/gdx/utils/JsonValue$ValueType;)V

    .line 183
    .local v3, "result":Lcom/badlogic/gdx/utils/JsonValue;
    const/4 v4, 0x0

    .line 184
    .local v4, "prev":Lcom/badlogic/gdx/utils/JsonValue;
    const-wide/16 v5, 0x0

    .local v5, "i":J
    :goto_1
    cmp-long v7, v5, v1

    if-gez v7, :cond_2

    .line 185
    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/utils/UBJsonReader;->parse(Ljava/io/DataInputStream;B)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v7

    .line 186
    .local v7, "val":Lcom/badlogic/gdx/utils/JsonValue;
    iput-object v3, v7, Lcom/badlogic/gdx/utils/JsonValue;->parent:Lcom/badlogic/gdx/utils/JsonValue;

    .line 187
    const/4 v8, 0x1

    if-eqz v4, :cond_1

    .line 188
    iput-object v7, v4, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    .line 189
    iget v9, v3, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    add-int/2addr v9, v8

    iput v9, v3, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    goto :goto_2

    .line 191
    :cond_1
    iput-object v7, v3, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .line 192
    iput v8, v3, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    .line 194
    :goto_2
    move-object v4, v7

    .line 184
    .end local v7    # "val":Lcom/badlogic/gdx/utils/JsonValue;
    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    goto :goto_1

    .line 196
    .end local v5    # "i":J
    :cond_2
    return-object v3
.end method

.method protected parseObject(Ljava/io/DataInputStream;)Lcom/badlogic/gdx/utils/JsonValue;
    .locals 17
    .param p1, "din"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Lcom/badlogic/gdx/utils/JsonValue;

    sget-object v3, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->object:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/JsonValue;-><init>(Lcom/badlogic/gdx/utils/JsonValue$ValueType;)V

    .line 142
    .local v2, "result":Lcom/badlogic/gdx/utils/JsonValue;
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    .line 143
    .local v3, "type":B
    const/4 v4, 0x0

    .line 144
    .local v4, "valueType":B
    const/16 v5, 0x24

    if-ne v3, v5, :cond_0

    .line 145
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    .line 146
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    .line 148
    :cond_0
    const-wide/16 v5, -0x1

    .line 149
    .local v5, "size":J
    const/16 v7, 0x23

    const-wide/16 v8, 0x0

    if-ne v3, v7, :cond_3

    .line 150
    const/4 v7, 0x0

    const-wide/16 v10, -0x1

    invoke-virtual {v0, v1, v7, v10, v11}, Lcom/badlogic/gdx/utils/UBJsonReader;->parseSize(Ljava/io/DataInputStream;ZJ)J

    move-result-wide v5

    .line 151
    cmp-long v7, v5, v8

    if-ltz v7, :cond_2

    .line 152
    cmp-long v7, v5, v8

    if-nez v7, :cond_1

    return-object v2

    .line 153
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    goto :goto_0

    .line 151
    :cond_2
    new-instance v7, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v8, "Unrecognized data type"

    invoke-direct {v7, v8}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 155
    :cond_3
    :goto_0
    const/4 v7, 0x0

    .line 156
    .local v7, "prev":Lcom/badlogic/gdx/utils/JsonValue;
    const-wide/16 v10, 0x0

    .line 157
    .local v10, "c":J
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->available()I

    move-result v12

    if-lez v12, :cond_7

    const/16 v12, 0x7d

    if-eq v3, v12, :cond_7

    .line 158
    const/4 v12, 0x1

    invoke-virtual {v0, v1, v12, v3}, Lcom/badlogic/gdx/utils/UBJsonReader;->parseString(Ljava/io/DataInputStream;ZB)Ljava/lang/String;

    move-result-object v13

    .line 159
    .local v13, "key":Ljava/lang/String;
    if-nez v4, :cond_4

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v14

    goto :goto_2

    :cond_4
    move v14, v4

    :goto_2
    invoke-virtual {v0, v1, v14}, Lcom/badlogic/gdx/utils/UBJsonReader;->parse(Ljava/io/DataInputStream;B)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v14

    .line 160
    .local v14, "child":Lcom/badlogic/gdx/utils/JsonValue;
    invoke-virtual {v14, v13}, Lcom/badlogic/gdx/utils/JsonValue;->setName(Ljava/lang/String;)V

    .line 161
    iput-object v2, v14, Lcom/badlogic/gdx/utils/JsonValue;->parent:Lcom/badlogic/gdx/utils/JsonValue;

    .line 162
    if-eqz v7, :cond_5

    .line 163
    iput-object v7, v14, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    .line 164
    iput-object v14, v7, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    .line 165
    iget v15, v2, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    add-int/2addr v15, v12

    iput v15, v2, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    goto :goto_3

    .line 167
    :cond_5
    iput-object v14, v2, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .line 168
    iput v12, v2, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    .line 170
    :goto_3
    move-object v7, v14

    .line 171
    cmp-long v12, v5, v8

    if-lez v12, :cond_6

    const-wide/16 v15, 0x1

    add-long/2addr v15, v10

    move-wide v10, v15

    cmp-long v12, v15, v5

    if-ltz v12, :cond_6

    goto :goto_4

    .line 172
    :cond_6
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    .line 173
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "child":Lcom/badlogic/gdx/utils/JsonValue;
    goto :goto_1

    .line 174
    :cond_7
    :goto_4
    return-object v2
.end method

.method protected parseSize(Ljava/io/DataInputStream;BZJ)J
    .locals 5
    .param p1, "din"    # Ljava/io/DataInputStream;
    .param p2, "type"    # B
    .param p3, "useIntOnError"    # Z
    .param p4, "defaultValue"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    const/16 v0, 0x69

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonReader;->readUChar(Ljava/io/DataInputStream;)S

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 221
    :cond_0
    const/16 v0, 0x49

    if-ne p2, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonReader;->readUShort(Ljava/io/DataInputStream;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 222
    :cond_1
    const/16 v0, 0x6c

    if-ne p2, v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonReader;->readUInt(Ljava/io/DataInputStream;)J

    move-result-wide v0

    return-wide v0

    .line 223
    :cond_2
    const/16 v0, 0x4c

    if-ne p2, v0, :cond_3

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    return-wide v0

    .line 224
    :cond_3
    if-eqz p3, :cond_4

    .line 225
    int-to-short v0, p2

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    const/16 v2, 0x18

    shl-long/2addr v0, v2

    .line 226
    .local v0, "result":J
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    int-to-short v2, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 227
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    int-to-short v2, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 228
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    int-to-short v2, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 229
    return-wide v0

    .line 231
    .end local v0    # "result":J
    :cond_4
    return-wide p4
.end method

.method protected parseSize(Ljava/io/DataInputStream;ZJ)J
    .locals 6
    .param p1, "din"    # Ljava/io/DataInputStream;
    .param p2, "useIntOnError"    # Z
    .param p3, "defaultValue"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/utils/UBJsonReader;->parseSize(Ljava/io/DataInputStream;BZJ)J

    move-result-wide v0

    return-wide v0
.end method

.method protected parseString(Ljava/io/DataInputStream;B)Ljava/lang/String;
    .locals 1
    .param p1, "din"    # Ljava/io/DataInputStream;
    .param p2, "type"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/badlogic/gdx/utils/UBJsonReader;->parseString(Ljava/io/DataInputStream;ZB)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected parseString(Ljava/io/DataInputStream;ZB)Ljava/lang/String;
    .locals 8
    .param p1, "din"    # Ljava/io/DataInputStream;
    .param p2, "sOptional"    # Z
    .param p3, "type"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    const-wide/16 v0, -0x1

    .line 205
    .local v0, "size":J
    const/16 v2, 0x53

    if-ne p3, v2, :cond_0

    .line 206
    const/4 v2, 0x1

    const-wide/16 v3, -0x1

    invoke-virtual {p0, p1, v2, v3, v4}, Lcom/badlogic/gdx/utils/UBJsonReader;->parseSize(Ljava/io/DataInputStream;ZJ)J

    move-result-wide v0

    goto :goto_0

    .line 207
    :cond_0
    const/16 v2, 0x73

    if-ne p3, v2, :cond_1

    .line 208
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/UBJsonReader;->readUChar(Ljava/io/DataInputStream;)S

    move-result v2

    int-to-long v0, v2

    goto :goto_0

    .line 209
    :cond_1
    if-eqz p2, :cond_2

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    move-object v2, p0

    move-object v3, p1

    move v4, p3

    invoke-virtual/range {v2 .. v7}, Lcom/badlogic/gdx/utils/UBJsonReader;->parseSize(Ljava/io/DataInputStream;BZJ)J

    move-result-wide v0

    .line 210
    :cond_2
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_4

    .line 211
    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/utils/UBJsonReader;->readString(Ljava/io/DataInputStream;J)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    const-string v2, ""

    :goto_1
    return-object v2

    .line 210
    :cond_4
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v3, "Unrecognized data type, string expected"

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected readString(Ljava/io/DataInputStream;J)Ljava/lang/String;
    .locals 3
    .param p1, "din"    # Ljava/io/DataInputStream;
    .param p2, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 247
    long-to-int v0, p2

    new-array v0, v0, [B

    .line 248
    .local v0, "data":[B
    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 249
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method protected readUChar(Ljava/io/DataInputStream;)S
    .locals 1
    .param p1, "din"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    int-to-short v0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method protected readUInt(Ljava/io/DataInputStream;)J
    .locals 4
    .param p1, "din"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, -0x1

    and-long/2addr v0, v2

    return-wide v0
.end method

.method protected readUShort(Ljava/io/DataInputStream;)I
    .locals 2
    .param p1, "din"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method
