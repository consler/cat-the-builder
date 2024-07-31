.class Lorg/apache/commons/collections4/functors/PrototypeFactory$PrototypeSerializationFactory;
.super Ljava/lang/Object;
.source "PrototypeFactory.java"

# interfaces
.implements Lorg/apache/commons/collections4/Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/functors/PrototypeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PrototypeSerializationFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/io/Serializable;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/Factory<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final iPrototype:Ljava/io/Serializable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/io/Serializable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 166
    .local p0, "this":Lorg/apache/commons/collections4/functors/PrototypeFactory$PrototypeSerializationFactory;, "Lorg/apache/commons/collections4/functors/PrototypeFactory$PrototypeSerializationFactory<TT;>;"
    .local p1, "prototype":Ljava/io/Serializable;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-object p1, p0, Lorg/apache/commons/collections4/functors/PrototypeFactory$PrototypeSerializationFactory;->iPrototype:Ljava/io/Serializable;

    .line 168
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/Serializable;Lorg/apache/commons/collections4/functors/PrototypeFactory$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/io/Serializable;
    .param p2, "x1"    # Lorg/apache/commons/collections4/functors/PrototypeFactory$1;

    .line 157
    .local p0, "this":Lorg/apache/commons/collections4/functors/PrototypeFactory$PrototypeSerializationFactory;, "Lorg/apache/commons/collections4/functors/PrototypeFactory$PrototypeSerializationFactory<TT;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/functors/PrototypeFactory$PrototypeSerializationFactory;-><init>(Ljava/io/Serializable;)V

    return-void
.end method


# virtual methods
.method public create()Ljava/io/Serializable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 178
    .local p0, "this":Lorg/apache/commons/collections4/functors/PrototypeFactory$PrototypeSerializationFactory;, "Lorg/apache/commons/collections4/functors/PrototypeFactory$PrototypeSerializationFactory<TT;>;"
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 179
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .line 181
    .local v1, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_0
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 182
    .local v2, "out":Ljava/io/ObjectOutputStream;
    iget-object v3, p0, Lorg/apache/commons/collections4/functors/PrototypeFactory$PrototypeSerializationFactory;->iPrototype:Ljava/io/Serializable;

    invoke-virtual {v2, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 184
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v1, v3

    .line 185
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 186
    .local v3, "in":Ljava/io/ObjectInputStream;
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/Serializable;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    nop

    .line 195
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 199
    goto :goto_0

    .line 197
    :catch_0
    move-exception v5

    .line 201
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 204
    goto :goto_1

    .line 202
    :catch_1
    move-exception v5

    .line 186
    :goto_1
    return-object v4

    .line 193
    .end local v2    # "out":Ljava/io/ObjectOutputStream;
    .end local v3    # "in":Ljava/io/ObjectInputStream;
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 190
    :catch_2
    move-exception v2

    .line 191
    .local v2, "ex":Ljava/io/IOException;
    :try_start_3
    new-instance v3, Lorg/apache/commons/collections4/FunctorException;

    invoke-direct {v3, v2}, Lorg/apache/commons/collections4/FunctorException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    throw v3

    .line 188
    .end local v2    # "ex":Ljava/io/IOException;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_3
    move-exception v2

    .line 189
    .local v2, "ex":Ljava/lang/ClassNotFoundException;
    new-instance v3, Lorg/apache/commons/collections4/FunctorException;

    invoke-direct {v3, v2}, Lorg/apache/commons/collections4/FunctorException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 194
    .end local v2    # "ex":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    :goto_2
    if-eqz v1, :cond_0

    .line 195
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    .line 197
    :catch_4
    move-exception v3

    goto :goto_4

    .line 199
    :cond_0
    :goto_3
    nop

    .line 201
    :goto_4
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 204
    goto :goto_5

    .line 202
    :catch_5
    move-exception v3

    .line 205
    :goto_5
    throw v2
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 157
    .local p0, "this":Lorg/apache/commons/collections4/functors/PrototypeFactory$PrototypeSerializationFactory;, "Lorg/apache/commons/collections4/functors/PrototypeFactory$PrototypeSerializationFactory<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/functors/PrototypeFactory$PrototypeSerializationFactory;->create()Ljava/io/Serializable;

    move-result-object v0

    return-object v0
.end method
