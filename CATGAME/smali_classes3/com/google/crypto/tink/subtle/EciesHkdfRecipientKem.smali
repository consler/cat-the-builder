.class public final Lcom/google/crypto/tink/subtle/EciesHkdfRecipientKem;
.super Ljava/lang/Object;
.source "EciesHkdfRecipientKem.java"


# instance fields
.field private recipientPrivateKey:Ljava/security/interfaces/ECPrivateKey;


# direct methods
.method public constructor <init>(Ljava/security/interfaces/ECPrivateKey;)V
    .locals 0
    .param p1, "recipientPrivateKey"    # Ljava/security/interfaces/ECPrivateKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "recipientPrivateKey"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/crypto/tink/subtle/EciesHkdfRecipientKem;->recipientPrivateKey:Ljava/security/interfaces/ECPrivateKey;

    .line 33
    return-void
.end method


# virtual methods
.method public generateKey([BLjava/lang/String;[B[BILcom/google/crypto/tink/subtle/EllipticCurves$PointFormatType;)[B
    .locals 8
    .param p1, "kemBytes"    # [B
    .param p2, "hmacAlgo"    # Ljava/lang/String;
    .param p3, "hkdfSalt"    # [B
    .param p4, "hkdfInfo"    # [B
    .param p5, "keySizeInBytes"    # I
    .param p6, "pointFormat"    # Lcom/google/crypto/tink/subtle/EllipticCurves$PointFormatType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10,
            0x10,
            0x0,
            0x0
        }
        names = {
            "kemBytes",
            "hmacAlgo",
            "hkdfSalt",
            "hkdfInfo",
            "keySizeInBytes",
            "pointFormat"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/EciesHkdfRecipientKem;->recipientPrivateKey:Ljava/security/interfaces/ECPrivateKey;

    .line 44
    invoke-interface {v0}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    .line 43
    invoke-static {v0, p6, p1}, Lcom/google/crypto/tink/subtle/EllipticCurves;->getEcPublicKey(Ljava/security/spec/ECParameterSpec;Lcom/google/crypto/tink/subtle/EllipticCurves$PointFormatType;[B)Ljava/security/interfaces/ECPublicKey;

    move-result-object v0

    .line 45
    .local v0, "ephemeralPublicKey":Ljava/security/interfaces/ECPublicKey;
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/EciesHkdfRecipientKem;->recipientPrivateKey:Ljava/security/interfaces/ECPrivateKey;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/subtle/EllipticCurves;->computeSharedSecret(Ljava/security/interfaces/ECPrivateKey;Ljava/security/interfaces/ECPublicKey;)[B

    move-result-object v1

    .line 47
    .local v1, "sharedSecret":[B
    move-object v2, p1

    move-object v3, v1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-static/range {v2 .. v7}, Lcom/google/crypto/tink/subtle/Hkdf;->computeEciesHkdfSymmetricKey([B[BLjava/lang/String;[B[BI)[B

    move-result-object v2

    return-object v2
.end method
