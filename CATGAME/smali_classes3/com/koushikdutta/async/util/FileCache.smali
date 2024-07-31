.class public Lcom/koushikdutta/async/util/FileCache;
.super Ljava/lang/Object;
.source "FileCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/util/FileCache$InternalCache;,
        Lcom/koushikdutta/async/util/FileCache$Snapshot;,
        Lcom/koushikdutta/async/util/FileCache$CacheEntry;
    }
.end annotation


# static fields
.field private static hashAlgorithm:Ljava/lang/String;

.field static messageDigest:Ljava/security/MessageDigest;


# instance fields
.field blockSize:J

.field cache:Lcom/koushikdutta/async/util/FileCache$InternalCache;

.field dateCompare:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field directory:Ljava/io/File;

.field loadAsync:Z

.field loading:Z

.field random:Ljava/util/Random;

.field size:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    const-string v0, "MD5"

    sput-object v0, Lcom/koushikdutta/async/util/FileCache;->hashAlgorithm:Ljava/lang/String;

    .line 68
    :try_start_0
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    sput-object v0, Lcom/koushikdutta/async/util/FileCache;->messageDigest:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-static {}, Lcom/koushikdutta/async/util/FileCache;->findAlternativeMessageDigest()Ljava/security/MessageDigest;

    move-result-object v1

    sput-object v1, Lcom/koushikdutta/async/util/FileCache;->messageDigest:Ljava/security/MessageDigest;

    .line 71
    if-eqz v1, :cond_0

    .line 75
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_0
    :try_start_1
    sget-object v0, Lcom/koushikdutta/async/util/FileCache;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/MessageDigest;

    sput-object v0, Lcom/koushikdutta/async/util/FileCache;->messageDigest:Ljava/security/MessageDigest;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 78
    goto :goto_1

    .line 77
    :catch_1
    move-exception v0

    .line 79
    :goto_1
    return-void

    .line 72
    .restart local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Ljava/io/File;JZ)V
    .locals 2
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "size"    # J
    .param p4, "loadAsync"    # Z

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/util/FileCache;->random:Ljava/util/Random;

    .line 198
    const-wide/16 v0, 0x1000

    iput-wide v0, p0, Lcom/koushikdutta/async/util/FileCache;->blockSize:J

    .line 228
    new-instance v0, Lcom/koushikdutta/async/util/FileCache$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/util/FileCache$1;-><init>(Lcom/koushikdutta/async/util/FileCache;)V

    iput-object v0, p0, Lcom/koushikdutta/async/util/FileCache;->dateCompare:Ljava/util/Comparator;

    .line 279
    iput-object p1, p0, Lcom/koushikdutta/async/util/FileCache;->directory:Ljava/io/File;

    .line 280
    iput-wide p2, p0, Lcom/koushikdutta/async/util/FileCache;->size:J

    .line 281
    iput-boolean p4, p0, Lcom/koushikdutta/async/util/FileCache;->loadAsync:Z

    .line 282
    new-instance v0, Lcom/koushikdutta/async/util/FileCache$InternalCache;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/util/FileCache$InternalCache;-><init>(Lcom/koushikdutta/async/util/FileCache;)V

    iput-object v0, p0, Lcom/koushikdutta/async/util/FileCache;->cache:Lcom/koushikdutta/async/util/FileCache$InternalCache;

    .line 284
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 285
    invoke-direct {p0}, Lcom/koushikdutta/async/util/FileCache;->doLoad()V

    .line 286
    return-void
.end method

.method private doLoad()V
    .locals 1

    .line 265
    iget-boolean v0, p0, Lcom/koushikdutta/async/util/FileCache;->loadAsync:Z

    if-eqz v0, :cond_0

    .line 266
    new-instance v0, Lcom/koushikdutta/async/util/FileCache$2;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/util/FileCache$2;-><init>(Lcom/koushikdutta/async/util/FileCache;)V

    .line 271
    invoke-virtual {v0}, Lcom/koushikdutta/async/util/FileCache$2;->start()V

    goto :goto_0

    .line 274
    :cond_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/util/FileCache;->load()V

    .line 276
    :goto_0
    return-void
.end method

.method private static findAlternativeMessageDigest()Ljava/security/MessageDigest;
    .locals 7

    .line 49
    sget-object v0, Lcom/koushikdutta/async/util/FileCache;->hashAlgorithm:Ljava/lang/String;

    const-string v1, "MD5"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 51
    .local v3, "provider":Ljava/security/Provider;
    invoke-virtual {v3}, Ljava/security/Provider;->getServices()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/Provider$Service;

    .line 52
    .local v5, "service":Ljava/security/Provider$Service;
    invoke-virtual {v5}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/koushikdutta/async/util/FileCache;->hashAlgorithm:Ljava/lang/String;

    .line 54
    :try_start_0
    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .local v6, "messageDigest":Ljava/security/MessageDigest;
    if-eqz v6, :cond_0

    .line 56
    return-object v6

    .line 58
    .end local v6    # "messageDigest":Ljava/security/MessageDigest;
    :cond_0
    goto :goto_2

    .line 57
    :catch_0
    move-exception v6

    .line 59
    .end local v5    # "service":Ljava/security/Provider$Service;
    :goto_2
    goto :goto_1

    .line 50
    .end local v3    # "provider":Ljava/security/Provider;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 62
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static varargs removeFiles([Ljava/io/File;)V
    .locals 3
    .param p0, "files"    # [Ljava/io/File;

    .line 107
    if-nez p0, :cond_0

    .line 108
    return-void

    .line 109
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 110
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 109
    .end local v2    # "file":Ljava/io/File;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    :cond_1
    return-void
.end method

.method public static varargs declared-synchronized toKeyString([Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .param p0, "parts"    # [Ljava/lang/Object;

    const-class v0, Lcom/koushikdutta/async/util/FileCache;

    monitor-enter v0

    .line 82
    :try_start_0
    sget-object v1, Lcom/koushikdutta/async/util/FileCache;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 83
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 84
    .local v3, "part":Ljava/lang/Object;
    sget-object v4, Lcom/koushikdutta/async/util/FileCache;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 83
    .end local v3    # "part":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 86
    :cond_0
    sget-object v1, Lcom/koushikdutta/async/util/FileCache;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 87
    .local v1, "md5bytes":[B
    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v2

    .line 81
    .end local v1    # "md5bytes":[B
    .end local p0    # "parts":[Ljava/lang/Object;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/koushikdutta/async/util/FileCache;->directory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/koushikdutta/async/util/FileCache;->removeFiles([Ljava/io/File;)V

    .line 294
    iget-object v0, p0, Lcom/koushikdutta/async/util/FileCache;->cache:Lcom/koushikdutta/async/util/FileCache$InternalCache;

    invoke-virtual {v0}, Lcom/koushikdutta/async/util/FileCache$InternalCache;->evictAll()V

    .line 295
    return-void
.end method

.method public varargs commitTempFiles(Ljava/lang/String;[Ljava/io/File;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "tempFiles"    # [Ljava/io/File;

    .line 168
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/util/FileCache;->removePartFiles(Ljava/lang/String;)V

    .line 171
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 172
    aget-object v1, p2, v0

    .line 173
    .local v1, "tmp":Ljava/io/File;
    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/util/FileCache;->getPartFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 174
    .local v2, "partFile":Ljava/io/File;
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 176
    invoke-static {p2}, Lcom/koushikdutta/async/util/FileCache;->removeFiles([Ljava/io/File;)V

    .line 177
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/util/FileCache;->remove(Ljava/lang/String;)V

    .line 178
    return-void

    .line 180
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/koushikdutta/async/util/FileCache;->remove(Ljava/lang/String;)V

    .line 181
    iget-object v3, p0, Lcom/koushikdutta/async/util/FileCache;->cache:Lcom/koushikdutta/async/util/FileCache$InternalCache;

    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/util/FileCache;->getPartName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/koushikdutta/async/util/FileCache$CacheEntry;

    invoke-direct {v5, p0, v2}, Lcom/koushikdutta/async/util/FileCache$CacheEntry;-><init>(Lcom/koushikdutta/async/util/FileCache;Ljava/io/File;)V

    invoke-virtual {v3, v4, v5}, Lcom/koushikdutta/async/util/FileCache$InternalCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .end local v1    # "tmp":Ljava/io/File;
    .end local v2    # "partFile":Ljava/io/File;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public exists(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 127
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/util/FileCache;->getPartFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public exists(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "part"    # I

    .line 123
    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/async/util/FileCache;->getPartFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/String;)Ljava/io/FileInputStream;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    new-instance v0, Ljava/io/FileInputStream;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/koushikdutta/async/util/FileCache;->getPartFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/util/FileCache;->touch(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public get(Ljava/lang/String;I)[Ljava/io/FileInputStream;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    new-array v0, p2, [Ljava/io/FileInputStream;

    .line 147
    .local v0, "ret":[Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 148
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {p0, p1, v1}, Lcom/koushikdutta/async/util/FileCache;->getPartFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/koushikdutta/async/util/FileCache;->touch(Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v2, v0, v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 151
    .end local v1    # "i":I
    :catch_0
    move-exception v1

    .line 153
    .local v1, "e":Ljava/io/IOException;
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_0

    aget-object v5, v0, v4

    .line 154
    .local v5, "fin":Ljava/io/FileInputStream;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/io/Closeable;

    aput-object v5, v6, v3

    invoke-static {v6}, Lcom/koushikdutta/async/util/StreamUtility;->closeQuietly([Ljava/io/Closeable;)V

    .line 153
    .end local v5    # "fin":Ljava/io/FileInputStream;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 156
    :cond_0
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/util/FileCache;->remove(Ljava/lang/String;)V

    .line 157
    throw v1

    .line 158
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    nop

    .line 160
    return-object v0
.end method

.method public getFile(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 141
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/util/FileCache;->getPartFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/util/FileCache;->touch(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method getPartFile(Ljava/lang/String;I)Ljava/io/File;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "part"    # I

    .line 195
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/koushikdutta/async/util/FileCache;->directory:Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/async/util/FileCache;->getPartName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method getPartName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "part"    # I

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTempFile()Ljava/io/File;
    .locals 5

    .line 94
    :goto_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/koushikdutta/async/util/FileCache;->directory:Ljava/io/File;

    new-instance v2, Ljava/math/BigInteger;

    const/16 v3, 0x80

    iget-object v4, p0, Lcom/koushikdutta/async/util/FileCache;->random:Ljava/util/Random;

    invoke-direct {v2, v3, v4}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v0

    .local v1, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    return-object v1
.end method

.method public getTempFiles(I)[Ljava/io/File;
    .locals 3
    .param p1, "count"    # I

    .line 99
    new-array v0, p1, [Ljava/io/File;

    .line 100
    .local v0, "ret":[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/koushikdutta/async/util/FileCache;->getTempFile()Ljava/io/File;

    move-result-object v2

    aput-object v2, v0, v1

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 298
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 299
    .local v0, "ret":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/koushikdutta/async/util/FileCache;->directory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 300
    .local v1, "files":[Ljava/io/File;
    if-nez v1, :cond_0

    .line 301
    return-object v0

    .line 302
    :cond_0
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 303
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 304
    .local v6, "name":Ljava/lang/String;
    const/16 v7, 0x2e

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 305
    .local v7, "last":I
    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    .line 306
    invoke-virtual {v6, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 302
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "last":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 308
    :cond_2
    return-object v0
.end method

.method load()V
    .locals 8

    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/async/util/FileCache;->loading:Z

    .line 245
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/koushikdutta/async/util/FileCache;->directory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    .local v1, "files":[Ljava/io/File;
    if-nez v1, :cond_0

    .line 260
    iput-boolean v0, p0, Lcom/koushikdutta/async/util/FileCache;->loading:Z

    .line 247
    return-void

    .line 248
    :cond_0
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 249
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    invoke-static {v2, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 250
    iget-object v3, p0, Lcom/koushikdutta/async/util/FileCache;->dateCompare:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 252
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 253
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 254
    .local v5, "name":Ljava/lang/String;
    new-instance v6, Lcom/koushikdutta/async/util/FileCache$CacheEntry;

    invoke-direct {v6, p0, v4}, Lcom/koushikdutta/async/util/FileCache$CacheEntry;-><init>(Lcom/koushikdutta/async/util/FileCache;Ljava/io/File;)V

    .line 255
    .local v6, "entry":Lcom/koushikdutta/async/util/FileCache$CacheEntry;
    iget-object v7, p0, Lcom/koushikdutta/async/util/FileCache;->cache:Lcom/koushikdutta/async/util/FileCache$InternalCache;

    invoke-virtual {v7, v5, v6}, Lcom/koushikdutta/async/util/FileCache$InternalCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iget-object v7, p0, Lcom/koushikdutta/async/util/FileCache;->cache:Lcom/koushikdutta/async/util/FileCache$InternalCache;

    invoke-virtual {v7, v5}, Lcom/koushikdutta/async/util/FileCache$InternalCache;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    nop

    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "entry":Lcom/koushikdutta/async/util/FileCache$CacheEntry;
    goto :goto_0

    .line 260
    .end local v1    # "files":[Ljava/io/File;
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    :cond_1
    iput-boolean v0, p0, Lcom/koushikdutta/async/util/FileCache;->loading:Z

    .line 261
    nop

    .line 262
    return-void

    .line 260
    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lcom/koushikdutta/async/util/FileCache;->loading:Z

    throw v1
.end method

.method public remove(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/koushikdutta/async/util/FileCache;->cache:Lcom/koushikdutta/async/util/FileCache$InternalCache;

    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/util/FileCache;->getPartName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/util/FileCache$InternalCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/util/FileCache;->removePartFiles(Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method removePartFiles(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 186
    const/4 v0, 0x0

    .line 188
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/util/FileCache;->getPartFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    move-object v2, v1

    .local v2, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 192
    :cond_0
    return-void
.end method

.method public setBlockSize(J)V
    .locals 0
    .param p1, "blockSize"    # J

    .line 200
    iput-wide p1, p0, Lcom/koushikdutta/async/util/FileCache;->blockSize:J

    .line 201
    return-void
.end method

.method public setMaxSize(J)V
    .locals 1
    .param p1, "maxSize"    # J

    .line 312
    iget-object v0, p0, Lcom/koushikdutta/async/util/FileCache;->cache:Lcom/koushikdutta/async/util/FileCache$InternalCache;

    invoke-virtual {v0, p1, p2}, Lcom/koushikdutta/async/util/FileCache$InternalCache;->setMaxSize(J)V

    .line 313
    invoke-direct {p0}, Lcom/koushikdutta/async/util/FileCache;->doLoad()V

    .line 314
    return-void
.end method

.method public size()J
    .locals 2

    .line 289
    iget-object v0, p0, Lcom/koushikdutta/async/util/FileCache;->cache:Lcom/koushikdutta/async/util/FileCache$InternalCache;

    invoke-virtual {v0}, Lcom/koushikdutta/async/util/FileCache$InternalCache;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public touch(Ljava/io/File;)Ljava/io/File;
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .line 131
    iget-object v0, p0, Lcom/koushikdutta/async/util/FileCache;->cache:Lcom/koushikdutta/async/util/FileCache$InternalCache;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/util/FileCache$InternalCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    .line 133
    return-object p1
.end method
