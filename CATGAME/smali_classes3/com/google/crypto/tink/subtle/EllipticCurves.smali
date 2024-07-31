.class public final Lcom/google/crypto/tink/subtle/EllipticCurves;
.super Ljava/lang/Object;
.source "EllipticCurves.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/subtle/EllipticCurves$EcdsaEncoding;,
        Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;,
        Lcom/google/crypto/tink/subtle/EllipticCurves$PointFormatType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkPointOnCurve(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)V
    .locals 7
    .param p0, "point"    # Ljava/security/spec/ECPoint;
    .param p1, "ec"    # Ljava/security/spec/EllipticCurve;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "point",
            "ec"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 128
    invoke-static {p1}, Lcom/google/crypto/tink/subtle/EllipticCurves;->getModulus(Ljava/security/spec/EllipticCurve;)Ljava/math/BigInteger;

    move-result-object v0

    .line 129
    .local v0, "p":Ljava/math/BigInteger;
    invoke-virtual {p0}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v1

    .line 130
    .local v1, "x":Ljava/math/BigInteger;
    invoke-virtual {p0}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v2

    .line 131
    .local v2, "y":Ljava/math/BigInteger;
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    .line 135
    invoke-virtual {v1}, Ljava/math/BigInteger;->signum()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-gez v3, :cond_2

    .line 138
    invoke-virtual {v2}, Ljava/math/BigInteger;->signum()I

    move-result v3

    if-eq v3, v4, :cond_1

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-gez v3, :cond_1

    .line 142
    invoke-virtual {v2, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 143
    .local v3, "lhs":Ljava/math/BigInteger;
    invoke-virtual {v1, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p1}, Ljava/security/spec/EllipticCurve;->getA()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p1}, Ljava/security/spec/EllipticCurve;->getB()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 144
    .local v4, "rhs":Ljava/math/BigInteger;
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 147
    return-void

    .line 145
    :cond_0
    new-instance v5, Ljava/security/GeneralSecurityException;

    const-string v6, "Point is not on curve"

    invoke-direct {v5, v6}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 139
    .end local v3    # "lhs":Ljava/math/BigInteger;
    .end local v4    # "rhs":Ljava/math/BigInteger;
    :cond_1
    new-instance v3, Ljava/security/GeneralSecurityException;

    const-string v4, "y is out of range"

    invoke-direct {v3, v4}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 136
    :cond_2
    new-instance v3, Ljava/security/GeneralSecurityException;

    const-string v4, "x is out of range"

    invoke-direct {v3, v4}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 132
    :cond_3
    new-instance v3, Ljava/security/GeneralSecurityException;

    const-string v4, "point is at infinity"

    invoke-direct {v3, v4}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method static checkPublicKey(Ljava/security/interfaces/ECPublicKey;)V
    .locals 2
    .param p0, "key"    # Ljava/security/interfaces/ECPublicKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 164
    invoke-interface {p0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v0

    invoke-interface {p0}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/crypto/tink/subtle/EllipticCurves;->checkPointOnCurve(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)V

    .line 165
    return-void
.end method

.method public static computeSharedSecret(Ljava/security/interfaces/ECPrivateKey;Ljava/security/interfaces/ECPublicKey;)[B
    .locals 1
    .param p0, "myPrivateKey"    # Ljava/security/interfaces/ECPrivateKey;
    .param p1, "peerPublicKey"    # Ljava/security/interfaces/ECPublicKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "myPrivateKey",
            "peerPublicKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 936
    invoke-static {p1, p0}, Lcom/google/crypto/tink/subtle/EllipticCurves;->validatePublicKeySpec(Ljava/security/interfaces/ECPublicKey;Ljava/security/interfaces/ECPrivateKey;)V

    .line 937
    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/crypto/tink/subtle/EllipticCurves;->computeSharedSecret(Ljava/security/interfaces/ECPrivateKey;Ljava/security/spec/ECPoint;)[B

    move-result-object v0

    return-object v0
.end method

.method public static computeSharedSecret(Ljava/security/interfaces/ECPrivateKey;Ljava/security/spec/ECPoint;)[B
    .locals 8
    .param p0, "myPrivateKey"    # Ljava/security/interfaces/ECPrivateKey;
    .param p1, "publicPoint"    # Ljava/security/spec/ECPoint;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "myPrivateKey",
            "publicPoint"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 947
    invoke-interface {p0}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/crypto/tink/subtle/EllipticCurves;->checkPointOnCurve(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)V

    .line 949
    invoke-interface {p0}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    .line 950
    .local v0, "privSpec":Ljava/security/spec/ECParameterSpec;
    new-instance v1, Ljava/security/spec/ECPublicKeySpec;

    invoke-direct {v1, p1, v0}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    .line 951
    .local v1, "publicKeySpec":Ljava/security/spec/ECPublicKeySpec;
    sget-object v2, Lcom/google/crypto/tink/subtle/EngineFactory;->KEY_FACTORY:Lcom/google/crypto/tink/subtle/EngineFactory;

    const-string v3, "EC"

    invoke-virtual {v2, v3}, Lcom/google/crypto/tink/subtle/EngineFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/KeyFactory;

    .line 952
    .local v2, "kf":Ljava/security/KeyFactory;
    invoke-virtual {v2, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3

    .line 953
    .local v3, "publicKey":Ljava/security/PublicKey;
    sget-object v4, Lcom/google/crypto/tink/subtle/EngineFactory;->KEY_AGREEMENT:Lcom/google/crypto/tink/subtle/EngineFactory;

    const-string v5, "ECDH"

    invoke-virtual {v4, v5}, Lcom/google/crypto/tink/subtle/EngineFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/crypto/KeyAgreement;

    .line 954
    .local v4, "ka":Ljavax/crypto/KeyAgreement;
    invoke-virtual {v4, p0}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    .line 956
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v4, v3, v5}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    .line 957
    invoke-virtual {v4}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    move-result-object v5

    .line 958
    .local v5, "secret":[B
    invoke-static {v5, p0}, Lcom/google/crypto/tink/subtle/EllipticCurves;->validateSharedSecret([BLjava/security/interfaces/ECPrivateKey;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 959
    return-object v5

    .line 960
    .end local v5    # "secret":[B
    :catch_0
    move-exception v5

    .line 963
    .local v5, "ex":Ljava/lang/IllegalStateException;
    new-instance v6, Ljava/security/GeneralSecurityException;

    invoke-virtual {v5}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public static ecPointDecode(Ljava/security/spec/EllipticCurve;Lcom/google/crypto/tink/subtle/EllipticCurves$PointFormatType;[B)Ljava/security/spec/ECPoint;
    .locals 1
    .param p0, "curve"    # Ljava/security/spec/EllipticCurve;
    .param p1, "format"    # Lcom/google/crypto/tink/subtle/EllipticCurves$PointFormatType;
    .param p2, "encoded"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "curve",
            "format",
            "encoded"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 654
    invoke-static {p0, p1, p2}, Lcom/google/crypto/tink/subtle/EllipticCurves;->pointDecode(Ljava/security/spec/EllipticCurve;Lcom/google/crypto/tink/subtle/EllipticCurves$PointFormatType;[B)Ljava/security/spec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public static ecdsaDer2Ieee([BI)[B
    .locals 9
    .param p0, "der"    # [B
    .param p1, "ieeeLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "der",
            "ieeeLength"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 468
    invoke-static {p0}, Lcom/google/crypto/tink/subtle/EllipticCurves;->isValidDerEncoding([B)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 471
    new-array v0, p1, [B

    .line 472
    .local v0, "ieee":[B
    const/4 v1, 0x1

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    .line 473
    .local v2, "length":I
    const/4 v3, 0x2

    .line 474
    .local v3, "offset":I
    const/16 v4, 0x80

    if-lt v2, v4, :cond_0

    .line 475
    add-int/lit8 v3, v3, 0x1

    .line 477
    :cond_0
    add-int/2addr v3, v1

    .line 478
    add-int/lit8 v1, v3, 0x1

    .end local v3    # "offset":I
    .local v1, "offset":I
    aget-byte v3, p0, v3

    .line 479
    .local v3, "rLength":I
    const/4 v4, 0x0

    .line 480
    .local v4, "extraZero":I
    aget-byte v5, p0, v1

    if-nez v5, :cond_1

    .line 481
    const/4 v4, 0x1

    .line 483
    :cond_1
    add-int v5, v1, v4

    div-int/lit8 v6, p1, 0x2

    sub-int/2addr v6, v3

    add-int/2addr v6, v4

    sub-int v7, v3, v4

    invoke-static {p0, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 485
    add-int/lit8 v5, v3, 0x1

    add-int/2addr v1, v5

    .line 486
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "offset":I
    .local v5, "offset":I
    aget-byte v1, p0, v1

    .line 487
    .local v1, "sLength":I
    const/4 v4, 0x0

    .line 488
    aget-byte v6, p0, v5

    if-nez v6, :cond_2

    .line 489
    const/4 v4, 0x1

    .line 491
    :cond_2
    add-int v6, v5, v4

    sub-int v7, p1, v1

    add-int/2addr v7, v4

    sub-int v8, v1, v4

    invoke-static {p0, v6, v0, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 493
    return-object v0

    .line 469
    .end local v0    # "ieee":[B
    .end local v1    # "sLength":I
    .end local v2    # "length":I
    .end local v3    # "rLength":I
    .end local v4    # "extraZero":I
    .end local v5    # "offset":I
    :cond_3
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Invalid DER encoding"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static ecdsaIeee2Der([B)[B
    .locals 8
    .param p0, "ieee"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ieee"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 421
    array-length v0, p0

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-nez v0, :cond_1

    array-length v0, p0

    if-eqz v0, :cond_1

    array-length v0, p0

    const/16 v2, 0x84

    if-gt v0, v2, :cond_1

    .line 424
    array-length v0, p0

    div-int/2addr v0, v1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/EllipticCurves;->toMinimalSignedNumber([B)[B

    move-result-object v0

    .line 425
    .local v0, "r":[B
    array-length v2, p0

    div-int/2addr v2, v1

    array-length v3, p0

    invoke-static {p0, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/crypto/tink/subtle/EllipticCurves;->toMinimalSignedNumber([B)[B

    move-result-object v2

    .line 427
    .local v2, "s":[B
    const/4 v3, 0x0

    .line 428
    .local v3, "offset":I
    array-length v4, v0

    add-int/2addr v4, v1

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v4, v4, 0x1

    array-length v5, v2

    add-int/2addr v4, v5

    .line 430
    .local v4, "length":I
    const/16 v5, 0x80

    const/16 v6, 0x30

    if-lt v4, v5, :cond_0

    .line 431
    add-int/lit8 v5, v4, 0x3

    new-array v5, v5, [B

    .line 432
    .local v5, "der":[B
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "offset":I
    .local v7, "offset":I
    aput-byte v6, v5, v3

    .line 433
    add-int/lit8 v3, v7, 0x1

    .end local v7    # "offset":I
    .restart local v3    # "offset":I
    const/16 v6, -0x7f

    aput-byte v6, v5, v7

    .line 434
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "offset":I
    .local v6, "offset":I
    int-to-byte v7, v4

    aput-byte v7, v5, v3

    goto :goto_0

    .line 436
    .end local v5    # "der":[B
    .end local v6    # "offset":I
    .restart local v3    # "offset":I
    :cond_0
    add-int/lit8 v5, v4, 0x2

    new-array v5, v5, [B

    .line 437
    .restart local v5    # "der":[B
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "offset":I
    .restart local v7    # "offset":I
    aput-byte v6, v5, v3

    .line 438
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    int-to-byte v3, v4

    aput-byte v3, v5, v7

    .line 440
    :goto_0
    add-int/lit8 v3, v6, 0x1

    .end local v6    # "offset":I
    .restart local v3    # "offset":I
    aput-byte v1, v5, v6

    .line 441
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "offset":I
    .restart local v6    # "offset":I
    array-length v7, v0

    int-to-byte v7, v7

    aput-byte v7, v5, v3

    .line 442
    array-length v3, v0

    const/4 v7, 0x0

    invoke-static {v0, v7, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 443
    array-length v3, v0

    add-int/2addr v6, v3

    .line 444
    add-int/lit8 v3, v6, 0x1

    .end local v6    # "offset":I
    .restart local v3    # "offset":I
    aput-byte v1, v5, v6

    .line 445
    add-int/lit8 v1, v3, 0x1

    .end local v3    # "offset":I
    .local v1, "offset":I
    array-length v6, v2

    int-to-byte v6, v6

    aput-byte v6, v5, v3

    .line 446
    array-length v3, v2

    invoke-static {v2, v7, v5, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 447
    return-object v5

    .line 422
    .end local v0    # "r":[B
    .end local v1    # "offset":I
    .end local v2    # "s":[B
    .end local v4    # "length":I
    .end local v5    # "der":[B
    :cond_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Invalid IEEE_P1363 encoding"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static encodingSizeInBytes(Ljava/security/spec/EllipticCurve;Lcom/google/crypto/tink/subtle/EllipticCurves$PointFormatType;)I
    .locals 3
    .param p0, "curve"    # Ljava/security/spec/EllipticCurve;
    .param p1, "format"    # Lcom/google/crypto/tink/subtle/EllipticCurves$PointFormatType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "curve",
            "format"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 627
    invoke-static {p0}, Lcom/google/crypto/tink/subtle/EllipticCurves;->fieldSizeInBytes(Ljava/security/spec/EllipticCurve;)I

    move-result v0

    .line 628
    .local v0, "coordinateSize":I
    sget-object v1, Lcom/google/crypto/tink/subtle/EllipticCurves$1;->$SwitchMap$com$google$crypto$tink$subtle$EllipticCurves$PointFormatType:[I

    invoke-virtual {p1}, Lcom/google/crypto/tink/subtle/EllipticCurves$PointFormatType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 634
    add-int/lit8 v1, v0, 0x1

    return v1

    .line 636
    :cond_0
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "unknown EC point format"

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 632
    :cond_1
    mul-int/lit8 v1, v0, 0x2

    return v1

    .line 630
    :cond_2
    mul-int/lit8 v1, v0, 0x2

    add-int/2addr v1, v2

    return v1
.end method

.method static fieldSizeInBits(Ljava/security/spec/EllipticCurve;)I
    .locals 2
    .param p0, "curve"    # Ljava/security/spec/EllipticCurve;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "curve"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 232
    invoke-static {p0}, Lcom/google/crypto/tink/subtle/EllipticCurves;->getModulus(Ljava/security/spec/EllipticCurve;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method public static fieldSizeInBytes(Ljava/security/spec/EllipticCurve;)I
    .locals 1
    .param p0, "curve"    # Ljava/security/spec/EllipticCurve;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "curve"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 242
    invoke-static {p0}, Lcom/google/crypto/tink/subtle/EllipticCurves;->fieldSizeInBits(Ljava/security/spec/EllipticCurve;)I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public static generateKeyPair(Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;)Ljava/security/KeyPair;
    .locals 1
    .param p0, "curve"    # Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "curve"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 908
    invoke-static {p0}, Lcom/google/crypto/tink/subtle/EllipticCurves;->getCurveSpec(Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/EllipticCurves;->generateKeyPair(Ljava/security/spec/ECParameterSpec;)Ljava/security/KeyPair;

    move-result-object v0

    return-object v0
.end method

.method public static generateKeyPair(Ljava/security/spec/ECParameterSpec;)Ljava/security/KeyPair;
    .locals 2
    .param p0, "spec"    # Ljava/security/spec/ECParameterSpec;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "spec"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 913
    sget-object v0, Lcom/google/crypto/tink/subtle/EngineFactory;->KEY_PAIR_GENERATOR:Lcom/google/crypto/tink/subtle/EngineFactory;

    const-string v1, "EC"

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/subtle/EngineFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/KeyPairGenerator;

    .line 914
    .local v0, "keyGen":Ljava/security/KeyPairGenerator;
    invoke-virtual {v0, p0}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 915
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v1

    return-object v1
.end method

.method public static getCurveSpec(Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;)Ljava/security/spec/ECParameterSpec;
    .locals 3
    .param p0, "curve"    # Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "curve"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 821
    sget-object v0, Lcom/google/crypto/tink/subtle/EllipticCurves$1;->$SwitchMap$com$google$crypto$tink$subtle$EllipticCurves$CurveType:[I

    invoke-virtual {p0}, Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 827
    invoke-static {}, Lcom/google/crypto/tink/subtle/EllipticCurves;->getNistP521Params()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    return-object v0

    .line 829
    :cond_0
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "curve not implemented:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 825
    :cond_1
    invoke-static {}, Lcom/google/crypto/tink/subtle/EllipticCurves;->getNistP384Params()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    return-object v0

    .line 823
    :cond_2
    invoke-static {}, Lcom/google/crypto/tink/subtle/EllipticCurves;->getNistP256Params()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    return-object v0
.end method

.method public static getEcPrivateKey(Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;[B)Ljava/security/interfaces/ECPrivateKey;
    .locals 5
    .param p0, "curve"    # Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;
    .param p1, "keyValue"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "curve",
            "keyValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 899
    invoke-static {p0}, Lcom/google/crypto/tink/subtle/EllipticCurves;->getCurveSpec(Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    .line 900
    .local v0, "ecParams":Ljava/security/spec/ECParameterSpec;
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 901
    .local v1, "privValue":Ljava/math/BigInteger;
    new-instance v2, Ljava/security/spec/ECPrivateKeySpec;

    invoke-direct {v2, v1, v0}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    .line 902
    .local v2, "spec":Ljava/security/spec/ECPrivateKeySpec;
    sget-object v3, Lcom/google/crypto/tink/subtle/EngineFactory;->KEY_FACTORY:Lcom/google/crypto/tink/subtle/EngineFactory;

    const-string v4, "EC"

    invoke-virtual {v3, v4}, Lcom/google/crypto/tink/subtle/EngineFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/KeyFactory;

    .line 903
    .local v3, "kf":Ljava/security/KeyFactory;
    invoke-virtual {v3, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v4

    check-cast v4, Ljava/security/interfaces/ECPrivateKey;

    return-object v4
.end method

.method public static getEcPrivateKey([B)Ljava/security/interfaces/ECPrivateKey;
    .locals 2
    .param p0, "pkcs8PrivateKey"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "pkcs8PrivateKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 892
    sget-object v0, Lcom/google/crypto/tink/subtle/EngineFactory;->KEY_FACTORY:Lcom/google/crypto/tink/subtle/EngineFactory;

    const-string v1, "EC"

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/subtle/EngineFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/KeyFactory;

    .line 893
    .local v0, "kf":Ljava/security/KeyFactory;
    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v1, p0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/ECPrivateKey;

    return-object v1
.end method

.method public static getEcPublicKey(Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;Lcom/google/crypto/tink/subtle/EllipticCurves$PointFormatType;[B)Ljava/security/interfaces/ECPublicKey;
    .locals 1
    .param p0, "curve"    # Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;
    .param p1, "pointFormat"    # Lcom/google/crypto/tink/subtle/EllipticCurves$PointFormatType;
    .param p2, "publicKey"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10
        }
        names = {
            "curve",
            "pointFormat",
            "publicKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 852
    invoke-static {p0}, Lcom/google/crypto/tink/subtle/EllipticCurves;->getCurveSpec(Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/subtle/EllipticCurves;->getEcPublicKey(Ljava/security/spec/ECParameterSpec;Lcom/google/crypto/tink/subtle/EllipticCurves$PointFormatType;[B)Ljava/security/interfaces/ECPublicKey;

    move-result-object v0

    return-object v0
.end method

.method public static getEcPublicKey(Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;[B[B)Ljava/security/interfaces/ECPublicKey;
    .locals 7
    .param p0, "curve"    # Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;
    .param p1, "x"    # [B
    .param p2, "y"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10
        }
        names = {
            "curve",
            "x",
            "y"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 873
    invoke-static {p0}, Lcom/google/crypto/tink/subtle/EllipticCurves;->getCurveSpec(Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    .line 874
    .local v0, "ecParams":Ljava/security/spec/ECParameterSpec;
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 875
    .local v1, "pubX":Ljava/math/BigInteger;
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v2, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    move-object v2, v3

    .line 876
    .local v2, "pubY":Ljava/math/BigInteger;
    new-instance v3, Ljava/security/spec/ECPoint;

    invoke-direct {v3, v1, v2}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 877
    .local v3, "w":Ljava/security/spec/ECPoint;
    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/crypto/tink/subtle/EllipticCurves;->checkPointOnCurve(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)V

    .line 878
    new-instance v4, Ljava/security/spec/ECPublicKeySpec;

    invoke-direct {v4, v3, v0}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    .line 879
    .local v4, "spec":Ljava/security/spec/ECPublicKeySpec;
    sget-object v5, Lcom/google/crypto/tink/subtle/EngineFactory;->KEY_FACTORY:Lcom/google/crypto/tink/subtle/EngineFactory;

    const-string v6, "EC"

    invoke-virtual {v5, v6}, Lcom/google/crypto/tink/subtle/EngineFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/KeyFactory;

    .line 880
    .local v5, "kf":Ljava/security/KeyFactory;
    invoke-virtual {v5, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v6

    check-cast v6, Ljava/security/interfaces/ECPublicKey;

    return-object v6
.end method

.method public static getEcPublicKey(Ljava/security/spec/ECParameterSpec;Lcom/google/crypto/tink/subtle/EllipticCurves$PointFormatType;[B)Ljava/security/interfaces/ECPublicKey;
    .locals 4
    .param p0, "spec"    # Ljava/security/spec/ECParameterSpec;
    .param p1, "pointFormat"    # Lcom/google/crypto/tink/subtle/EllipticCurves$PointFormatType;
    .param p2, "publicKey"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10
        }
        names = {
            "spec",
            "pointFormat",
            "publicKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 862
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/subtle/EllipticCurves;->pointDecode(Ljava/security/spec/EllipticCurve;Lcom/google/crypto/tink/subtle/EllipticCurves$PointFormatType;[B)Ljava/security/spec/ECPoint;

    move-result-object v0

    .line 863
    .local v0, "point":Ljava/security/spec/ECPoint;
    new-instance v1, Ljava/security/spec/ECPublicKeySpec;

    invoke-direct {v1, v0, p0}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    .line 864
    .local v1, "pubSpec":Ljava/security/spec/ECPublicKeySpec;
    sget-object v2, Lcom/google/crypto/tink/subtle/EngineFactory;->KEY_FACTORY:Lcom/google/crypto/tink/subtle/EngineFactory;

    const-string v3, "EC"

    invoke-virtual {v2, v3}, Lcom/google/crypto/tink/subtle/EngineFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/KeyFactory;

    .line 865
    .local v2, "kf":Ljava/security/KeyFactory;
    invoke-virtual {v2, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3

    check-cast v3, Ljava/security/interfaces/ECPublicKey;

    return-object v3
.end method

.method public static getEcPublicKey([B)Ljava/security/interfaces/ECPublicKey;
    .locals 2
    .param p0, "x509PublicKey"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "x509PublicKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 841
    sget-object v0, Lcom/google/crypto/tink/subtle/EngineFactory;->KEY_FACTORY:Lcom/google/crypto/tink/subtle/EngineFactory;

    const-string v1, "EC"

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/subtle/EngineFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/KeyFactory;

    .line 842
    .local v0, "kf":Ljava/security/KeyFactory;
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/ECPublicKey;

    return-object v1
.end method

.method public static getModulus(Ljava/security/spec/EllipticCurve;)Ljava/math/BigInteger;
    .locals 3
    .param p0, "curve"    # Ljava/security/spec/EllipticCurve;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "curve"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 217
    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v0

    .line 218
    .local v0, "field":Ljava/security/spec/ECField;
    instance-of v1, v0, Ljava/security/spec/ECFieldFp;

    if-eqz v1, :cond_0

    .line 219
    move-object v1, v0

    check-cast v1, Ljava/security/spec/ECFieldFp;

    invoke-virtual {v1}, Ljava/security/spec/ECFieldFp;->getP()Ljava/math/BigInteger;

    move-result-object v1

    return-object v1

    .line 221
    :cond_0
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "Only curves over prime order fields are supported"

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getNistCurveSpec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/security/spec/ECParameterSpec;
    .locals 17
    .param p0, "decimalP"    # Ljava/lang/String;
    .param p1, "decimalN"    # Ljava/lang/String;
    .param p2, "hexB"    # Ljava/lang/String;
    .param p3, "hexGX"    # Ljava/lang/String;
    .param p4, "hexGY"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "decimalP",
            "decimalN",
            "hexB",
            "hexGX",
            "hexGY"
        }
    .end annotation

    .line 247
    new-instance v0, Ljava/math/BigInteger;

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 248
    .local v0, "p":Ljava/math/BigInteger;
    new-instance v2, Ljava/math/BigInteger;

    move-object/from16 v3, p1

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 249
    .local v2, "n":Ljava/math/BigInteger;
    new-instance v4, Ljava/math/BigInteger;

    const-string v5, "3"

    invoke-direct {v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 250
    .local v4, "three":Ljava/math/BigInteger;
    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 251
    .local v5, "a":Ljava/math/BigInteger;
    new-instance v6, Ljava/math/BigInteger;

    const/16 v7, 0x10

    move-object/from16 v8, p2

    invoke-direct {v6, v8, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 252
    .local v6, "b":Ljava/math/BigInteger;
    new-instance v9, Ljava/math/BigInteger;

    move-object/from16 v10, p3

    invoke-direct {v9, v10, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 253
    .local v9, "gx":Ljava/math/BigInteger;
    new-instance v11, Ljava/math/BigInteger;

    move-object/from16 v12, p4

    invoke-direct {v11, v12, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    move-object v7, v11

    .line 254
    .local v7, "gy":Ljava/math/BigInteger;
    const/4 v11, 0x1

    .line 255
    .local v11, "h":I
    new-instance v13, Ljava/security/spec/ECFieldFp;

    invoke-direct {v13, v0}, Ljava/security/spec/ECFieldFp;-><init>(Ljava/math/BigInteger;)V

    .line 256
    .local v13, "fp":Ljava/security/spec/ECFieldFp;
    new-instance v14, Ljava/security/spec/EllipticCurve;

    invoke-direct {v14, v13, v5, v6}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 257
    .local v14, "curveSpec":Ljava/security/spec/EllipticCurve;
    new-instance v15, Ljava/security/spec/ECPoint;

    invoke-direct {v15, v9, v7}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 258
    .local v15, "g":Ljava/security/spec/ECPoint;
    move-object/from16 v16, v0

    .end local v0    # "p":Ljava/math/BigInteger;
    .local v16, "p":Ljava/math/BigInteger;
    new-instance v0, Ljava/security/spec/ECParameterSpec;

    const/4 v1, 0x1

    invoke-direct {v0, v14, v15, v2, v1}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    .line 259
    .local v0, "ecSpec":Ljava/security/spec/ECParameterSpec;
    return-object v0
.end method

.method public static getNistP256Params()Ljava/security/spec/ECParameterSpec;
    .locals 5

    .line 70
    const-string v0, "115792089210356248762697446949407573530086143415290314195533631308867097853951"

    const-string v1, "115792089210356248762697446949407573529996955224135760342422259061068512044369"

    const-string v2, "5ac635d8aa3a93e7b3ebbd55769886bc651d06b0cc53b0f63bce3c3e27d2604b"

    const-string v3, "6b17d1f2e12c4247f8bce6e563a440f277037d812deb33a0f4a13945d898c296"

    const-string v4, "4fe342e2fe1a7f9b8ee7eb4a7c0f9e162bce33576b315ececbb6406837bf51f5"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/crypto/tink/subtle/EllipticCurves;->getNistCurveSpec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    return-object v0
.end method

.method public static getNistP384Params()Ljava/security/spec/ECParameterSpec;
    .locals 5

    .line 79
    const-string v0, "39402006196394479212279040100143613805079739270465446667948293404245721771496870329047266088258938001861606973112319"

    const-string v1, "39402006196394479212279040100143613805079739270465446667946905279627659399113263569398956308152294913554433653942643"

    const-string v2, "b3312fa7e23ee7e4988e056be3f82d19181d9c6efe8141120314088f5013875ac656398d8a2ed19d2a85c8edd3ec2aef"

    const-string v3, "aa87ca22be8b05378eb1c71ef320ad746e1d3b628ba79b9859f741e082542a385502f25dbf55296c3a545e3872760ab7"

    const-string v4, "3617de4a96262c6f5d9e98bf9292dc29f8f41dbd289a147ce9da3113b5f0b8c00a60b1ce1d7e819d7a431d7c90ea0e5f"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/crypto/tink/subtle/EllipticCurves;->getNistCurveSpec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    return-object v0
.end method

.method public static getNistP521Params()Ljava/security/spec/ECParameterSpec;
    .locals 5

    .line 93
    const-string v0, "6864797660130609714981900799081393217269435300143305409394463459185543183397656052122559640661454554977296311391480858037121987999716643812574028291115057151"

    const-string v1, "6864797660130609714981900799081393217269435300143305409394463459185543183397655394245057746333217197532963996371363321113864768612440380340372808892707005449"

    const-string v2, "051953eb9618e1c9a1f929a21a0b68540eea2da725b99b315f3b8b489918ef109e156193951ec7e937b1652c0bd3bb1bf073573df883d2c34f1ef451fd46b503f00"

    const-string v3, "c6858e06b70404e9cd9e3ecb662395b4429c648139053fb521f828af606b4d3dbaa14b5e77efe75928fe1dc127a2ffa8de3348b3c1856a429bf97e7e31c2e5bd66"

    const-string v4, "11839296a789a3bc0045c8a5fb42c7d1bd998f54449579b446817afbd17273e662c97ee72995ef42640c550b9013fad0761353c7086a272c24088be94769fd16650"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/crypto/tink/subtle/EllipticCurves;->getNistCurveSpec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    return-object v0
.end method

.method public static getY(Ljava/math/BigInteger;ZLjava/security/spec/EllipticCurve;)Ljava/math/BigInteger;
    .locals 6
    .param p0, "x"    # Ljava/math/BigInteger;
    .param p1, "lsb"    # Z
    .param p2, "curve"    # Ljava/security/spec/EllipticCurve;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "lsb",
            "curve"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 368
    invoke-static {p2}, Lcom/google/crypto/tink/subtle/EllipticCurves;->getModulus(Ljava/security/spec/EllipticCurve;)Ljava/math/BigInteger;

    move-result-object v0

    .line 369
    .local v0, "p":Ljava/math/BigInteger;
    invoke-virtual {p2}, Ljava/security/spec/EllipticCurve;->getA()Ljava/math/BigInteger;

    move-result-object v1

    .line 370
    .local v1, "a":Ljava/math/BigInteger;
    invoke-virtual {p2}, Ljava/security/spec/EllipticCurve;->getB()Ljava/math/BigInteger;

    move-result-object v2

    .line 371
    .local v2, "b":Ljava/math/BigInteger;
    invoke-virtual {p0, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 372
    .local v3, "rhs":Ljava/math/BigInteger;
    invoke-static {v3, v0}, Lcom/google/crypto/tink/subtle/EllipticCurves;->modSqrt(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 373
    .local v4, "y":Ljava/math/BigInteger;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v5

    if-eq p1, v5, :cond_0

    .line 374
    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 376
    :cond_0
    return-object v4
.end method

.method public static isNistEcParameterSpec(Ljava/security/spec/ECParameterSpec;)Z
    .locals 1
    .param p0, "spec"    # Ljava/security/spec/ECParameterSpec;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "spec"
        }
    .end annotation

    .line 169
    invoke-static {}, Lcom/google/crypto/tink/subtle/EllipticCurves;->getNistP256Params()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/crypto/tink/subtle/EllipticCurves;->isSameEcParameterSpec(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECParameterSpec;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 170
    invoke-static {}, Lcom/google/crypto/tink/subtle/EllipticCurves;->getNistP384Params()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/crypto/tink/subtle/EllipticCurves;->isSameEcParameterSpec(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECParameterSpec;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 171
    invoke-static {}, Lcom/google/crypto/tink/subtle/EllipticCurves;->getNistP521Params()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/crypto/tink/subtle/EllipticCurves;->isSameEcParameterSpec(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECParameterSpec;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 169
    :goto_1
    return v0
.end method

.method public static isSameEcParameterSpec(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECParameterSpec;)Z
    .locals 2
    .param p0, "one"    # Ljava/security/spec/ECParameterSpec;
    .param p1, "two"    # Ljava/security/spec/ECParameterSpec;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "one",
            "two"
        }
    .end annotation

    .line 176
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/spec/EllipticCurve;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/spec/ECPoint;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v0

    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 176
    :goto_0
    return v0
.end method

.method public static isValidDerEncoding([B)Z
    .locals 9
    .param p0, "sig"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "sig"
        }
    .end annotation

    .line 508
    array-length v0, p0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ge v0, v2, :cond_0

    .line 518
    return v1

    .line 524
    :cond_0
    aget-byte v0, p0, v1

    const/16 v2, 0x30

    if-eq v0, v2, :cond_1

    .line 525
    return v1

    .line 529
    :cond_1
    const/4 v0, 0x1

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    .line 530
    .local v2, "totalLen":I
    const/4 v3, 0x1

    .line 531
    .local v3, "totalLenLen":I
    const/16 v4, 0x81

    const/4 v5, 0x2

    const/16 v6, 0x80

    if-ne v2, v4, :cond_2

    .line 534
    const/4 v3, 0x2

    .line 536
    aget-byte v4, p0, v5

    and-int/lit16 v2, v4, 0xff

    .line 537
    if-ge v2, v6, :cond_3

    .line 539
    return v1

    .line 541
    :cond_2
    if-eq v2, v6, :cond_f

    if-le v2, v4, :cond_3

    goto/16 :goto_0

    .line 547
    :cond_3
    array-length v4, p0

    sub-int/2addr v4, v0

    sub-int/2addr v4, v3

    if-eq v2, v4, :cond_4

    .line 548
    return v1

    .line 553
    :cond_4
    add-int/lit8 v4, v3, 0x1

    aget-byte v4, p0, v4

    if-eq v4, v5, :cond_5

    .line 554
    return v1

    .line 557
    :cond_5
    add-int/lit8 v4, v3, 0x1

    add-int/2addr v4, v0

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    .line 559
    .local v4, "rLen":I
    add-int/lit8 v7, v3, 0x1

    add-int/2addr v7, v0

    add-int/2addr v7, v0

    add-int/2addr v7, v4

    add-int/2addr v7, v0

    array-length v8, p0

    if-lt v7, v8, :cond_6

    .line 561
    return v1

    .line 564
    :cond_6
    if-nez v4, :cond_7

    .line 565
    return v1

    .line 568
    :cond_7
    add-int/lit8 v7, v3, 0x3

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    if-lt v7, v6, :cond_8

    .line 569
    return v1

    .line 573
    :cond_8
    if-le v4, v0, :cond_9

    add-int/lit8 v7, v3, 0x3

    aget-byte v7, p0, v7

    if-nez v7, :cond_9

    add-int/lit8 v7, v3, 0x4

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    if-ge v7, v6, :cond_9

    .line 574
    return v1

    .line 579
    :cond_9
    add-int/lit8 v7, v3, 0x3

    add-int/2addr v7, v4

    aget-byte v7, p0, v7

    if-eq v7, v5, :cond_a

    .line 580
    return v1

    .line 583
    :cond_a
    add-int/lit8 v5, v3, 0x1

    add-int/2addr v5, v0

    add-int/2addr v5, v0

    add-int/2addr v5, v4

    add-int/2addr v5, v0

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    .line 586
    .local v5, "sLen":I
    add-int/lit8 v7, v3, 0x1

    add-int/2addr v7, v0

    add-int/2addr v7, v0

    add-int/2addr v7, v4

    add-int/2addr v7, v0

    add-int/2addr v7, v0

    add-int/2addr v7, v5

    array-length v8, p0

    if-eq v7, v8, :cond_b

    .line 595
    return v1

    .line 598
    :cond_b
    if-nez v5, :cond_c

    .line 599
    return v1

    .line 602
    :cond_c
    add-int/lit8 v7, v3, 0x5

    add-int/2addr v7, v4

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    if-lt v7, v6, :cond_d

    .line 603
    return v1

    .line 607
    :cond_d
    if-le v5, v0, :cond_e

    add-int/lit8 v7, v3, 0x5

    add-int/2addr v7, v4

    aget-byte v7, p0, v7

    if-nez v7, :cond_e

    add-int/lit8 v7, v3, 0x6

    add-int/2addr v7, v4

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    if-ge v7, v6, :cond_e

    .line 610
    return v1

    .line 613
    :cond_e
    return v0

    .line 543
    .end local v4    # "rLen":I
    .end local v5    # "sLen":I
    :cond_f
    :goto_0
    return v1
.end method

.method protected static modSqrt(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 12
    .param p0, "x"    # Ljava/math/BigInteger;
    .param p1, "p"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "p"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 272
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 275
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 276
    const/4 v0, 0x0

    .line 279
    .local v0, "squareRoot":Ljava/math/BigInteger;
    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 280
    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object v1

    .line 282
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_2

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 285
    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 286
    .local v1, "q":Ljava/math/BigInteger;
    invoke-virtual {p0, v1, p1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 287
    .end local v1    # "q":Ljava/math/BigInteger;
    :cond_1
    goto/16 :goto_3

    :cond_2
    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 292
    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 293
    .local v2, "a":Ljava/math/BigInteger;
    const/4 v3, 0x0

    .line 294
    .local v3, "d":Ljava/math/BigInteger;
    sget-object v5, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v5

    .line 295
    .local v5, "q1":Ljava/math/BigInteger;
    const/4 v6, 0x0

    .line 297
    .local v6, "tries":I
    :goto_0
    invoke-virtual {v2, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 299
    sget-object v7, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v3, v7}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 300
    return-object v2

    .line 303
    :cond_3
    invoke-virtual {v3, v5, p1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 304
    .local v7, "t":Ljava/math/BigInteger;
    sget-object v8, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 306
    nop

    .line 328
    .end local v7    # "t":Ljava/math/BigInteger;
    sget-object v7, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 329
    .restart local v1    # "q":Ljava/math/BigInteger;
    move-object v7, v2

    .line 330
    .local v7, "u":Ljava/math/BigInteger;
    sget-object v8, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 331
    .local v8, "v":Ljava/math/BigInteger;
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v9

    sub-int/2addr v9, v4

    .local v9, "bit":I
    :goto_1
    if-ltz v9, :cond_5

    .line 333
    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 334
    .local v4, "tmp":Ljava/math/BigInteger;
    invoke-virtual {v7, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v8, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 335
    invoke-virtual {v4, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 336
    invoke-virtual {v1, v9}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 338
    invoke-virtual {v7, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v8, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 339
    invoke-virtual {v2, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 340
    move-object v7, v4

    .line 331
    .end local v4    # "tmp":Ljava/math/BigInteger;
    :cond_4
    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    .line 343
    .end local v9    # "bit":I
    :cond_5
    move-object v0, v7

    goto :goto_3

    .line 307
    .end local v1    # "q":Ljava/math/BigInteger;
    .end local v8    # "v":Ljava/math/BigInteger;
    .local v7, "t":Ljava/math/BigInteger;
    :cond_6
    sget-object v8, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "p is not prime"

    if-eqz v8, :cond_9

    .line 311
    sget-object v8, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v8}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 313
    add-int/lit8 v6, v6, 0x1

    .line 317
    const/16 v8, 0x80

    if-ne v6, v8, :cond_8

    .line 318
    const/16 v8, 0x50

    invoke-virtual {p1, v8}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v8

    if-eqz v8, :cond_7

    goto :goto_2

    .line 319
    :cond_7
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    invoke-direct {v1, v9}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 322
    .end local v7    # "t":Ljava/math/BigInteger;
    :cond_8
    :goto_2
    goto/16 :goto_0

    .line 309
    .restart local v7    # "t":Ljava/math/BigInteger;
    :cond_9
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    invoke-direct {v1, v9}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 348
    .end local v2    # "a":Ljava/math/BigInteger;
    .end local v3    # "d":Ljava/math/BigInteger;
    .end local v5    # "q1":Ljava/math/BigInteger;
    .end local v6    # "tries":I
    .end local v7    # "t":Ljava/math/BigInteger;
    :goto_3
    if-eqz v0, :cond_b

    invoke-virtual {v0, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_4

    .line 349
    :cond_a
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "Could not find a modular square root"

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 351
    :cond_b
    :goto_4
    return-object v0

    .line 273
    .end local v0    # "squareRoot":Ljava/math/BigInteger;
    :cond_c
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "p must be positive"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static pointDecode(Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;Lcom/google/crypto/tink/subtle/EllipticCurves$PointFormatType;[B)Ljava/security/spec/ECPoint;
    .locals 1
    .param p0, "curveType"    # Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;
    .param p1, "format"    # Lcom/google/crypto/tink/subtle/EllipticCurves$PointFormatType;
    .param p2, "encoded"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "curveType",
            "format",
            "encoded"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 671
    invoke-static {p0}, Lcom/google/crypto/tink/subtle/EllipticCurves;->getCurveSpec(Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/subtle/EllipticCurves;->pointDecode(Ljava/security/spec/EllipticCurve;Lcom/google/crypto/tink/subtle/EllipticCurves$PointFormatType;[B)Ljava/security/spec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public static pointDecode(Ljava/security/spec/EllipticCurve;Lcom/google/crypto/tink/subtle/EllipticCurves$PointFormatType;[B)Ljava/security/spec/ECPoint;
    .locals 8
    .param p0, "curve"    # Ljava/security/spec/EllipticCurve;
    .param p1, "format"    # Lcom/google/crypto/tink/subtle/EllipticCurves$PointFormatType;
    .param p2, "encoded"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "curve",
            "format",
            "encoded"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 688
    invoke-static {p0}, Lcom/google/crypto/tink/subtle/EllipticCurves;->fieldSizeInBytes(Ljava/security/spec/EllipticCurve;)I

    move-result v0

    .line 689
    .local v0, "coordinateSize":I
    sget-object v1, Lcom/google/crypto/tink/subtle/EllipticCurves$1;->$SwitchMap$com$google$crypto$tink$subtle$EllipticCurves$PointFormatType:[I

    invoke-virtual {p1}, Lcom/google/crypto/tink/subtle/EllipticCurves$PointFormatType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-string v2, "invalid point size"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v4, :cond_7

    const/4 v5, 0x2

    if-eq v1, v5, :cond_5

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 719
    invoke-static {p0}, Lcom/google/crypto/tink/subtle/EllipticCurves;->getModulus(Ljava/security/spec/EllipticCurve;)Ljava/math/BigInteger;

    move-result-object v1

    .line 720
    .local v1, "p":Ljava/math/BigInteger;
    array-length v6, p2

    add-int/lit8 v7, v0, 0x1

    if-ne v6, v7, :cond_3

    .line 724
    aget-byte v6, p2, v3

    if-ne v6, v5, :cond_0

    .line 725
    const/4 v2, 0x0

    .local v2, "lsb":Z
    goto :goto_0

    .line 726
    .end local v2    # "lsb":Z
    :cond_0
    aget-byte v3, p2, v3

    if-ne v3, v2, :cond_2

    .line 727
    const/4 v2, 0x1

    .line 731
    .restart local v2    # "lsb":Z
    :goto_0
    new-instance v3, Ljava/math/BigInteger;

    array-length v5, p2

    invoke-static {p2, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 732
    .local v3, "x":Ljava/math/BigInteger;
    invoke-virtual {v3}, Ljava/math/BigInteger;->signum()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-gez v4, :cond_1

    .line 735
    invoke-static {v3, v2, p0}, Lcom/google/crypto/tink/subtle/EllipticCurves;->getY(Ljava/math/BigInteger;ZLjava/security/spec/EllipticCurve;)Ljava/math/BigInteger;

    move-result-object v4

    .line 736
    .local v4, "y":Ljava/math/BigInteger;
    new-instance v5, Ljava/security/spec/ECPoint;

    invoke-direct {v5, v3, v4}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v5

    .line 733
    .end local v4    # "y":Ljava/math/BigInteger;
    :cond_1
    new-instance v4, Ljava/security/GeneralSecurityException;

    const-string v5, "x is out of range"

    invoke-direct {v4, v5}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 729
    .end local v2    # "lsb":Z
    .end local v3    # "x":Ljava/math/BigInteger;
    :cond_2
    new-instance v2, Ljava/security/GeneralSecurityException;

    const-string v3, "invalid format"

    invoke-direct {v2, v3}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 721
    :cond_3
    new-instance v2, Ljava/security/GeneralSecurityException;

    const-string v3, "compressed point has wrong length"

    invoke-direct {v2, v3}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 739
    .end local v1    # "p":Ljava/math/BigInteger;
    :cond_4
    new-instance v1, Ljava/security/GeneralSecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid format:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 707
    :cond_5
    array-length v1, p2

    mul-int/lit8 v5, v0, 0x2

    if-ne v1, v5, :cond_6

    .line 710
    new-instance v1, Ljava/math/BigInteger;

    invoke-static {p2, v3, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-direct {v1, v4, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 711
    .local v1, "x":Ljava/math/BigInteger;
    new-instance v2, Ljava/math/BigInteger;

    array-length v3, p2

    .line 712
    invoke-static {p2, v0, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-direct {v2, v4, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 713
    .local v2, "y":Ljava/math/BigInteger;
    new-instance v3, Ljava/security/spec/ECPoint;

    invoke-direct {v3, v1, v2}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 714
    .local v3, "point":Ljava/security/spec/ECPoint;
    invoke-static {v3, p0}, Lcom/google/crypto/tink/subtle/EllipticCurves;->checkPointOnCurve(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)V

    .line 715
    return-object v3

    .line 708
    .end local v1    # "x":Ljava/math/BigInteger;
    .end local v2    # "y":Ljava/math/BigInteger;
    .end local v3    # "point":Ljava/security/spec/ECPoint;
    :cond_6
    new-instance v1, Ljava/security/GeneralSecurityException;

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 692
    :cond_7
    array-length v1, p2

    mul-int/lit8 v5, v0, 0x2

    add-int/2addr v5, v4

    if-ne v1, v5, :cond_9

    .line 695
    aget-byte v1, p2, v3

    const/4 v2, 0x4

    if-ne v1, v2, :cond_8

    .line 698
    new-instance v1, Ljava/math/BigInteger;

    add-int/lit8 v2, v0, 0x1

    invoke-static {p2, v4, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-direct {v1, v4, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 699
    .restart local v1    # "x":Ljava/math/BigInteger;
    new-instance v2, Ljava/math/BigInteger;

    add-int/lit8 v3, v0, 0x1

    array-length v5, p2

    .line 700
    invoke-static {p2, v3, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-direct {v2, v4, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 701
    .restart local v2    # "y":Ljava/math/BigInteger;
    new-instance v3, Ljava/security/spec/ECPoint;

    invoke-direct {v3, v1, v2}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 702
    .restart local v3    # "point":Ljava/security/spec/ECPoint;
    invoke-static {v3, p0}, Lcom/google/crypto/tink/subtle/EllipticCurves;->checkPointOnCurve(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)V

    .line 703
    return-object v3

    .line 696
    .end local v1    # "x":Ljava/math/BigInteger;
    .end local v2    # "y":Ljava/math/BigInteger;
    .end local v3    # "point":Ljava/security/spec/ECPoint;
    :cond_8
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "invalid point format"

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 693
    :cond_9
    new-instance v1, Ljava/security/GeneralSecurityException;

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static pointEncode(Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;Lcom/google/crypto/tink/subtle/EllipticCurves$PointFormatType;Ljava/security/spec/ECPoint;)[B
    .locals 1
    .param p0, "curveType"    # Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;
    .param p1, "format"    # Lcom/google/crypto/tink/subtle/EllipticCurves$PointFormatType;
    .param p2, "point"    # Ljava/security/spec/ECPoint;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "curveType",
            "format",
            "point"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 755
    invoke-static {p0}, Lcom/google/crypto/tink/subtle/EllipticCurves;->getCurveSpec(Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/subtle/EllipticCurves;->pointEncode(Ljava/security/spec/EllipticCurve;Lcom/google/crypto/tink/subtle/EllipticCurves$PointFormatType;Ljava/security/spec/ECPoint;)[B

    move-result-object v0

    return-object v0
.end method

.method public static pointEncode(Ljava/security/spec/EllipticCurve;Lcom/google/crypto/tink/subtle/EllipticCurves$PointFormatType;Ljava/security/spec/ECPoint;)[B
    .locals 8
    .param p0, "curve"    # Ljava/security/spec/EllipticCurve;
    .param p1, "format"    # Lcom/google/crypto/tink/subtle/EllipticCurves$PointFormatType;
    .param p2, "point"    # Ljava/security/spec/ECPoint;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "curve",
            "format",
            "point"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 771
    invoke-static {p2, p0}, Lcom/google/crypto/tink/subtle/EllipticCurves;->checkPointOnCurve(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)V

    .line 772
    invoke-static {p0}, Lcom/google/crypto/tink/subtle/EllipticCurves;->fieldSizeInBytes(Ljava/security/spec/EllipticCurve;)I

    move-result v0

    .line 773
    .local v0, "coordinateSize":I
    sget-object v1, Lcom/google/crypto/tink/subtle/EllipticCurves$1;->$SwitchMap$com$google$crypto$tink$subtle$EllipticCurves$PointFormatType:[I

    invoke-virtual {p1}, Lcom/google/crypto/tink/subtle/EllipticCurves$PointFormatType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v4, 0x3

    if-ne v1, v4, :cond_1

    .line 804
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [B

    .line 805
    .local v1, "encoded":[B
    invoke-virtual {p2}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    .line 806
    .local v5, "x":[B
    add-int/lit8 v6, v0, 0x1

    array-length v7, v5

    sub-int/2addr v6, v7

    array-length v7, v5

    invoke-static {v5, v3, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 807
    invoke-virtual {p2}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v6

    if-eqz v6, :cond_0

    move v2, v4

    :cond_0
    int-to-byte v2, v2

    aput-byte v2, v1, v3

    .line 808
    return-object v1

    .line 811
    .end local v1    # "encoded":[B
    .end local v5    # "x":[B
    :cond_1
    new-instance v1, Ljava/security/GeneralSecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid format:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 787
    :cond_2
    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    .line 788
    .restart local v1    # "encoded":[B
    invoke-virtual {p2}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    .line 789
    .local v2, "x":[B
    array-length v4, v2

    if-le v4, v0, :cond_3

    .line 791
    array-length v4, v2

    sub-int/2addr v4, v0

    array-length v5, v2

    invoke-static {v2, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 793
    :cond_3
    invoke-virtual {p2}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    .line 794
    .local v4, "y":[B
    array-length v5, v4

    if-le v5, v0, :cond_4

    .line 796
    array-length v5, v4

    sub-int/2addr v5, v0

    array-length v6, v4

    invoke-static {v4, v5, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    .line 798
    :cond_4
    mul-int/lit8 v5, v0, 0x2

    array-length v6, v4

    sub-int/2addr v5, v6

    array-length v6, v4

    invoke-static {v4, v3, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 799
    array-length v5, v2

    sub-int v5, v0, v5

    array-length v6, v2

    invoke-static {v2, v3, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 800
    return-object v1

    .line 776
    .end local v1    # "encoded":[B
    .end local v2    # "x":[B
    .end local v4    # "y":[B
    :cond_5
    mul-int/lit8 v1, v0, 0x2

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 777
    .restart local v1    # "encoded":[B
    invoke-virtual {p2}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    .line 778
    .local v4, "x":[B
    invoke-virtual {p2}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    .line 780
    .local v5, "y":[B
    mul-int/lit8 v6, v0, 0x2

    add-int/2addr v6, v2

    array-length v2, v5

    sub-int/2addr v6, v2

    array-length v2, v5

    invoke-static {v5, v3, v1, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 781
    add-int/lit8 v2, v0, 0x1

    array-length v6, v4

    sub-int/2addr v2, v6

    array-length v6, v4

    invoke-static {v4, v3, v1, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 782
    const/4 v2, 0x4

    aput-byte v2, v1, v3

    .line 783
    return-object v1
.end method

.method private static toMinimalSignedNumber([B)[B
    .locals 4
    .param p0, "bs"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bs"
        }
    .end annotation

    .line 385
    const/4 v0, 0x0

    .line 386
    .local v0, "start":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-byte v1, p0, v0

    if-nez v1, :cond_0

    .line 387
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 389
    :cond_0
    array-length v1, p0

    if-ne v0, v1, :cond_1

    .line 390
    array-length v1, p0

    add-int/lit8 v0, v1, -0x1

    .line 393
    :cond_1
    const/4 v1, 0x0

    .line 395
    .local v1, "extraZero":I
    aget-byte v2, p0, v0

    const/16 v3, 0x80

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_2

    .line 397
    const/4 v1, 0x1

    .line 399
    :cond_2
    array-length v2, p0

    sub-int/2addr v2, v0

    add-int/2addr v2, v1

    new-array v2, v2, [B

    .line 400
    .local v2, "res":[B
    array-length v3, p0

    sub-int/2addr v3, v0

    invoke-static {p0, v0, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 401
    return-object v2
.end method

.method public static validatePublicKey(Ljava/security/interfaces/ECPublicKey;Ljava/security/interfaces/ECPrivateKey;)V
    .locals 2
    .param p0, "publicKey"    # Ljava/security/interfaces/ECPublicKey;
    .param p1, "privateKey"    # Ljava/security/interfaces/ECPrivateKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "publicKey",
            "privateKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 190
    invoke-static {p0, p1}, Lcom/google/crypto/tink/subtle/EllipticCurves;->validatePublicKeySpec(Ljava/security/interfaces/ECPublicKey;Ljava/security/interfaces/ECPrivateKey;)V

    .line 191
    invoke-interface {p0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v0

    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/crypto/tink/subtle/EllipticCurves;->checkPointOnCurve(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)V

    .line 192
    return-void
.end method

.method static validatePublicKeySpec(Ljava/security/interfaces/ECPublicKey;Ljava/security/interfaces/ECPrivateKey;)V
    .locals 4
    .param p0, "publicKey"    # Ljava/security/interfaces/ECPublicKey;
    .param p1, "privateKey"    # Ljava/security/interfaces/ECPrivateKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "publicKey",
            "privateKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 198
    :try_start_0
    invoke-interface {p0}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    .line 199
    .local v0, "publicKeySpec":Ljava/security/spec/ECParameterSpec;
    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    .line 200
    .local v1, "privateKeySpec":Ljava/security/spec/ECParameterSpec;
    invoke-static {v0, v1}, Lcom/google/crypto/tink/subtle/EllipticCurves;->isSameEcParameterSpec(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECParameterSpec;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 207
    .end local v0    # "publicKeySpec":Ljava/security/spec/ECParameterSpec;
    .end local v1    # "privateKeySpec":Ljava/security/spec/ECParameterSpec;
    nop

    .line 208
    return-void

    .line 201
    .restart local v0    # "publicKeySpec":Ljava/security/spec/ECParameterSpec;
    .restart local v1    # "privateKeySpec":Ljava/security/spec/ECParameterSpec;
    :cond_0
    new-instance v2, Ljava/security/GeneralSecurityException;

    const-string v3, "invalid public key spec"

    invoke-direct {v2, v3}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "publicKey":Ljava/security/interfaces/ECPublicKey;
    .end local p1    # "privateKey":Ljava/security/interfaces/ECPrivateKey;
    throw v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    .end local v0    # "publicKeySpec":Ljava/security/spec/ECParameterSpec;
    .end local v1    # "privateKeySpec":Ljava/security/spec/ECParameterSpec;
    .restart local p0    # "publicKey":Ljava/security/interfaces/ECPublicKey;
    .restart local p1    # "privateKey":Ljava/security/interfaces/ECPrivateKey;
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 206
    .local v0, "ex":Ljava/lang/RuntimeException;
    :goto_0
    new-instance v1, Ljava/security/GeneralSecurityException;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static validateSharedSecret([BLjava/security/interfaces/ECPrivateKey;)V
    .locals 5
    .param p0, "secret"    # [B
    .param p1, "privateKey"    # Ljava/security/interfaces/ECPrivateKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "secret",
            "privateKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 924
    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    .line 925
    .local v0, "privateKeyCurve":Ljava/security/spec/EllipticCurve;
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 926
    .local v1, "x":Ljava/math/BigInteger;
    invoke-virtual {v1}, Ljava/math/BigInteger;->signum()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/EllipticCurves;->getModulus(Ljava/security/spec/EllipticCurve;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-gez v3, :cond_0

    .line 930
    invoke-static {v1, v2, v0}, Lcom/google/crypto/tink/subtle/EllipticCurves;->getY(Ljava/math/BigInteger;ZLjava/security/spec/EllipticCurve;)Ljava/math/BigInteger;

    .line 931
    return-void

    .line 927
    :cond_0
    new-instance v2, Ljava/security/GeneralSecurityException;

    const-string v3, "shared secret is out of range"

    invoke-direct {v2, v3}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
