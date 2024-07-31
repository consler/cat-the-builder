.class public Lcom/huawei/hianalytics/ab/bc/ab/cd;
.super Ljava/lang/Object;


# direct methods
.method static ab(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "EncryptUtil"

    :try_start_0
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/huawei/hianalytics/ab/bc/ab/de;->ab([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p0, "sha256Digest(): NoSuch Algorithm Exception"

    goto :goto_0

    :catch_1
    move-exception p0

    const-string p0, "sha256Digest(): UnsupportedEncodingException: Exception when writing the log file."

    :goto_0
    invoke-static {v0, p0}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->cd(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method static ab([C[B)Ljava/lang/String;
    .locals 4

    const-string v0, "EncryptUtil"

    const/16 v1, 0x2710

    :try_start_0
    new-instance v2, Ljavax/crypto/spec/PBEKeySpec;

    const/16 v3, 0x80

    invoke-direct {v2, p0, p1, v1, v3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    const-string p0, "PBKDF2WithHmacSHA1"

    invoke-static {p0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p0

    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lcom/huawei/hianalytics/ab/bc/ab/de;->ab([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p0, "getAuthToken() encryptPBKDF2 No such algorithm!"

    goto :goto_0

    :catch_1
    move-exception p0

    const-string p0, "getAuthToken() encryptPBKDF2 Invalid key specification !"

    :goto_0
    invoke-static {v0, p0}, Lcom/huawei/hianalytics/ab/bc/ef/ab;->de(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
