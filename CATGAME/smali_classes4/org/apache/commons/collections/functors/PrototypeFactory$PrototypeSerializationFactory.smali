.class Lorg/apache/commons/collections/functors/PrototypeFactory$PrototypeSerializationFactory;
.super Ljava/lang/Object;
.source "PrototypeFactory.java"

# interfaces
.implements Lorg/apache/commons/collections/Factory;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/functors/PrototypeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PrototypeSerializationFactory"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x78ce4155b63c4f51L


# instance fields
.field private final iPrototype:Ljava/io/Serializable;


# direct methods
.method private constructor <init>(Ljava/io/Serializable;)V
    .locals 0
    .param p1, "prototype"    # Ljava/io/Serializable;

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-object p1, p0, Lorg/apache/commons/collections/functors/PrototypeFactory$PrototypeSerializationFactory;->iPrototype:Ljava/io/Serializable;

    .line 196
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/Serializable;Lorg/apache/commons/collections/functors/PrototypeFactory$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/io/Serializable;
    .param p2, "x1"    # Lorg/apache/commons/collections/functors/PrototypeFactory$1;

    .line 182
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/functors/PrototypeFactory$PrototypeSerializationFactory;-><init>(Ljava/io/Serializable;)V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    sget-object v0, Lorg/apache/commons/collections/functors/PrototypeFactory;->class$org$apache$commons$collections$functors$PrototypeFactory$PrototypeSerializationFactory:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.commons.collections.functors.PrototypeFactory$PrototypeSerializationFactory"

    invoke-static {v0}, Lorg/apache/commons/collections/functors/PrototypeFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/collections/functors/PrototypeFactory;->class$org$apache$commons$collections$functors$PrototypeFactory$PrototypeSerializationFactory:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/commons/collections/functors/PrototypeFactory;->class$org$apache$commons$collections$functors$PrototypeFactory$PrototypeSerializationFactory:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Lorg/apache/commons/collections/functors/FunctorUtils;->checkUnsafeSerialization(Ljava/lang/Class;)V

    .line 251
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 252
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "os"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 241
    sget-object v0, Lorg/apache/commons/collections/functors/PrototypeFactory;->class$org$apache$commons$collections$functors$PrototypeFactory$PrototypeSerializationFactory:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.commons.collections.functors.PrototypeFactory$PrototypeSerializationFactory"

    invoke-static {v0}, Lorg/apache/commons/collections/functors/PrototypeFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/collections/functors/PrototypeFactory;->class$org$apache$commons$collections$functors$PrototypeFactory$PrototypeSerializationFactory:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/commons/collections/functors/PrototypeFactory;->class$org$apache$commons$collections$functors$PrototypeFactory$PrototypeSerializationFactory:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Lorg/apache/commons/collections/functors/FunctorUtils;->checkUnsafeSerialization(Ljava/lang/Class;)V

    .line 242
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 243
    return-void
.end method


# virtual methods
.method public create()Ljava/lang/Object;
    .locals 6

    .line 204
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 205
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .line 207
    .local v1, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_0
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 208
    .local v2, "out":Ljava/io/ObjectOutputStream;
    iget-object v3, p0, Lorg/apache/commons/collections/functors/PrototypeFactory$PrototypeSerializationFactory;->iPrototype:Ljava/io/Serializable;

    invoke-virtual {v2, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 210
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v1, v3

    .line 211
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 212
    .local v3, "in":Ljava/io/ObjectInputStream;
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    nop

    .line 221
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 225
    goto :goto_0

    .line 223
    :catch_0
    move-exception v5

    .line 227
    :goto_0
    nop

    .line 228
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 232
    goto :goto_1

    .line 230
    :catch_1
    move-exception v5

    .line 232
    :goto_1
    return-object v4

    .line 219
    .end local v2    # "out":Ljava/io/ObjectOutputStream;
    .end local v3    # "in":Ljava/io/ObjectInputStream;
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 216
    :catch_2
    move-exception v2

    .line 217
    .local v2, "ex":Ljava/io/IOException;
    :try_start_3
    new-instance v3, Lorg/apache/commons/collections/FunctorException;

    invoke-direct {v3, v2}, Lorg/apache/commons/collections/FunctorException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    throw v3

    .line 214
    .end local v2    # "ex":Ljava/io/IOException;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_3
    move-exception v2

    .line 215
    .local v2, "ex":Ljava/lang/ClassNotFoundException;
    new-instance v3, Lorg/apache/commons/collections/FunctorException;

    invoke-direct {v3, v2}, Lorg/apache/commons/collections/FunctorException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 220
    .end local v2    # "ex":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    :goto_2
    if-eqz v1, :cond_0

    .line 221
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    .line 223
    :catch_4
    move-exception v3

    goto :goto_4

    .line 225
    :cond_0
    :goto_3
    nop

    .line 227
    :goto_4
    nop

    .line 228
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 232
    goto :goto_5

    .line 230
    :catch_5
    move-exception v3

    .line 232
    :goto_5
    throw v2
.end method
