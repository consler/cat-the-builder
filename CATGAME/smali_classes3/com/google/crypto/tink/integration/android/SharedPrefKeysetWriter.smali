.class public final Lcom/google/crypto/tink/integration/android/SharedPrefKeysetWriter;
.super Ljava/lang/Object;
.source "SharedPrefKeysetWriter.java"

# interfaces
.implements Lcom/google/crypto/tink/KeysetWriter;


# instance fields
.field private final editor:Landroid/content/SharedPreferences$Editor;

.field private final keysetName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keysetName"    # Ljava/lang/String;
    .param p3, "prefFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "keysetName",
            "prefFileName"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    if-eqz p2, :cond_1

    .line 50
    iput-object p2, p0, Lcom/google/crypto/tink/integration/android/SharedPrefKeysetWriter;->keysetName:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 53
    .local v0, "appContext":Landroid/content/Context;
    if-nez p3, :cond_0

    .line 54
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/google/crypto/tink/integration/android/SharedPrefKeysetWriter;->editor:Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 56
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/google/crypto/tink/integration/android/SharedPrefKeysetWriter;->editor:Landroid/content/SharedPreferences$Editor;

    .line 58
    :goto_0
    return-void

    .line 48
    .end local v0    # "appContext":Landroid/content/Context;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keysetName cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public write(Lcom/google/crypto/tink/proto/EncryptedKeyset;)V
    .locals 3
    .param p1, "keyset"    # Lcom/google/crypto/tink/proto/EncryptedKeyset;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/google/crypto/tink/integration/android/SharedPrefKeysetWriter;->editor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/google/crypto/tink/integration/android/SharedPrefKeysetWriter;->keysetName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/EncryptedKeyset;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/crypto/tink/subtle/Hex;->encode([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    .line 71
    .local v0, "success":Z
    if-eqz v0, :cond_0

    .line 74
    return-void

    .line 72
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to write to SharedPreferences"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public write(Lcom/google/crypto/tink/proto/Keyset;)V
    .locals 3
    .param p1, "keyset"    # Lcom/google/crypto/tink/proto/Keyset;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/google/crypto/tink/integration/android/SharedPrefKeysetWriter;->editor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/google/crypto/tink/integration/android/SharedPrefKeysetWriter;->keysetName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/Keyset;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/crypto/tink/subtle/Hex;->encode([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    .line 63
    .local v0, "success":Z
    if-eqz v0, :cond_0

    .line 66
    return-void

    .line 64
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to write to SharedPreferences"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
