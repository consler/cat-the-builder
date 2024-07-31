.class public Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;
.super Ljava/io/ObjectInputStream;
.source "CustomObjectInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$CustomGetField;,
        Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;
    }
.end annotation


# static fields
.field private static final DATA_HOLDER_KEY:Ljava/lang/String;

.field static synthetic class$com$thoughtworks$xstream$core$util$CustomObjectInputStream:Ljava/lang/Class;


# instance fields
.field private callbacks:Lcom/thoughtworks/xstream/core/util/FastStack;

.field private final classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    sget-object v0, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->class$com$thoughtworks$xstream$core$util$CustomObjectInputStream:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "com.thoughtworks.xstream.core.util.CustomObjectInputStream"

    invoke-static {v0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->class$com$thoughtworks$xstream$core$util$CustomObjectInputStream:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->DATA_HOLDER_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;Lcom/thoughtworks/xstream/core/ClassLoaderReference;)V
    .locals 2
    .param p1, "callback"    # Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;
    .param p2, "classLoaderReference"    # Lcom/thoughtworks/xstream/core/ClassLoaderReference;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Ljava/io/ObjectInputStream;-><init>()V

    .line 30
    new-instance v0, Lcom/thoughtworks/xstream/core/util/FastStack;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/core/util/FastStack;-><init>(I)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->callbacks:Lcom/thoughtworks/xstream/core/util/FastStack;

    .line 82
    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/core/util/FastStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iput-object p2, p0, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    .line 84
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "callback"    # Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 90
    new-instance v0, Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    invoke-direct {v0, p2}, Lcom/thoughtworks/xstream/core/ClassLoaderReference;-><init>(Ljava/lang/ClassLoader;)V

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;-><init>(Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;Lcom/thoughtworks/xstream/core/ClassLoaderReference;)V

    .line 91
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 33
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method

.method public static getInstance(Lcom/thoughtworks/xstream/converters/DataHolder;Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;)Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;
    .locals 1
    .param p0, "whereFrom"    # Lcom/thoughtworks/xstream/converters/DataHolder;
    .param p1, "callback"    # Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;

    .line 47
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/ClassLoader;

    invoke-static {p0, p1, v0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->getInstance(Lcom/thoughtworks/xstream/converters/DataHolder;Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;Ljava/lang/ClassLoader;)Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Lcom/thoughtworks/xstream/converters/DataHolder;Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;Lcom/thoughtworks/xstream/core/ClassLoaderReference;)Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;
    .locals 4
    .param p0, "whereFrom"    # Lcom/thoughtworks/xstream/converters/DataHolder;
    .param p1, "callback"    # Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;
    .param p2, "classLoaderReference"    # Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    const-class v0, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;

    monitor-enter v0

    .line 59
    :try_start_0
    sget-object v1, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->DATA_HOLDER_KEY:Ljava/lang/String;

    invoke-interface {p0, v1}, Lcom/thoughtworks/xstream/converters/DataHolder;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;

    .line 60
    .local v1, "result":Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;
    if-nez v1, :cond_0

    .line 61
    new-instance v2, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;

    invoke-direct {v2, p1, p2}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;-><init>(Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;Lcom/thoughtworks/xstream/core/ClassLoaderReference;)V

    move-object v1, v2

    .line 62
    sget-object v2, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->DATA_HOLDER_KEY:Ljava/lang/String;

    invoke-interface {p0, v2, v1}, Lcom/thoughtworks/xstream/converters/DataHolder;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {v1, p1}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->pushCallback(Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :goto_0
    monitor-exit v0

    return-object v1

    .line 58
    .end local v1    # "result":Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;
    .end local p0    # "whereFrom":Lcom/thoughtworks/xstream/converters/DataHolder;
    .end local p1    # "callback":Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;
    .end local p2    # "classLoaderReference":Lcom/thoughtworks/xstream/core/ClassLoaderReference;
    :catchall_0
    move-exception p0

    goto :goto_1

    .line 69
    .restart local p0    # "whereFrom":Lcom/thoughtworks/xstream/converters/DataHolder;
    .restart local p1    # "callback":Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;
    .restart local p2    # "classLoaderReference":Lcom/thoughtworks/xstream/core/ClassLoaderReference;
    :catch_0
    move-exception v1

    .line 70
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v2, Lcom/thoughtworks/xstream/io/StreamException;

    const-string v3, "Cannot create CustomObjectStream"

    invoke-direct {v2, v3, v1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 67
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 68
    .local v1, "e":Ljava/lang/SecurityException;
    new-instance v2, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    const-string v3, "Cannot create CustomObjectStream"

    invoke-direct {v2, v3, v1}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    .end local v1    # "e":Ljava/lang/SecurityException;
    .end local p0    # "whereFrom":Lcom/thoughtworks/xstream/converters/DataHolder;
    .end local p1    # "callback":Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;
    .end local p2    # "classLoaderReference":Lcom/thoughtworks/xstream/core/ClassLoaderReference;
    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getInstance(Lcom/thoughtworks/xstream/converters/DataHolder;Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;Ljava/lang/ClassLoader;)Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;
    .locals 2
    .param p0, "whereFrom"    # Lcom/thoughtworks/xstream/converters/DataHolder;
    .param p1, "callback"    # Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;

    const-class v0, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;

    monitor-enter v0

    .line 54
    :try_start_0
    new-instance v1, Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    invoke-direct {v1, p2}, Lcom/thoughtworks/xstream/core/ClassLoaderReference;-><init>(Ljava/lang/ClassLoader;)V

    invoke-static {p0, p1, v1}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->getInstance(Lcom/thoughtworks/xstream/converters/DataHolder;Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;Lcom/thoughtworks/xstream/core/ClassLoaderReference;)Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 54
    .end local p0    # "whereFrom":Lcom/thoughtworks/xstream/converters/DataHolder;
    .end local p1    # "callback":Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;
    .end local p2    # "classLoader":Ljava/lang/ClassLoader;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public available()I
    .locals 1

    .line 273
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->peekCallback()Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;->close()V

    .line 268
    return-void
.end method

.method public defaultReadObject()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->peekCallback()Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;->defaultReadObject()V

    .line 120
    return-void
.end method

.method public mark(I)V
    .locals 1
    .param p1, "readlimit"    # I

    .line 289
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    .line 297
    const/4 v0, 0x0

    return v0
.end method

.method public peekCallback()Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->callbacks:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/FastStack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;

    return-object v0
.end method

.method public popCallback()Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->callbacks:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/FastStack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;

    return-object v0
.end method

.method public pushCallback(Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;

    .line 97
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->callbacks:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/core/util/FastStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    return-void
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->readUnsignedByte()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 4
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->peekCallback()Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;->readFromStream()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    .line 189
    .local v0, "b":[B
    array-length v1, v0

    if-ne v1, p3, :cond_0

    .line 192
    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    return p3

    .line 190
    :cond_0
    new-instance v1, Ljava/io/StreamCorruptedException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, " bytes from stream, got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readBoolean()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->peekCallback()Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;->readFromStream()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public readByte()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->peekCallback()Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;->readFromStream()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method public readChar()C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->peekCallback()Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;->readFromStream()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    return v0
.end method

.method public readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->peekCallback()Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;->readFromStream()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public readFields()Ljava/io/ObjectInputStream$GetField;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    new-instance v0, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$CustomGetField;

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->peekCallback()Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;->readFieldsFromStream()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$CustomGetField;-><init>(Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;Ljava/util/Map;)V

    return-object v0
.end method

.method public readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->peekCallback()Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;->readFromStream()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public readFully([B)V
    .locals 2
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->readFully([BII)V

    .line 176
    return-void
.end method

.method public readFully([BII)V
    .locals 2
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->peekCallback()Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;->readFromStream()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    .line 180
    .local v0, "b":[B
    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    return-void
.end method

.method public readInt()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->peekCallback()Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;->readFromStream()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 1

    .line 277
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public readLong()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->peekCallback()Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;->readFromStream()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method protected readObjectOverride()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->peekCallback()Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;->readFromStream()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readShort()S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->peekCallback()Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;->readFromStream()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    return v0
.end method

.method public readUTF()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->peekCallback()Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;->readFromStream()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public readUnshared()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 127
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readUnsignedByte()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->peekCallback()Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;->readFromStream()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->intValue()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public readUnsignedShort()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->peekCallback()Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;->readFromStream()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->intValue()I

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public registerValidation(Ljava/io/ObjectInputValidation;I)V
    .locals 1
    .param p1, "validation"    # Ljava/io/ObjectInputValidation;
    .param p2, "priority"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/NotActiveException;,
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 263
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->peekCallback()Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;->registerValidation(Ljava/io/ObjectInputValidation;I)V

    .line 264
    return-void
.end method

.method public reset()V
    .locals 1

    .line 293
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;
    .locals 3
    .param p1, "desc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream;->classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/ClassLoaderReference;->getReference()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 111
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    if-nez v0, :cond_0

    .line 112
    invoke-super {p0, p1}, Ljava/io/ObjectInputStream;->resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;

    move-result-object v1

    return-object v1

    .line 114
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    return-object v1
.end method

.method public skip(J)J
    .locals 1
    .param p1, "n"    # J

    .line 285
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public skipBytes(I)I
    .locals 1
    .param p1, "len"    # I

    .line 281
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
