.class final Lcom/google/common/hash/MacHashFunction;
.super Lcom/google/common/hash/AbstractHashFunction;
.source "MacHashFunction.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/MacHashFunction$MacHasher;
    }
.end annotation


# instance fields
.field private final bits:I

.field private final key:Ljava/security/Key;

.field private final prototype:Ljavax/crypto/Mac;

.field private final supportsClone:Z

.field private final toString:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/security/Key;Ljava/lang/String;)V
    .locals 1
    .param p1, "algorithmName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "toString"    # Ljava/lang/String;

    .line 45
    invoke-direct {p0}, Lcom/google/common/hash/AbstractHashFunction;-><init>()V

    .line 46
    invoke-static {p1, p2}, Lcom/google/common/hash/MacHashFunction;->getMac(Ljava/lang/String;Ljava/security/Key;)Ljavax/crypto/Mac;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/hash/MacHashFunction;->prototype:Ljavax/crypto/Mac;

    .line 47
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Key;

    iput-object v0, p0, Lcom/google/common/hash/MacHashFunction;->key:Ljava/security/Key;

    .line 48
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/common/hash/MacHashFunction;->toString:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lcom/google/common/hash/MacHashFunction;->prototype:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/common/hash/MacHashFunction;->bits:I

    .line 50
    iget-object v0, p0, Lcom/google/common/hash/MacHashFunction;->prototype:Ljavax/crypto/Mac;

    invoke-static {v0}, Lcom/google/common/hash/MacHashFunction;->supportsClone(Ljavax/crypto/Mac;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/common/hash/MacHashFunction;->supportsClone:Z

    .line 51
    return-void
.end method

.method private static getMac(Ljava/lang/String;Ljava/security/Key;)Ljavax/crypto/Mac;
    .locals 2
    .param p0, "algorithmName"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/security/Key;

    .line 69
    :try_start_0
    invoke-static {p0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 70
    .local v0, "mac":Ljavax/crypto/Mac;
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    return-object v0

    .line 74
    .end local v0    # "mac":Ljavax/crypto/Mac;
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 72
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :catch_1
    move-exception v0

    .line 73
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static supportsClone(Ljavax/crypto/Mac;)Z
    .locals 2
    .param p0, "mac"    # Ljavax/crypto/Mac;

    .line 60
    :try_start_0
    invoke-virtual {p0}, Ljavax/crypto/Mac;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    const/4 v0, 0x1

    return v0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public bits()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/google/common/hash/MacHashFunction;->bits:I

    return v0
.end method

.method public newHasher()Lcom/google/common/hash/Hasher;
    .locals 4

    .line 81
    iget-boolean v0, p0, Lcom/google/common/hash/MacHashFunction;->supportsClone:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 83
    :try_start_0
    new-instance v0, Lcom/google/common/hash/MacHashFunction$MacHasher;

    iget-object v2, p0, Lcom/google/common/hash/MacHashFunction;->prototype:Ljavax/crypto/Mac;

    invoke-virtual {v2}, Ljavax/crypto/Mac;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/crypto/Mac;

    invoke-direct {v0, v2, v1}, Lcom/google/common/hash/MacHashFunction$MacHasher;-><init>(Ljavax/crypto/Mac;Lcom/google/common/hash/MacHashFunction$1;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 84
    :catch_0
    move-exception v0

    .line 88
    :cond_0
    new-instance v0, Lcom/google/common/hash/MacHashFunction$MacHasher;

    iget-object v2, p0, Lcom/google/common/hash/MacHashFunction;->prototype:Ljavax/crypto/Mac;

    invoke-virtual {v2}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/hash/MacHashFunction;->key:Ljava/security/Key;

    invoke-static {v2, v3}, Lcom/google/common/hash/MacHashFunction;->getMac(Ljava/lang/String;Ljava/security/Key;)Ljavax/crypto/Mac;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/google/common/hash/MacHashFunction$MacHasher;-><init>(Ljavax/crypto/Mac;Lcom/google/common/hash/MacHashFunction$1;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/google/common/hash/MacHashFunction;->toString:Ljava/lang/String;

    return-object v0
.end method
