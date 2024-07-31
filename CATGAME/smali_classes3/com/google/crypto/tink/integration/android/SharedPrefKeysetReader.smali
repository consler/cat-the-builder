.class public final Lcom/google/crypto/tink/integration/android/SharedPrefKeysetReader;
.super Ljava/lang/Object;
.source "SharedPrefKeysetReader.java"

# interfaces
.implements Lcom/google/crypto/tink/KeysetReader;


# instance fields
.field private final keysetName:Ljava/lang/String;

.field private final sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keysetName"    # Ljava/lang/String;
    .param p3, "prefFilename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "keysetName",
            "prefFilename"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    if-eqz p2, :cond_1

    .line 54
    iput-object p2, p0, Lcom/google/crypto/tink/integration/android/SharedPrefKeysetReader;->keysetName:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 57
    .local v0, "appContext":Landroid/content/Context;
    if-nez p3, :cond_0

    .line 58
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/google/crypto/tink/integration/android/SharedPrefKeysetReader;->sharedPreferences:Landroid/content/SharedPreferences;

    goto :goto_0

    .line 60
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/google/crypto/tink/integration/android/SharedPrefKeysetReader;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 63
    :goto_0
    return-void

    .line 52
    .end local v0    # "appContext":Landroid/content/Context;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keysetName cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readPref()[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/google/crypto/tink/integration/android/SharedPrefKeysetReader;->sharedPreferences:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/google/crypto/tink/integration/android/SharedPrefKeysetReader;->keysetName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "keysetHex":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 73
    invoke-static {v2}, Lcom/google/crypto/tink/subtle/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 70
    :cond_0
    new-instance v3, Ljava/io/FileNotFoundException;

    const-string v4, "can\'t read keyset; the pref value %s does not exist"

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/crypto/tink/integration/android/SharedPrefKeysetReader;->keysetName:Ljava/lang/String;

    aput-object v6, v5, v0

    .line 71
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .end local v2    # "keysetHex":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    .line 76
    .local v2, "ex":Ljava/lang/RuntimeException;
    :goto_0
    new-instance v3, Ljava/io/CharConversionException;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/crypto/tink/integration/android/SharedPrefKeysetReader;->keysetName:Ljava/lang/String;

    aput-object v4, v1, v0

    .line 77
    const-string v0, "can\'t read keyset; the pref value %s is not a valid hex string"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public read()Lcom/google/crypto/tink/proto/Keyset;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Lcom/google/crypto/tink/integration/android/SharedPrefKeysetReader;->readPref()[B

    move-result-object v0

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/crypto/tink/proto/Keyset;->parseFrom([BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/Keyset;

    move-result-object v0

    return-object v0
.end method

.method public readEncrypted()Lcom/google/crypto/tink/proto/EncryptedKeyset;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Lcom/google/crypto/tink/integration/android/SharedPrefKeysetReader;->readPref()[B

    move-result-object v0

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/crypto/tink/proto/EncryptedKeyset;->parseFrom([BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/EncryptedKeyset;

    move-result-object v0

    return-object v0
.end method
