.class public Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;
.super Ljava/lang/Object;
.source "BinaryStreamReader.java"

# interfaces
.implements Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader$IdRegistry;
    }
.end annotation


# instance fields
.field private final depthState:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;

.field private final idRegistry:Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader$IdRegistry;

.field private final in:Ljava/io/DataInputStream;

.field private pushback:Lcom/thoughtworks/xstream/io/binary/Token;

.field private final tokenFormatter:Lcom/thoughtworks/xstream/io/binary/Token$Formatter;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->depthState:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;

    .line 38
    new-instance v0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader$IdRegistry;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader$IdRegistry;-><init>(Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader$1;)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->idRegistry:Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader$IdRegistry;

    .line 41
    new-instance v0, Lcom/thoughtworks/xstream/io/binary/Token$Formatter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/binary/Token$Formatter;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->tokenFormatter:Lcom/thoughtworks/xstream/io/binary/Token$Formatter;

    .line 44
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->in:Ljava/io/DataInputStream;

    .line 45
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->moveDown()V

    .line 46
    return-void
.end method

.method private readToken()Lcom/thoughtworks/xstream/io/binary/Token;
    .locals 5

    .line 151
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->pushback:Lcom/thoughtworks/xstream/io/binary/Token;

    if-nez v0, :cond_1

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->tokenFormatter:Lcom/thoughtworks/xstream/io/binary/Token$Formatter;

    iget-object v1, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/io/binary/Token$Formatter;->read(Ljava/io/DataInput;)Lcom/thoughtworks/xstream/io/binary/Token;

    move-result-object v0

    .line 154
    .local v0, "token":Lcom/thoughtworks/xstream/io/binary/Token;
    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/binary/Token;->getType()B

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 159
    return-object v0

    .line 156
    :cond_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->idRegistry:Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader$IdRegistry;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/binary/Token;->getId()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/binary/Token;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader$IdRegistry;->put(JLjava/lang/String;)V

    .line 157
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->readToken()Lcom/thoughtworks/xstream/io/binary/Token;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 161
    .end local v0    # "token":Lcom/thoughtworks/xstream/io/binary/Token;
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 165
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->pushback:Lcom/thoughtworks/xstream/io/binary/Token;

    .line 166
    .local v0, "result":Lcom/thoughtworks/xstream/io/binary/Token;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->pushback:Lcom/thoughtworks/xstream/io/binary/Token;

    .line 167
    return-object v0
.end method


# virtual methods
.method public appendErrors(Lcom/thoughtworks/xstream/converters/ErrorWriter;)V
    .locals 0
    .param p1, "errorWriter"    # Lcom/thoughtworks/xstream/converters/ErrorWriter;

    .line 201
    return-void
.end method

.method public close()V
    .locals 2

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    nop

    .line 186
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getAttribute(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 65
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->depthState:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;

    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->getAttribute(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->depthState:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;

    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeCount()I
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->depthState:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->getAttributeCount()I

    move-result v0

    return v0
.end method

.method public getAttributeName(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 73
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->depthState:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;

    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeNames()Ljava/util/Iterator;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->depthState:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->getAttributeNames()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->depthState:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->depthState:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasMoreChildren()Z
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->depthState:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->hasMoreChildren()Z

    move-result v0

    return v0
.end method

.method public moveDown()V
    .locals 7

    .line 81
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->depthState:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->push()V

    .line 82
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->readToken()Lcom/thoughtworks/xstream/io/binary/Token;

    move-result-object v0

    .line 83
    .local v0, "firstToken":Lcom/thoughtworks/xstream/io/binary/Token;
    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/binary/Token;->getType()B

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 85
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->depthState:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;

    iget-object v3, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->idRegistry:Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader$IdRegistry;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/binary/Token;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader$IdRegistry;->get(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->setName(Ljava/lang/String;)V

    .line 86
    nop

    .line 91
    :goto_0
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->readToken()Lcom/thoughtworks/xstream/io/binary/Token;

    move-result-object v1

    .line 92
    .local v1, "nextToken":Lcom/thoughtworks/xstream/io/binary/Token;
    invoke-virtual {v1}, Lcom/thoughtworks/xstream/io/binary/Token;->getType()B

    move-result v3

    if-eq v3, v2, :cond_3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    .line 97
    iget-object v3, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->depthState:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;

    invoke-virtual {v1}, Lcom/thoughtworks/xstream/io/binary/Token;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->setValue(Ljava/lang/String;)V

    .line 98
    goto :goto_1

    .line 108
    :cond_0
    new-instance v2, Lcom/thoughtworks/xstream/io/StreamException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Unexpected token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 94
    :cond_1
    iget-object v3, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->depthState:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;

    iget-object v4, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->idRegistry:Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader$IdRegistry;

    invoke-virtual {v1}, Lcom/thoughtworks/xstream/io/binary/Token;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader$IdRegistry;->get(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/thoughtworks/xstream/io/binary/Token;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    nop

    .line 110
    .end local v1    # "nextToken":Lcom/thoughtworks/xstream/io/binary/Token;
    :goto_1
    goto :goto_0

    .line 100
    .restart local v1    # "nextToken":Lcom/thoughtworks/xstream/io/binary/Token;
    :cond_2
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->depthState:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->setHasMoreChildren(Z)V

    .line 101
    invoke-virtual {p0, v1}, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->pushBack(Lcom/thoughtworks/xstream/io/binary/Token;)V

    .line 102
    return-void

    .line 104
    :cond_3
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->depthState:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->setHasMoreChildren(Z)V

    .line 105
    invoke-virtual {p0, v1}, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->pushBack(Lcom/thoughtworks/xstream/io/binary/Token;)V

    .line 106
    return-void

    .line 88
    .end local v1    # "nextToken":Lcom/thoughtworks/xstream/io/binary/Token;
    :cond_4
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    const-string v2, "Expected StartNode"

    invoke-direct {v1, v2}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public moveUp()V
    .locals 5

    .line 114
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->depthState:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->pop()V

    .line 116
    const/4 v0, 0x0

    .line 119
    .local v0, "depth":I
    :goto_0
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->readToken()Lcom/thoughtworks/xstream/io/binary/Token;

    move-result-object v1

    .line 120
    .local v1, "nextToken":Lcom/thoughtworks/xstream/io/binary/Token;
    invoke-virtual {v1}, Lcom/thoughtworks/xstream/io/binary/Token;->getType()B

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    const/4 v4, 0x4

    if-eq v2, v4, :cond_0

    goto :goto_2

    .line 122
    :cond_0
    if-nez v0, :cond_3

    .line 123
    nop

    .line 136
    .end local v1    # "nextToken":Lcom/thoughtworks/xstream/io/binary/Token;
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->readToken()Lcom/thoughtworks/xstream/io/binary/Token;

    move-result-object v1

    .line 137
    .restart local v1    # "nextToken":Lcom/thoughtworks/xstream/io/binary/Token;
    invoke-virtual {v1}, Lcom/thoughtworks/xstream/io/binary/Token;->getType()B

    move-result v2

    if-eq v2, v3, :cond_2

    if-ne v2, v4, :cond_1

    .line 139
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->depthState:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->setHasMoreChildren(Z)V

    .line 140
    goto :goto_1

    .line 145
    :cond_1
    new-instance v2, Lcom/thoughtworks/xstream/io/StreamException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Unexpected token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 142
    :cond_2
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->depthState:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->setHasMoreChildren(Z)V

    .line 143
    nop

    .line 147
    :goto_1
    invoke-virtual {p0, v1}, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->pushBack(Lcom/thoughtworks/xstream/io/binary/Token;)V

    .line 148
    return-void

    .line 125
    :cond_3
    add-int/lit8 v0, v0, -0x1

    .line 127
    goto :goto_2

    .line 129
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 130
    nop

    .line 134
    .end local v1    # "nextToken":Lcom/thoughtworks/xstream/io/binary/Token;
    :goto_2
    goto :goto_0
.end method

.method public peekNextChild()Ljava/lang/String;
    .locals 3

    .line 189
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->depthState:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->hasMoreChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->idRegistry:Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader$IdRegistry;

    iget-object v1, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->pushback:Lcom/thoughtworks/xstream/io/binary/Token;

    invoke-virtual {v1}, Lcom/thoughtworks/xstream/io/binary/Token;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader$IdRegistry;->get(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 192
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public pushBack(Lcom/thoughtworks/xstream/io/binary/Token;)V
    .locals 2
    .param p1, "token"    # Lcom/thoughtworks/xstream/io/binary/Token;

    .line 172
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->pushback:Lcom/thoughtworks/xstream/io/binary/Token;

    if-nez v0, :cond_0

    .line 173
    iput-object p1, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->pushback:Lcom/thoughtworks/xstream/io/binary/Token;

    .line 178
    return-void

    .line 176
    :cond_0
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Cannot push more than one token back"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public underlyingReader()Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 0

    .line 196
    return-object p0
.end method
