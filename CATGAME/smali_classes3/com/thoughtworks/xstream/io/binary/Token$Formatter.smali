.class public Lcom/thoughtworks/xstream/io/binary/Token$Formatter;
.super Ljava/lang/Object;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thoughtworks/xstream/io/binary/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Formatter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private contructToken(B)Lcom/thoughtworks/xstream/io/binary/Token;
    .locals 2
    .param p1, "type"    # B

    .line 191
    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 201
    new-instance v0, Lcom/thoughtworks/xstream/io/binary/Token$Value;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/binary/Token$Value;-><init>()V

    return-object v0

    .line 203
    :cond_0
    new-instance v0, Lcom/thoughtworks/xstream/io/StreamException;

    const-string v1, "Unknown token type"

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_1
    new-instance v0, Lcom/thoughtworks/xstream/io/binary/Token$Attribute;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/binary/Token$Attribute;-><init>()V

    return-object v0

    .line 199
    :cond_2
    new-instance v0, Lcom/thoughtworks/xstream/io/binary/Token$EndNode;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/binary/Token$EndNode;-><init>()V

    return-object v0

    .line 193
    :cond_3
    new-instance v0, Lcom/thoughtworks/xstream/io/binary/Token$StartNode;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/binary/Token$StartNode;-><init>()V

    return-object v0

    .line 195
    :cond_4
    new-instance v0, Lcom/thoughtworks/xstream/io/binary/Token$MapIdToValue;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/binary/Token$MapIdToValue;-><init>()V

    return-object v0
.end method


# virtual methods
.method public read(Ljava/io/DataInput;)Lcom/thoughtworks/xstream/io/binary/Token;
    .locals 4
    .param p1, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v0

    .line 183
    .local v0, "nextByte":B
    and-int/lit8 v1, v0, 0x7

    int-to-byte v1, v1

    .line 184
    .local v1, "type":B
    and-int/lit8 v2, v0, 0x38

    int-to-byte v2, v2

    .line 185
    .local v2, "idType":B
    invoke-direct {p0, v1}, Lcom/thoughtworks/xstream/io/binary/Token$Formatter;->contructToken(B)Lcom/thoughtworks/xstream/io/binary/Token;

    move-result-object v3

    .line 186
    .local v3, "token":Lcom/thoughtworks/xstream/io/binary/Token;
    invoke-virtual {v3, p1, v2}, Lcom/thoughtworks/xstream/io/binary/Token;->readFrom(Ljava/io/DataInput;B)V

    .line 187
    return-object v3
.end method

.method public write(Ljava/io/DataOutput;Lcom/thoughtworks/xstream/io/binary/Token;)V
    .locals 4
    .param p1, "out"    # Ljava/io/DataOutput;
    .param p2, "token"    # Lcom/thoughtworks/xstream/io/binary/Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    invoke-virtual {p2}, Lcom/thoughtworks/xstream/io/binary/Token;->getId()J

    move-result-wide v0

    .line 168
    .local v0, "id":J
    const-wide/16 v2, 0xff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 169
    const/16 v2, 0x8

    .local v2, "idType":B
    goto :goto_0

    .line 170
    .end local v2    # "idType":B
    :cond_0
    const-wide/32 v2, 0xffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 171
    const/16 v2, 0x10

    .restart local v2    # "idType":B
    goto :goto_0

    .line 172
    .end local v2    # "idType":B
    :cond_1
    const-wide v2, 0xffffffffL

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    .line 173
    const/16 v2, 0x18

    .restart local v2    # "idType":B
    goto :goto_0

    .line 175
    .end local v2    # "idType":B
    :cond_2
    const/16 v2, 0x20

    .line 177
    .restart local v2    # "idType":B
    :goto_0
    invoke-virtual {p2}, Lcom/thoughtworks/xstream/io/binary/Token;->getType()B

    move-result v3

    add-int/2addr v3, v2

    invoke-interface {p1, v3}, Ljava/io/DataOutput;->write(I)V

    .line 178
    invoke-virtual {p2, p1, v2}, Lcom/thoughtworks/xstream/io/binary/Token;->writeTo(Ljava/io/DataOutput;B)V

    .line 179
    return-void
.end method
