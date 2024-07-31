.class Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming$AesCtrHmacStreamDecrypter;
.super Ljava/lang/Object;
.source "AesCtrHmacStreaming.java"

# interfaces
.implements Lcom/google/crypto/tink/subtle/StreamSegmentDecrypter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AesCtrHmacStreamDecrypter"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private cipher:Ljavax/crypto/Cipher;

.field private hmacKeySpec:Ljavax/crypto/spec/SecretKeySpec;

.field private keySpec:Ljavax/crypto/spec/SecretKeySpec;

.field private mac:Ljavax/crypto/Mac;

.field private noncePrefix:[B

.field final synthetic this$0:Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 335
    const-class v0, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;

    return-void
.end method

.method constructor <init>(Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 342
    iput-object p1, p0, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming$AesCtrHmacStreamDecrypter;->this$0:Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized decryptSegment(Ljava/nio/ByteBuffer;IZLjava/nio/ByteBuffer;)V
    .locals 17
    .param p1, "ciphertext"    # Ljava/nio/ByteBuffer;
    .param p2, "segmentNr"    # I
    .param p3, "isLastSegment"    # Z
    .param p4, "plaintext"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ciphertext",
            "segmentNr",
            "isLastSegment",
            "plaintext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    .line 371
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 372
    .local v2, "position":I
    iget-object v3, v1, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming$AesCtrHmacStreamDecrypter;->this$0:Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;

    iget-object v4, v1, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming$AesCtrHmacStreamDecrypter;->noncePrefix:[B

    move/from16 v5, p2

    int-to-long v6, v5

    move/from16 v8, p3

    invoke-static {v3, v4, v6, v7, v8}, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;->access$700(Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;[BJZ)[B

    move-result-object v3

    .line 373
    .local v3, "nonce":[B
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    .line 374
    .local v4, "ctLength":I
    iget-object v6, v1, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming$AesCtrHmacStreamDecrypter;->this$0:Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;

    invoke-static {v6}, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;->access$800(Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;)I

    move-result v6

    if-lt v4, v6, :cond_1

    .line 377
    iget-object v6, v1, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming$AesCtrHmacStreamDecrypter;->this$0:Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;

    invoke-static {v6}, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;->access$800(Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;)I

    move-result v6

    sub-int v6, v4, v6

    .line 378
    .local v6, "ptLength":I
    add-int v7, v2, v6

    .line 379
    .local v7, "startOfTag":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 380
    .local v9, "ct":Ljava/nio/ByteBuffer;
    invoke-virtual {v9, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 381
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 382
    .local v10, "tagBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v10, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 384
    nop

    .line 385
    nop

    .line 386
    iget-object v11, v1, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming$AesCtrHmacStreamDecrypter;->mac:Ljavax/crypto/Mac;

    iget-object v12, v1, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming$AesCtrHmacStreamDecrypter;->hmacKeySpec:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v11, v12}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 387
    iget-object v11, v1, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming$AesCtrHmacStreamDecrypter;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v11, v3}, Ljavax/crypto/Mac;->update([B)V

    .line 388
    iget-object v11, v1, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming$AesCtrHmacStreamDecrypter;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v11, v9}, Ljavax/crypto/Mac;->update(Ljava/nio/ByteBuffer;)V

    .line 389
    iget-object v11, v1, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming$AesCtrHmacStreamDecrypter;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v11}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v11

    .line 390
    .local v11, "tag":[B
    iget-object v12, v1, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming$AesCtrHmacStreamDecrypter;->this$0:Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;

    invoke-static {v12}, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;->access$800(Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;)I

    move-result v12

    invoke-static {v11, v12}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v12

    move-object v11, v12

    .line 391
    iget-object v12, v1, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming$AesCtrHmacStreamDecrypter;->this$0:Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;

    invoke-static {v12}, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;->access$800(Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;)I

    move-result v12

    new-array v12, v12, [B

    .line 392
    .local v12, "expectedTag":[B
    nop

    .line 393
    invoke-virtual {v10, v12}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 394
    nop

    .line 395
    invoke-static {v12, v11}, Lcom/google/crypto/tink/subtle/Bytes;->equal([B[B)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 399
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 400
    iget-object v13, v1, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming$AesCtrHmacStreamDecrypter;->cipher:Ljavax/crypto/Cipher;

    iget-object v15, v1, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming$AesCtrHmacStreamDecrypter;->keySpec:Ljavax/crypto/spec/SecretKeySpec;

    new-instance v14, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v14, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    move/from16 v16, v2

    const/4 v2, 0x1

    .end local v2    # "position":I
    .local v16, "position":I
    invoke-virtual {v13, v2, v15, v14}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 401
    iget-object v2, v1, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming$AesCtrHmacStreamDecrypter;->cipher:Ljavax/crypto/Cipher;

    move-object/from16 v13, p4

    invoke-virtual {v2, v0, v13}, Ljavax/crypto/Cipher;->doFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    monitor-exit p0

    return-void

    .line 396
    .end local v16    # "position":I
    .end local p0    # "this":Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming$AesCtrHmacStreamDecrypter;
    .restart local v2    # "position":I
    :cond_0
    move-object/from16 v13, p4

    move/from16 v16, v2

    .end local v2    # "position":I
    .restart local v16    # "position":I
    :try_start_1
    new-instance v2, Ljava/security/GeneralSecurityException;

    const-string v14, "Tag mismatch"

    invoke-direct {v2, v14}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 375
    .end local v6    # "ptLength":I
    .end local v7    # "startOfTag":I
    .end local v9    # "ct":Ljava/nio/ByteBuffer;
    .end local v10    # "tagBuffer":Ljava/nio/ByteBuffer;
    .end local v11    # "tag":[B
    .end local v12    # "expectedTag":[B
    .end local v16    # "position":I
    .restart local v2    # "position":I
    :cond_1
    move-object/from16 v13, p4

    move/from16 v16, v2

    .end local v2    # "position":I
    .restart local v16    # "position":I
    new-instance v2, Ljava/security/GeneralSecurityException;

    const-string v6, "Ciphertext too short"

    invoke-direct {v2, v6}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 370
    .end local v3    # "nonce":[B
    .end local v4    # "ctLength":I
    .end local v16    # "position":I
    .end local p1    # "ciphertext":Ljava/nio/ByteBuffer;
    .end local p2    # "segmentNr":I
    .end local p3    # "isLastSegment":Z
    .end local p4    # "plaintext":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized init(Ljava/nio/ByteBuffer;[B)V
    .locals 4
    .param p1, "header"    # Ljava/nio/ByteBuffer;
    .param p2, "aad"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "header",
            "aad"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 346
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object v1, p0, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming$AesCtrHmacStreamDecrypter;->this$0:Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;

    invoke-virtual {v1}, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;->getHeaderLength()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 349
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 350
    .local v0, "firstByte":B
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming$AesCtrHmacStreamDecrypter;->this$0:Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;

    invoke-virtual {v1}, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;->getHeaderLength()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 356
    const/4 v1, 0x7

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming$AesCtrHmacStreamDecrypter;->noncePrefix:[B

    .line 357
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming$AesCtrHmacStreamDecrypter;->this$0:Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;

    invoke-static {v1}, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;->access$900(Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;)I

    move-result v1

    new-array v1, v1, [B

    .line 358
    .local v1, "salt":[B
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 359
    iget-object v2, p0, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming$AesCtrHmacStreamDecrypter;->noncePrefix:[B

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 360
    iget-object v2, p0, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming$AesCtrHmacStreamDecrypter;->this$0:Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;

    invoke-static {v2, v1, p2}, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;->access$400(Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;[B[B)[B

    move-result-object v2

    .line 361
    .local v2, "keymaterial":[B
    iget-object v3, p0, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming$AesCtrHmacStreamDecrypter;->this$0:Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;

    invoke-static {v3, v2}, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;->access$500(Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;[B)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v3

    iput-object v3, p0, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming$AesCtrHmacStreamDecrypter;->keySpec:Ljavax/crypto/spec/SecretKeySpec;

    .line 362
    iget-object v3, p0, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming$AesCtrHmacStreamDecrypter;->this$0:Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;

    invoke-static {v3, v2}, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;->access$600(Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;[B)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v3

    iput-object v3, p0, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming$AesCtrHmacStreamDecrypter;->hmacKeySpec:Ljavax/crypto/spec/SecretKeySpec;

    .line 363
    invoke-static {}, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;->access$000()Ljavax/crypto/Cipher;

    move-result-object v3

    iput-object v3, p0, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming$AesCtrHmacStreamDecrypter;->cipher:Ljavax/crypto/Cipher;

    .line 364
    iget-object v3, p0, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming$AesCtrHmacStreamDecrypter;->this$0:Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;

    invoke-static {v3}, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;->access$100(Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming;)Ljavax/crypto/Mac;

    move-result-object v3

    iput-object v3, p0, Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming$AesCtrHmacStreamDecrypter;->mac:Ljavax/crypto/Mac;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    monitor-exit p0

    return-void

    .line 354
    .end local v1    # "salt":[B
    .end local v2    # "keymaterial":[B
    .end local p0    # "this":Lcom/google/crypto/tink/subtle/AesCtrHmacStreaming$AesCtrHmacStreamDecrypter;
    :cond_0
    :try_start_1
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "Invalid ciphertext"

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 347
    .end local v0    # "firstByte":B
    :cond_1
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Invalid header length"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 345
    .end local p1    # "header":Ljava/nio/ByteBuffer;
    .end local p2    # "aad":[B
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
