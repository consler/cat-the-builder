.class Lcom/huawei/agconnect/config/impl/SecurityResourcesReader;
.super Lcom/huawei/agconnect/config/impl/ResourcesReader;
.source "SecurityResourcesReader.java"


# static fields
.field private static final RX_PATH:Ljava/lang/String; = "/AD91D45E3E72DB6989DDCB13287E75061FABCB933D886E6C6ABEF0939B577138"

.field private static final RY_PATH:Ljava/lang/String; = "/B314B3BF013DF5AC4134E880AF3D2B7C9FFBE8F0305EAC1C898145E2BCF1F21C"

.field private static final RZ_PATH:Ljava/lang/String; = "/C767BD8FDF53E53D059BE95B09E2A71056F5F180AECC62836B287ACA5793421B"

.field private static final SL_PATH:Ljava/lang/String; = "/DCB3E6D4C2CF80F30D89CDBC412C964DA8381BB84668769391FBCC3E329AD0FD"

.field private static final TAG:Ljava/lang/String; = "SecurityResourcesReader"


# instance fields
.field private final mConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfigsLock:Ljava/lang/Object;

.field private mKey:Ljavax/crypto/SecretKey;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .line 38
    invoke-direct {p0, p1}, Lcom/huawei/agconnect/config/impl/ResourcesReader;-><init>(Landroid/content/Context;)V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/huawei/agconnect/config/impl/SecurityResourcesReader;->mConfigs:Ljava/util/Map;

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/agconnect/config/impl/SecurityResourcesReader;->mConfigsLock:Ljava/lang/Object;

    .line 41
    :try_start_0
    const-string v0, "/AD91D45E3E72DB6989DDCB13287E75061FABCB933D886E6C6ABEF0939B577138"

    invoke-direct {p0, v0}, Lcom/huawei/agconnect/config/impl/SecurityResourcesReader;->getStringSuper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "rxHex":Ljava/lang/String;
    const-string v1, "/B314B3BF013DF5AC4134E880AF3D2B7C9FFBE8F0305EAC1C898145E2BCF1F21C"

    invoke-direct {p0, v1}, Lcom/huawei/agconnect/config/impl/SecurityResourcesReader;->getStringSuper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "ryHex":Ljava/lang/String;
    const-string v2, "/C767BD8FDF53E53D059BE95B09E2A71056F5F180AECC62836B287ACA5793421B"

    invoke-direct {p0, v2}, Lcom/huawei/agconnect/config/impl/SecurityResourcesReader;->getStringSuper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, "rzHex":Ljava/lang/String;
    const-string v3, "/DCB3E6D4C2CF80F30D89CDBC412C964DA8381BB84668769391FBCC3E329AD0FD"

    invoke-direct {p0, v3}, Lcom/huawei/agconnect/config/impl/SecurityResourcesReader;->getStringSuper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 45
    .local v3, "slHex":Ljava/lang/String;
    invoke-static {v0}, Lcom/huawei/agconnect/config/impl/Hex;->decodeHexString(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v1}, Lcom/huawei/agconnect/config/impl/Hex;->decodeHexString(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v2}, Lcom/huawei/agconnect/config/impl/Hex;->decodeHexString(Ljava/lang/String;)[B

    move-result-object v6

    .line 46
    invoke-static {v3}, Lcom/huawei/agconnect/config/impl/Hex;->decodeHexString(Ljava/lang/String;)[B

    move-result-object v7

    .line 45
    invoke-static {v4, v5, v6, v7}, Lcom/huawei/agconnect/config/impl/Keys;->buildAesKey([B[B[B[B)Ljavax/crypto/SecretKey;

    move-result-object v4

    iput-object v4, p0, Lcom/huawei/agconnect/config/impl/SecurityResourcesReader;->mKey:Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .end local v0    # "rxHex":Ljava/lang/String;
    .end local v1    # "ryHex":Ljava/lang/String;
    .end local v2    # "rzHex":Ljava/lang/String;
    .end local v3    # "slHex":Ljava/lang/String;
    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SecurityResourcesReader"

    const-string v2, "Exception when reading the \'K&I\' for \'Config\'."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huawei/agconnect/config/impl/SecurityResourcesReader;->mKey:Ljavax/crypto/SecretKey;

    .line 51
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private static decryptAes128(Ljavax/crypto/SecretKey;[B)[B
    .locals 6
    .param p0, "key"    # Ljavax/crypto/SecretKey;
    .param p1, "cipherText"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 98
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 102
    const/16 v0, 0x11

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 104
    .local v0, "iv":[B
    const-string v2, "AES/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 105
    .local v2, "cipher":Ljavax/crypto/Cipher;
    const/4 v3, 0x2

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v2, v3, p0, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 106
    array-length v3, v0

    add-int/2addr v3, v1

    array-length v4, p1

    array-length v5, v0

    sub-int/2addr v4, v5

    sub-int/2addr v4, v1

    invoke-virtual {v2, p1, v3, v4}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v1

    return-object v1

    .line 99
    .end local v0    # "iv":[B
    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key or cipherText must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getStringSuper(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 85
    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Lcom/huawei/agconnect/config/impl/ResourcesReader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/huawei/agconnect/config/impl/SecurityResourcesReader;->mKey:Ljavax/crypto/SecretKey;

    if-nez v0, :cond_0

    .line 56
    return-object p2

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/huawei/agconnect/config/impl/SecurityResourcesReader;->mConfigsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 60
    :try_start_0
    iget-object v1, p0, Lcom/huawei/agconnect/config/impl/SecurityResourcesReader;->mConfigs:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 61
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 62
    monitor-exit v0

    return-object v1

    .line 65
    :cond_1
    invoke-direct {p0, p1}, Lcom/huawei/agconnect/config/impl/SecurityResourcesReader;->getStringSuper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "cipherHex":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 67
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p2

    .line 71
    :cond_2
    :try_start_1
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/huawei/agconnect/config/impl/SecurityResourcesReader;->mKey:Ljavax/crypto/SecretKey;

    invoke-static {v2}, Lcom/huawei/agconnect/config/impl/Hex;->decodeHexString(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v4, v5}, Lcom/huawei/agconnect/config/impl/SecurityResourcesReader;->decryptAes128(Ljavax/crypto/SecretKey;[B)[B

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v1, v3

    .line 72
    iget-object v3, p0, Lcom/huawei/agconnect/config/impl/SecurityResourcesReader;->mConfigs:Ljava/util/Map;

    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    :try_start_2
    monitor-exit v0

    return-object v1

    .line 74
    :catch_0
    move-exception v3

    .line 75
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "SecurityResourcesReader"

    const-string v5, "Exception when reading the \'V\' for \'Config\'."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    monitor-exit v0

    return-object p2

    .line 78
    .end local v1    # "value":Ljava/lang/String;
    .end local v2    # "cipherHex":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
