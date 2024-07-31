.class public final Landroidx/security/crypto/EncryptedFile$Builder;
.super Ljava/lang/Object;
.source "EncryptedFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/security/crypto/EncryptedFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;

.field mFile:Ljava/io/File;

.field final mFileEncryptionScheme:Landroidx/security/crypto/EncryptedFile$FileEncryptionScheme;

.field mKeysetAlias:Ljava/lang/String;

.field mKeysetPrefName:Ljava/lang/String;

.field final mMasterKeyAlias:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;Landroid/content/Context;Ljava/lang/String;Landroidx/security/crypto/EncryptedFile$FileEncryptionScheme;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "masterKeyAlias"    # Ljava/lang/String;
    .param p4, "fileEncryptionScheme"    # Landroidx/security/crypto/EncryptedFile$FileEncryptionScheme;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    const-string v0, "__androidx_security_crypto_encrypted_file_pref__"

    iput-object v0, p0, Landroidx/security/crypto/EncryptedFile$Builder;->mKeysetPrefName:Ljava/lang/String;

    .line 139
    const-string v0, "__androidx_security_crypto_encrypted_file_keyset__"

    iput-object v0, p0, Landroidx/security/crypto/EncryptedFile$Builder;->mKeysetAlias:Ljava/lang/String;

    .line 125
    iput-object p1, p0, Landroidx/security/crypto/EncryptedFile$Builder;->mFile:Ljava/io/File;

    .line 126
    iput-object p4, p0, Landroidx/security/crypto/EncryptedFile$Builder;->mFileEncryptionScheme:Landroidx/security/crypto/EncryptedFile$FileEncryptionScheme;

    .line 127
    iput-object p2, p0, Landroidx/security/crypto/EncryptedFile$Builder;->mContext:Landroid/content/Context;

    .line 128
    iput-object p3, p0, Landroidx/security/crypto/EncryptedFile$Builder;->mMasterKeyAlias:Ljava/lang/String;

    .line 129
    return-void
.end method


# virtual methods
.method public build()Landroidx/security/crypto/EncryptedFile;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    invoke-static {}, Lcom/google/crypto/tink/streamingaead/StreamingAeadConfig;->register()V

    .line 168
    new-instance v0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;

    invoke-direct {v0}, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;-><init>()V

    iget-object v1, p0, Landroidx/security/crypto/EncryptedFile$Builder;->mFileEncryptionScheme:Landroidx/security/crypto/EncryptedFile$FileEncryptionScheme;

    .line 169
    invoke-virtual {v1}, Landroidx/security/crypto/EncryptedFile$FileEncryptionScheme;->getKeyTemplate()Lcom/google/crypto/tink/KeyTemplate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->withKeyTemplate(Lcom/google/crypto/tink/KeyTemplate;)Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/security/crypto/EncryptedFile$Builder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroidx/security/crypto/EncryptedFile$Builder;->mKeysetAlias:Ljava/lang/String;

    iget-object v3, p0, Landroidx/security/crypto/EncryptedFile$Builder;->mKeysetPrefName:Ljava/lang/String;

    .line 170
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->withSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android-keystore://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/security/crypto/EncryptedFile$Builder;->mMasterKeyAlias:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 171
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->withMasterKeyUri(Ljava/lang/String;)Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->build()Lcom/google/crypto/tink/integration/android/AndroidKeysetManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager;->getKeysetHandle()Lcom/google/crypto/tink/KeysetHandle;

    move-result-object v0

    .line 174
    .local v0, "streadmingAeadKeysetHandle":Lcom/google/crypto/tink/KeysetHandle;
    const-class v1, Lcom/google/crypto/tink/StreamingAead;

    .line 175
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/KeysetHandle;->getPrimitive(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/StreamingAead;

    .line 177
    .local v1, "streamingAead":Lcom/google/crypto/tink/StreamingAead;
    new-instance v2, Landroidx/security/crypto/EncryptedFile;

    iget-object v3, p0, Landroidx/security/crypto/EncryptedFile$Builder;->mFile:Ljava/io/File;

    iget-object v4, p0, Landroidx/security/crypto/EncryptedFile$Builder;->mKeysetAlias:Ljava/lang/String;

    iget-object v5, p0, Landroidx/security/crypto/EncryptedFile$Builder;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v4, v1, v5}, Landroidx/security/crypto/EncryptedFile;-><init>(Ljava/io/File;Ljava/lang/String;Lcom/google/crypto/tink/StreamingAead;Landroid/content/Context;)V

    return-object v2
.end method

.method public setKeysetAlias(Ljava/lang/String;)Landroidx/security/crypto/EncryptedFile$Builder;
    .locals 0
    .param p1, "keysetAlias"    # Ljava/lang/String;

    .line 157
    iput-object p1, p0, Landroidx/security/crypto/EncryptedFile$Builder;->mKeysetAlias:Ljava/lang/String;

    .line 158
    return-object p0
.end method

.method public setKeysetPrefName(Ljava/lang/String;)Landroidx/security/crypto/EncryptedFile$Builder;
    .locals 0
    .param p1, "keysetPrefName"    # Ljava/lang/String;

    .line 147
    iput-object p1, p0, Landroidx/security/crypto/EncryptedFile$Builder;->mKeysetPrefName:Ljava/lang/String;

    .line 148
    return-object p0
.end method
