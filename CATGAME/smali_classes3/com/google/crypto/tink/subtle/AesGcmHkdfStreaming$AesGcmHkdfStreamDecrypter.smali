.class Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming$AesGcmHkdfStreamDecrypter;
.super Ljava/lang/Object;
.source "AesGcmHkdfStreaming.java"

# interfaces
.implements Lcom/google/crypto/tink/subtle/StreamSegmentDecrypter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AesGcmHkdfStreamDecrypter"
.end annotation


# instance fields
.field private cipher:Ljavax/crypto/Cipher;

.field private keySpec:Ljavax/crypto/spec/SecretKeySpec;

.field private noncePrefix:[B

.field final synthetic this$0:Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;


# direct methods
.method constructor <init>(Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 272
    iput-object p1, p0, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming$AesGcmHkdfStreamDecrypter;->this$0:Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized decryptSegment(Ljava/nio/ByteBuffer;IZLjava/nio/ByteBuffer;)V
    .locals 4
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

    monitor-enter p0

    .line 298
    :try_start_0
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming$AesGcmHkdfStreamDecrypter;->noncePrefix:[B

    int-to-long v1, p2

    invoke-static {v0, v1, v2, p3}, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;->access$400([BJZ)Ljavax/crypto/spec/GCMParameterSpec;

    move-result-object v0

    .line 299
    .local v0, "params":Ljavax/crypto/spec/GCMParameterSpec;
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming$AesGcmHkdfStreamDecrypter;->cipher:Ljavax/crypto/Cipher;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming$AesGcmHkdfStreamDecrypter;->keySpec:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v1, v2, v3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 300
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming$AesGcmHkdfStreamDecrypter;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v1, p1, p4}, Ljavax/crypto/Cipher;->doFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    monitor-exit p0

    return-void

    .line 297
    .end local v0    # "params":Ljavax/crypto/spec/GCMParameterSpec;
    .end local p0    # "this":Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming$AesGcmHkdfStreamDecrypter;
    .end local p1    # "ciphertext":Ljava/nio/ByteBuffer;
    .end local p2    # "segmentNr":I
    .end local p3    # "isLastSegment":Z
    .end local p4    # "plaintext":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized init(Ljava/nio/ByteBuffer;[B)V
    .locals 3
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

    .line 276
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object v1, p0, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming$AesGcmHkdfStreamDecrypter;->this$0:Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;

    invoke-virtual {v1}, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;->getHeaderLength()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 279
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 280
    .local v0, "firstByte":B
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming$AesGcmHkdfStreamDecrypter;->this$0:Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;

    invoke-virtual {v1}, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;->getHeaderLength()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 286
    const/4 v1, 0x7

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming$AesGcmHkdfStreamDecrypter;->noncePrefix:[B

    .line 287
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming$AesGcmHkdfStreamDecrypter;->this$0:Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;

    invoke-static {v1}, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;->access$500(Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;)I

    move-result v1

    new-array v1, v1, [B

    .line 288
    .local v1, "salt":[B
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 289
    iget-object v2, p0, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming$AesGcmHkdfStreamDecrypter;->noncePrefix:[B

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 290
    iget-object v2, p0, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming$AesGcmHkdfStreamDecrypter;->this$0:Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;

    invoke-static {v2, v1, p2}, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;->access$300(Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;[B[B)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v2

    iput-object v2, p0, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming$AesGcmHkdfStreamDecrypter;->keySpec:Ljavax/crypto/spec/SecretKeySpec;

    .line 291
    invoke-static {}, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming;->access$000()Ljavax/crypto/Cipher;

    move-result-object v2

    iput-object v2, p0, Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming$AesGcmHkdfStreamDecrypter;->cipher:Ljavax/crypto/Cipher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    monitor-exit p0

    return-void

    .line 284
    .end local v1    # "salt":[B
    .end local p0    # "this":Lcom/google/crypto/tink/subtle/AesGcmHkdfStreaming$AesGcmHkdfStreamDecrypter;
    :cond_0
    :try_start_1
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "Invalid ciphertext"

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 277
    .end local v0    # "firstByte":B
    :cond_1
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Invalid header length"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 275
    .end local p1    # "header":Ljava/nio/ByteBuffer;
    .end local p2    # "aad":[B
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
