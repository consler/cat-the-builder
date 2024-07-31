.class public final Lcom/google/crypto/tink/subtle/EciesHkdfSenderKem;
.super Ljava/lang/Object;
.source "EciesHkdfSenderKem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/subtle/EciesHkdfSenderKem$KemKey;
    }
.end annotation


# instance fields
.field private recipientPublicKey:Ljava/security/interfaces/ECPublicKey;


# direct methods
.method public constructor <init>(Ljava/security/interfaces/ECPublicKey;)V
    .locals 0
    .param p1, "recipientPublicKey"    # Ljava/security/interfaces/ECPublicKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "recipientPublicKey"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/google/crypto/tink/subtle/EciesHkdfSenderKem;->recipientPublicKey:Ljava/security/interfaces/ECPublicKey;

    .line 61
    return-void
.end method


# virtual methods
.method public generateKey(Ljava/lang/String;[B[BILcom/google/crypto/tink/subtle/EllipticCurves$PointFormatType;)Lcom/google/crypto/tink/subtle/EciesHkdfSenderKem$KemKey;
    .locals 13
    .param p1, "hmacAlgo"    # Ljava/lang/String;
    .param p2, "hkdfSalt"    # [B
    .param p3, "hkdfInfo"    # [B
    .param p4, "keySizeInBytes"    # I
    .param p5, "pointFormat"    # Lcom/google/crypto/tink/subtle/EllipticCurves$PointFormatType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10,
            0x0,
            0x0
        }
        names = {
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

    .line 70
    move-object v0, p0

    iget-object v1, v0, Lcom/google/crypto/tink/subtle/EciesHkdfSenderKem;->recipientPublicKey:Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v1}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    invoke-static {v1}, Lcom/google/crypto/tink/subtle/EllipticCurves;->generateKeyPair(Ljava/security/spec/ECParameterSpec;)Ljava/security/KeyPair;

    move-result-object v1

    .line 71
    .local v1, "ephemeralKeyPair":Ljava/security/KeyPair;
    invoke-virtual {v1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v2

    check-cast v2, Ljava/security/interfaces/ECPublicKey;

    .line 72
    .local v2, "ephemeralPublicKey":Ljava/security/interfaces/ECPublicKey;
    invoke-virtual {v1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v3

    check-cast v3, Ljava/security/interfaces/ECPrivateKey;

    .line 73
    .local v3, "ephemeralPrivateKey":Ljava/security/interfaces/ECPrivateKey;
    iget-object v4, v0, Lcom/google/crypto/tink/subtle/EciesHkdfSenderKem;->recipientPublicKey:Ljava/security/interfaces/ECPublicKey;

    invoke-static {v3, v4}, Lcom/google/crypto/tink/subtle/EllipticCurves;->computeSharedSecret(Ljava/security/interfaces/ECPrivateKey;Ljava/security/interfaces/ECPublicKey;)[B

    move-result-object v4

    .line 75
    .local v4, "sharedSecret":[B
    nop

    .line 77
    invoke-interface {v2}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v5

    invoke-virtual {v5}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v5

    invoke-interface {v2}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v6

    .line 76
    move-object/from16 v11, p5

    invoke-static {v5, v11, v6}, Lcom/google/crypto/tink/subtle/EllipticCurves;->pointEncode(Ljava/security/spec/EllipticCurve;Lcom/google/crypto/tink/subtle/EllipticCurves$PointFormatType;Ljava/security/spec/ECPoint;)[B

    move-result-object v12

    .line 78
    .local v12, "kemBytes":[B
    nop

    .line 79
    move-object v5, v12

    move-object v6, v4

    move-object v7, p1

    move-object v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p4

    invoke-static/range {v5 .. v10}, Lcom/google/crypto/tink/subtle/Hkdf;->computeEciesHkdfSymmetricKey([B[BLjava/lang/String;[B[BI)[B

    move-result-object v5

    .line 81
    .local v5, "symmetricKey":[B
    new-instance v6, Lcom/google/crypto/tink/subtle/EciesHkdfSenderKem$KemKey;

    invoke-direct {v6, v12, v5}, Lcom/google/crypto/tink/subtle/EciesHkdfSenderKem$KemKey;-><init>([B[B)V

    return-object v6
.end method
