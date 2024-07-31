.class public Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;
.super Ljava/lang/Object;
.source "LazyFieldLite.java"


# static fields
.field private static final EMPTY_REGISTRY:Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;


# instance fields
.field private delayedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

.field private extensionRegistry:Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

.field private volatile memoizedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

.field protected volatile value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->EMPTY_REGISTRY:Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .locals 0
    .param p1, "extensionRegistry"    # Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;
    .param p2, "bytes"    # Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-static {p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->checkArguments(Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    .line 120
    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->extensionRegistry:Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    .line 121
    iput-object p2, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->delayedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 122
    return-void
.end method

.method private static checkArguments(Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .locals 2
    .param p0, "extensionRegistry"    # Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;
    .param p1, "bytes"    # Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 434
    if-eqz p0, :cond_1

    .line 437
    if-eqz p1, :cond_0

    .line 440
    return-void

    .line 438
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "found null ByteString"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 435
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "found null ExtensionRegistry"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromValue(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;
    .locals 1
    .param p0, "value"    # Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    .line 132
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;

    invoke-direct {v0}, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;-><init>()V

    .line 133
    .local v0, "lf":Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;
    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->setValue(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    .line 134
    return-object v0
.end method

.method private static mergeValueAndBytes(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .locals 1
    .param p0, "value"    # Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .param p1, "otherBytes"    # Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .param p2, "extensionRegistry"    # Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    .line 333
    :try_start_0
    invoke-interface {p0}, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;->toBuilder()Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;->mergeFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 334
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e":Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->delayedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 193
    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    .line 194
    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->memoizedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 195
    return-void
.end method

.method public containsDefaultInstance()Z
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->memoizedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->EMPTY:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->delayedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->EMPTY:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected ensureInitialized(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)V
    .locals 3
    .param p1, "defaultInstance"    # Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    .line 406
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    if-eqz v0, :cond_0

    .line 407
    return-void

    .line 409
    :cond_0
    monitor-enter p0

    .line 410
    :try_start_0
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    if-eqz v0, :cond_1

    .line 411
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 414
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->delayedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    if-eqz v0, :cond_2

    .line 416
    nop

    .line 417
    invoke-interface {p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;->getParserForType()Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-result-object v0

    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->delayedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->extensionRegistry:Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    invoke-interface {v0, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/Parser;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    .line 418
    .local v0, "parsedValue":Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    .line 419
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->delayedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    iput-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->memoizedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 420
    .end local v0    # "parsedValue":Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    goto :goto_0

    .line 421
    :cond_2
    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    .line 422
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->EMPTY:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->memoizedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    :try_end_1
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 429
    :goto_0
    goto :goto_1

    .line 424
    :catch_0
    move-exception v0

    .line 427
    .local v0, "e":Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
    :try_start_2
    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    .line 428
    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->EMPTY:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    iput-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->memoizedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 430
    .end local v0    # "e":Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
    :goto_1
    monitor-exit p0

    .line 431
    return-void

    .line 430
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 139
    if-ne p0, p1, :cond_0

    .line 140
    const/4 v0, 0x1

    return v0

    .line 143
    :cond_0
    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;

    if-nez v0, :cond_1

    .line 144
    const/4 v0, 0x0

    return v0

    .line 147
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;

    .line 153
    .local v0, "other":Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    .line 154
    .local v1, "value1":Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    iget-object v2, v0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    .line 155
    .local v2, "value2":Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    if-nez v1, :cond_2

    if-nez v2, :cond_2

    .line 156
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->toByteString()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->toByteString()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3

    .line 157
    :cond_2
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    .line 158
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3

    .line 159
    :cond_3
    if-eqz v1, :cond_4

    .line 160
    invoke-interface {v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;->getDefaultInstanceForType()Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->getValue(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3

    .line 162
    :cond_4
    invoke-interface {v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;->getDefaultInstanceForType()Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->getValue(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method public getSerializedSize()I
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->memoizedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->memoizedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->size()I

    move-result v0

    return v0

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->delayedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    if-eqz v0, :cond_1

    .line 360
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->size()I

    move-result v0

    return v0

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    if-eqz v0, :cond_2

    .line 362
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    return v0

    .line 364
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public getValue(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .locals 1
    .param p1, "defaultInstance"    # Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    .line 223
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->ensureInitialized(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)V

    .line 224
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 171
    const/4 v0, 0x1

    return v0
.end method

.method public merge(Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;)V
    .locals 3
    .param p1, "other"    # Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;

    .line 250
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->containsDefaultInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    return-void

    .line 254
    :cond_0
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->containsDefaultInstance()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->set(Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;)V

    .line 256
    return-void

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->extensionRegistry:Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    if-nez v0, :cond_2

    .line 262
    iget-object v0, p1, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->extensionRegistry:Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->extensionRegistry:Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    .line 270
    :cond_2
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->delayedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    if-eqz v0, :cond_3

    iget-object v1, p1, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->delayedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    if-eqz v1, :cond_3

    .line 271
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->concat(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->delayedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 272
    return-void

    .line 278
    :cond_3
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    if-eqz v0, :cond_4

    .line 279
    iget-object v0, p1, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->delayedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->extensionRegistry:Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->mergeValueAndBytes(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->setValue(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    .line 280
    return-void

    .line 281
    :cond_4
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    if-nez v0, :cond_5

    .line 282
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    iget-object v1, p1, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->delayedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    iget-object v2, p1, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->extensionRegistry:Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->mergeValueAndBytes(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->setValue(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    .line 283
    return-void

    .line 287
    :cond_5
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;->toBuilder()Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;

    move-result-object v0

    iget-object v1, p1, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    invoke-interface {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;->mergeFrom(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->setValue(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    .line 288
    return-void
.end method

.method public mergeFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)V
    .locals 2
    .param p1, "input"    # Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 298
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->containsDefaultInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->setByteString(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)V

    .line 300
    return-void

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->extensionRegistry:Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    if-nez v0, :cond_1

    .line 306
    iput-object p2, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->extensionRegistry:Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->delayedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    if-eqz v0, :cond_2

    .line 315
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->readBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->concat(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->extensionRegistry:Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    invoke-virtual {p0, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->setByteString(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)V

    .line 316
    return-void

    .line 323
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;->toBuilder()Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;->mergeFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->setValue(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    :try_end_0
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    goto :goto_0

    .line 324
    :catch_0
    move-exception v0

    .line 328
    :goto_0
    return-void
.end method

.method public set(Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;)V
    .locals 1
    .param p1, "other"    # Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;

    .line 204
    iget-object v0, p1, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->delayedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->delayedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 205
    iget-object v0, p1, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    .line 206
    iget-object v0, p1, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->memoizedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->memoizedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 211
    iget-object v0, p1, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->extensionRegistry:Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    if-eqz v0, :cond_0

    .line 212
    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->extensionRegistry:Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    .line 214
    :cond_0
    return-void
.end method

.method public setByteString(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)V
    .locals 1
    .param p1, "bytes"    # Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .param p2, "extensionRegistry"    # Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    .line 343
    invoke-static {p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->checkArguments(Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    .line 344
    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->delayedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 345
    iput-object p2, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->extensionRegistry:Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    .line 346
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    .line 347
    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->memoizedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 348
    return-void
.end method

.method public setValue(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .locals 2
    .param p1, "value"    # Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    .line 234
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    .line 235
    .local v0, "originalValue":Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->delayedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 236
    iput-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->memoizedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 237
    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    .line 238
    return-object v0
.end method

.method public toByteString()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->memoizedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->memoizedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    return-object v0

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->delayedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    if-eqz v0, :cond_1

    .line 376
    return-object v0

    .line 378
    :cond_1
    monitor-enter p0

    .line 379
    :try_start_0
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->memoizedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    if-eqz v0, :cond_2

    .line 380
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->memoizedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    monitor-exit p0

    return-object v0

    .line 382
    :cond_2
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    if-nez v0, :cond_3

    .line 383
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->EMPTY:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->memoizedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    goto :goto_0

    .line 385
    :cond_3
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;->toByteString()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->memoizedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    .line 387
    :goto_0
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->memoizedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    monitor-exit p0

    return-object v0

    .line 388
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method writeTo(Lcom/google/crypto/tink/shaded/protobuf/Writer;I)V
    .locals 1
    .param p1, "writer"    # Lcom/google/crypto/tink/shaded/protobuf/Writer;
    .param p2, "fieldNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 393
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->memoizedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->memoizedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    invoke-interface {p1, p2, v0}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeBytes(ILcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    goto :goto_0

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->delayedBytes:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    if-eqz v0, :cond_1

    .line 396
    invoke-interface {p1, p2, v0}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeBytes(ILcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    goto :goto_0

    .line 397
    :cond_1
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    if-eqz v0, :cond_2

    .line 398
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/LazyFieldLite;->value:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    invoke-interface {p1, p2, v0}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 400
    :cond_2
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->EMPTY:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    invoke-interface {p1, p2, v0}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeBytes(ILcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    .line 402
    :goto_0
    return-void
.end method
