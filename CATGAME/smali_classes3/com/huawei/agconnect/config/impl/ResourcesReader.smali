.class Lcom/huawei/agconnect/config/impl/ResourcesReader;
.super Ljava/lang/Object;
.source "ResourcesReader.java"

# interfaces
.implements Lcom/huawei/agconnect/config/impl/ConfigReader;


# static fields
.field private static final RES_NAME_PREFIX:Ljava/lang/String; = "agc_"

.field private static final RES_TYPE_STRING:Ljava/lang/String; = "string"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/huawei/agconnect/config/impl/ResourcesReader;->mContext:Landroid/content/Context;

    .line 28
    return-void
.end method

.method private static getResName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .line 52
    const-string v0, ""

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "agc_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/agconnect/config/impl/ResourcesReader;->sha256([B)[B

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/agconnect/config/impl/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 56
    :catch_0
    move-exception v1

    .line 58
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    return-object v0

    .line 53
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 55
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    return-object v0
.end method

.method private static sha256([B)[B
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 63
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/String;

    .line 32
    invoke-static {p1}, Lcom/huawei/agconnect/config/impl/ResourcesReader;->getResName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "resName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    return-object p2

    .line 37
    :cond_0
    iget-object v1, p0, Lcom/huawei/agconnect/config/impl/ResourcesReader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, "pkgName":Ljava/lang/String;
    iget-object v2, p0, Lcom/huawei/agconnect/config/impl/ResourcesReader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "string"

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 39
    .local v2, "resId":I
    if-nez v2, :cond_1

    .line 40
    return-object p2

    .line 44
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/huawei/agconnect/config/impl/ResourcesReader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 45
    :catch_0
    move-exception v3

    .line 46
    .local v3, "e":Landroid/content/res/Resources$NotFoundException;
    return-object p2
.end method
