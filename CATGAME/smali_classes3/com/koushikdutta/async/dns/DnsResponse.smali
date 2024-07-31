.class public Lcom/koushikdutta/async/dns/DnsResponse;
.super Ljava/lang/Object;
.source "DnsResponse.java"


# instance fields
.field public addresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field public names:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public source:Ljava/net/InetSocketAddress;

.field public txt:Lcom/koushikdutta/async/http/Multimap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/dns/DnsResponse;->addresses:Ljava/util/ArrayList;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/dns/DnsResponse;->names:Ljava/util/ArrayList;

    .line 18
    new-instance v0, Lcom/koushikdutta/async/http/Multimap;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/Multimap;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/dns/DnsResponse;->txt:Lcom/koushikdutta/async/http/Multimap;

    return-void
.end method

.method public static parse(Lcom/koushikdutta/async/ByteBufferList;)Lcom/koushikdutta/async/dns/DnsResponse;
    .locals 15
    .param p0, "bb"    # Lcom/koushikdutta/async/ByteBufferList;

    .line 50
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->getAll()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 51
    .local v0, "b":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/ByteBufferList;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    .line 53
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/ByteBufferList;->order(Ljava/nio/ByteOrder;)Lcom/koushikdutta/async/ByteBufferList;

    .line 56
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->getShort()S

    .line 58
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->getShort()S

    .line 61
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->getShort()S

    move-result v1

    .line 63
    .local v1, "questions":I
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->getShort()S

    move-result v2

    .line 65
    .local v2, "answers":I
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->getShort()S

    move-result v3

    .line 67
    .local v3, "authorities":I
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->getShort()S

    move-result v4

    .line 69
    .local v4, "additionals":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_0

    .line 70
    invoke-static {p0, v0}, Lcom/koushikdutta/async/dns/DnsResponse;->parseName(Lcom/koushikdutta/async/ByteBufferList;Ljava/nio/ByteBuffer;)Ljava/lang/String;

    .line 72
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->getShort()S

    .line 74
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->getShort()S

    .line 69
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 77
    .end local v5    # "i":I
    :cond_0
    new-instance v5, Lcom/koushikdutta/async/dns/DnsResponse;

    invoke-direct {v5}, Lcom/koushikdutta/async/dns/DnsResponse;-><init>()V

    .line 78
    .local v5, "response":Lcom/koushikdutta/async/dns/DnsResponse;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    const/16 v7, 0x10

    if-ge v6, v2, :cond_4

    .line 79
    invoke-static {p0, v0}, Lcom/koushikdutta/async/dns/DnsResponse;->parseName(Lcom/koushikdutta/async/ByteBufferList;Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v8

    .line 81
    .local v8, "name":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->getShort()S

    move-result v9

    .line 83
    .local v9, "type":I
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->getShort()S

    move-result v10

    .line 85
    .local v10, "clazz":I
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->getInt()I

    move-result v11

    .line 87
    .local v11, "ttl":I
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->getShort()S

    move-result v12

    .line 89
    .local v12, "length":I
    const/4 v13, 0x1

    if-ne v9, v13, :cond_1

    .line 91
    :try_start_0
    new-array v7, v12, [B

    .line 92
    .local v7, "data":[B
    invoke-virtual {p0, v7}, Lcom/koushikdutta/async/ByteBufferList;->get([B)V

    .line 93
    iget-object v13, v5, Lcom/koushikdutta/async/dns/DnsResponse;->addresses:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    nop

    .end local v7    # "data":[B
    goto :goto_2

    .line 107
    :catch_0
    move-exception v7

    goto :goto_2

    .line 95
    :cond_1
    const/16 v13, 0xc

    if-ne v9, v13, :cond_2

    .line 96
    iget-object v7, v5, Lcom/koushikdutta/async/dns/DnsResponse;->names:Ljava/util/ArrayList;

    invoke-static {p0, v0}, Lcom/koushikdutta/async/dns/DnsResponse;->parseName(Lcom/koushikdutta/async/ByteBufferList;Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 98
    :cond_2
    if-ne v9, v7, :cond_3

    .line 99
    new-instance v7, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v7}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    .line 100
    .local v7, "txt":Lcom/koushikdutta/async/ByteBufferList;
    invoke-virtual {p0, v7, v12}, Lcom/koushikdutta/async/ByteBufferList;->get(Lcom/koushikdutta/async/ByteBufferList;I)V

    .line 101
    invoke-virtual {v5, v7}, Lcom/koushikdutta/async/dns/DnsResponse;->parseTxt(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 102
    .end local v7    # "txt":Lcom/koushikdutta/async/ByteBufferList;
    goto :goto_2

    .line 104
    :cond_3
    new-array v7, v12, [B

    invoke-virtual {p0, v7}, Lcom/koushikdutta/async/ByteBufferList;->get([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "type":I
    .end local v10    # "clazz":I
    .end local v11    # "ttl":I
    .end local v12    # "length":I
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 113
    .end local v6    # "i":I
    :cond_4
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_3
    if-ge v6, v3, :cond_5

    .line 114
    invoke-static {p0, v0}, Lcom/koushikdutta/async/dns/DnsResponse;->parseName(Lcom/koushikdutta/async/ByteBufferList;Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v8

    .line 116
    .restart local v8    # "name":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->getShort()S

    move-result v9

    .line 118
    .restart local v9    # "type":I
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->getShort()S

    move-result v10

    .line 120
    .restart local v10    # "clazz":I
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->getInt()I

    move-result v11

    .line 122
    .restart local v11    # "ttl":I
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->getShort()S

    move-result v12

    .line 124
    .restart local v12    # "length":I
    :try_start_1
    new-array v13, v12, [B

    invoke-virtual {p0, v13}, Lcom/koushikdutta/async/ByteBufferList;->get([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 128
    goto :goto_4

    .line 126
    :catch_1
    move-exception v13

    .line 113
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "type":I
    .end local v10    # "clazz":I
    .end local v11    # "ttl":I
    .end local v12    # "length":I
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 132
    .end local v6    # "i":I
    :cond_5
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_5
    if-ge v6, v4, :cond_7

    .line 133
    invoke-static {p0, v0}, Lcom/koushikdutta/async/dns/DnsResponse;->parseName(Lcom/koushikdutta/async/ByteBufferList;Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v8

    .line 135
    .restart local v8    # "name":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->getShort()S

    move-result v9

    .line 137
    .restart local v9    # "type":I
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->getShort()S

    move-result v10

    .line 139
    .restart local v10    # "clazz":I
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->getInt()I

    move-result v11

    .line 141
    .restart local v11    # "ttl":I
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->getShort()S

    move-result v12

    .line 143
    .restart local v12    # "length":I
    if-ne v9, v7, :cond_6

    .line 144
    :try_start_2
    new-instance v13, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v13}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    .line 145
    .local v13, "txt":Lcom/koushikdutta/async/ByteBufferList;
    invoke-virtual {p0, v13, v12}, Lcom/koushikdutta/async/ByteBufferList;->get(Lcom/koushikdutta/async/ByteBufferList;I)V

    .line 146
    invoke-virtual {v5, v13}, Lcom/koushikdutta/async/dns/DnsResponse;->parseTxt(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 147
    .end local v13    # "txt":Lcom/koushikdutta/async/ByteBufferList;
    goto :goto_6

    .line 149
    :cond_6
    new-array v13, v12, [B

    invoke-virtual {p0, v13}, Lcom/koushikdutta/async/ByteBufferList;->get([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 154
    :goto_6
    goto :goto_7

    .line 152
    :catch_2
    move-exception v13

    .line 132
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "type":I
    .end local v10    # "clazz":I
    .end local v11    # "ttl":I
    .end local v12    # "length":I
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 157
    .end local v6    # "i":I
    :cond_7
    return-object v5
.end method

.method private static parseName(Lcom/koushikdutta/async/ByteBufferList;Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 7
    .param p0, "bb"    # Lcom/koushikdutta/async/ByteBufferList;
    .param p1, "backReference"    # Ljava/nio/ByteBuffer;

    .line 22
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/ByteBufferList;->order(Ljava/nio/ByteOrder;)Lcom/koushikdutta/async/ByteBufferList;

    .line 23
    const-string v0, ""

    .line 26
    .local v0, "ret":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    move v2, v1

    .local v2, "len":I
    if-eqz v1, :cond_3

    .line 28
    and-int/lit16 v1, v2, 0xc0

    const-string v3, "."

    const/16 v4, 0xc0

    if-ne v1, v4, :cond_1

    .line 29
    and-int/lit8 v1, v2, 0x3f

    shl-int/lit8 v1, v1, 0x8

    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->get()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v1, v4

    .line 30
    .local v1, "offset":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 31
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 32
    :cond_0
    new-instance v3, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v3}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    .line 33
    .local v3, "sub":Lcom/koushikdutta/async/ByteBufferList;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 34
    .local v4, "duplicate":Ljava/nio/ByteBuffer;
    new-array v5, v1, [B

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 35
    invoke-virtual {v3, v4}, Lcom/koushikdutta/async/ByteBufferList;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    .line 36
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, p1}, Lcom/koushikdutta/async/dns/DnsResponse;->parseName(Lcom/koushikdutta/async/ByteBufferList;Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 39
    .end local v1    # "offset":I
    .end local v3    # "sub":Lcom/koushikdutta/async/ByteBufferList;
    .end local v4    # "duplicate":Ljava/nio/ByteBuffer;
    :cond_1
    new-array v1, v2, [B

    .line 40
    .local v1, "bytes":[B
    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/ByteBufferList;->get([B)V

    .line 41
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 42
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 44
    .end local v1    # "bytes":[B
    goto/16 :goto_0

    .line 46
    :cond_3
    return-object v0
.end method


# virtual methods
.method parseTxt(Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 7
    .param p1, "bb"    # Lcom/koushikdutta/async/ByteBufferList;

    .line 161
    :goto_0
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 163
    .local v0, "length":I
    new-array v1, v0, [B

    .line 164
    .local v1, "bytes":[B
    invoke-virtual {p1, v1}, Lcom/koushikdutta/async/ByteBufferList;->get([B)V

    .line 165
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 166
    .local v2, "string":Ljava/lang/String;
    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, "pair":[Ljava/lang/String;
    iget-object v4, p0, Lcom/koushikdutta/async/dns/DnsResponse;->txt:Lcom/koushikdutta/async/http/Multimap;

    const/4 v5, 0x0

    aget-object v5, v3, v5

    const/4 v6, 0x1

    aget-object v6, v3, v6

    invoke-virtual {v4, v5, v6}, Lcom/koushikdutta/async/http/Multimap;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .end local v0    # "length":I
    .end local v1    # "bytes":[B
    .end local v2    # "string":Ljava/lang/String;
    .end local v3    # "pair":[Ljava/lang/String;
    goto :goto_0

    .line 169
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 173
    const-string v0, "addresses:\n"

    .line 174
    .local v0, "ret":Ljava/lang/String;
    iget-object v1, p0, Lcom/koushikdutta/async/dns/DnsResponse;->addresses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "\n"

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 175
    .local v2, "address":Ljava/net/InetAddress;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v2    # "address":Ljava/net/InetAddress;
    goto :goto_0

    .line 176
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "names:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/koushikdutta/async/dns/DnsResponse;->names:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 178
    .local v2, "name":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v2    # "name":Ljava/lang/String;
    goto :goto_1

    .line 179
    :cond_1
    return-object v0
.end method
