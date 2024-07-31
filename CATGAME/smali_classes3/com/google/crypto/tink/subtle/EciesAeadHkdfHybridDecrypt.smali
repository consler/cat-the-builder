.class public final Lcom/google/crypto/tink/subtle/EciesAeadHkdfHybridDecrypt;
.super Ljava/lang/Object;
.source "EciesAeadHkdfHybridDecrypt.java"

# interfaces
.implements Lcom/google/crypto/tink/HybridDecrypt;


# static fields
.field private static final EMPTY_AAD:[B


# instance fields
.field private final demHelper:Lcom/google/crypto/tink/subtle/EciesAeadHkdfDemHelper;

.field private final ecPointFormat:Lcom/google/crypto/tink/subtle/EllipticCurves$PointFormatType;

.field private final hkdfHmacAlgo:Ljava/lang/String;

.field private final hkdfSalt:[B

.field private final recipientKem:Lcom/google/crypto/tink/subtle/EciesHkdfRecipientKem;

.field private final recipientPrivateKey:Ljava/security/interfaces/ECPrivateKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/crypto/tink/subtle/EciesAeadHkdfHybridDecrypt;->EMPTY_AAD:[B

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPrivateKey;[BLjava/lang/String;Lcom/google/crypto/tink/subtle/EllipticCurves$PointFormatType;Lcom/google/crypto/tink/subtle/EciesAeadHkdfDemHelper;)V
    .locals 1
    .param p1, "recipientPrivateKey"    # Ljava/security/interfaces/ECPrivateKey;
    .param p2, "hkdfSalt"    # [B
    .param p3, "hkdfHmacAlgo"    # Ljava/lang/String;
    .param p4, "ecPointFormat"    # Lcom/google/crypto/tink/subtle/EllipticCurves$PointFormatType;
    .param p5, "demHelper"    # Lcom/google/crypto/tink/subtle/EciesAeadHkdfDemHelper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0,
            0x0,
            0x0
        }
        names = {
            "recipientPrivateKey",
            "hkdfSalt",
            "hkdfHmacAlgo",
            "ecPointFormat",
            "demHelper"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/google/crypto/tink/subtle/EciesAeadHkdfHybridDecrypt;->recipientPrivateKey:Ljava/security/interfaces/ECPrivateKey;

    .line 49
    new-instance v0, Lcom/google/crypto/tink/subtle/EciesHkdfRecipientKem;

    invoke-direct {v0, p1}, Lcom/google/crypto/tink/subtle/EciesHkdfRecipientKem;-><init>(Ljava/security/interfaces/ECPrivateKey;)V

    iput-object v0, p0, Lcom/google/crypto/tink/subtle/EciesAeadHkdfHybridDecrypt;->recipientKem:Lcom/google/crypto/tink/subtle/EciesHkdfRecipientKem;

    .line 50
    iput-object p2, p0, Lcom/google/crypto/tink/subtle/EciesAeadHkdfHybridDecrypt;->hkdfSalt:[B

    .line 51
    iput-object p3, p0, Lcom/google/crypto/tink/subtle/EciesAeadHkdfHybridDecrypt;->hkdfHmacAlgo:Ljava/lang/String;

    .line 52
    iput-object p4, p0, Lcom/google/crypto/tink/subtle/EciesAeadHkdfHybridDecrypt;->ecPointFormat:Lcom/google/crypto/tink/subtle/EllipticCurves$PointFormatType;

    .line 53
    iput-object p5, p0, Lcom/google/crypto/tink/subtle/EciesAeadHkdfHybridDecrypt;->demHelper:Lcom/google/crypto/tink/subtle/EciesAeadHkdfDemHelper;

    .line 54
    return-void
.end method


# virtual methods
.method public decrypt([B[B)[B
    .locals 10
    .param p1, "ciphertext"    # [B
    .param p2, "contextInfo"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "ciphertext",
            "contextInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/EciesAeadHkdfHybridDecrypt;->recipientPrivateKey:Ljava/security/interfaces/ECPrivateKey;

    invoke-interface {v0}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    .line 60
    .local v0, "curve":Ljava/security/spec/EllipticCurve;
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/EciesAeadHkdfHybridDecrypt;->ecPointFormat:Lcom/google/crypto/tink/subtle/EllipticCurves$PointFormatType;

    invoke-static {v0, v1}, Lcom/google/crypto/tink/subtle/EllipticCurves;->encodingSizeInBytes(Ljava/security/spec/EllipticCurve;Lcom/google/crypto/tink/subtle/EllipticCurves$PointFormatType;)I

    move-result v1

    .line 61
    .local v1, "headerSize":I
    array-length v2, p1

    if-lt v2, v1, :cond_0

    .line 64
    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 65
    .local v2, "kemBytes":[B
    iget-object v3, p0, Lcom/google/crypto/tink/subtle/EciesAeadHkdfHybridDecrypt;->recipientKem:Lcom/google/crypto/tink/subtle/EciesHkdfRecipientKem;

    iget-object v5, p0, Lcom/google/crypto/tink/subtle/EciesAeadHkdfHybridDecrypt;->hkdfHmacAlgo:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/crypto/tink/subtle/EciesAeadHkdfHybridDecrypt;->hkdfSalt:[B

    iget-object v4, p0, Lcom/google/crypto/tink/subtle/EciesAeadHkdfHybridDecrypt;->demHelper:Lcom/google/crypto/tink/subtle/EciesAeadHkdfDemHelper;

    .line 71
    invoke-interface {v4}, Lcom/google/crypto/tink/subtle/EciesAeadHkdfDemHelper;->getSymmetricKeySizeInBytes()I

    move-result v8

    iget-object v9, p0, Lcom/google/crypto/tink/subtle/EciesAeadHkdfHybridDecrypt;->ecPointFormat:Lcom/google/crypto/tink/subtle/EllipticCurves$PointFormatType;

    .line 66
    move-object v4, v2

    move-object v7, p2

    invoke-virtual/range {v3 .. v9}, Lcom/google/crypto/tink/subtle/EciesHkdfRecipientKem;->generateKey([BLjava/lang/String;[B[BILcom/google/crypto/tink/subtle/EllipticCurves$PointFormatType;)[B

    move-result-object v3

    .line 73
    .local v3, "symmetricKey":[B
    iget-object v4, p0, Lcom/google/crypto/tink/subtle/EciesAeadHkdfHybridDecrypt;->demHelper:Lcom/google/crypto/tink/subtle/EciesAeadHkdfDemHelper;

    invoke-interface {v4, v3}, Lcom/google/crypto/tink/subtle/EciesAeadHkdfDemHelper;->getAead([B)Lcom/google/crypto/tink/Aead;

    move-result-object v4

    .line 74
    .local v4, "aead":Lcom/google/crypto/tink/Aead;
    array-length v5, p1

    invoke-static {p1, v1, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    sget-object v6, Lcom/google/crypto/tink/subtle/EciesAeadHkdfHybridDecrypt;->EMPTY_AAD:[B

    invoke-interface {v4, v5, v6}, Lcom/google/crypto/tink/Aead;->decrypt([B[B)[B

    move-result-object v5

    return-object v5

    .line 62
    .end local v2    # "kemBytes":[B
    .end local v3    # "symmetricKey":[B
    .end local v4    # "aead":Lcom/google/crypto/tink/Aead;
    :cond_0
    new-instance v2, Ljava/security/GeneralSecurityException;

    const-string v3, "ciphertext too short"

    invoke-direct {v2, v3}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
