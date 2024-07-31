.class public final Landroidx/security/crypto/EncryptedSharedPreferences;
.super Ljava/lang/Object;
.source "EncryptedSharedPreferences.java"

# interfaces
.implements Landroid/content/SharedPreferences;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;,
        Landroidx/security/crypto/EncryptedSharedPreferences$Editor;,
        Landroidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme;,
        Landroidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme;
    }
.end annotation


# static fields
.field private static final KEY_KEYSET_ALIAS:Ljava/lang/String; = "__androidx_security_crypto_encrypted_prefs_key_keyset__"

.field private static final NULL_VALUE:Ljava/lang/String; = "__NULL__"

.field private static final VALUE_KEYSET_ALIAS:Ljava/lang/String; = "__androidx_security_crypto_encrypted_prefs_value_keyset__"


# instance fields
.field final mFileName:Ljava/lang/String;

.field final mKeyDeterministicAead:Lcom/google/crypto/tink/DeterministicAead;

.field final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field final mMasterKeyAlias:Ljava/lang/String;

.field final mSharedPreferences:Landroid/content/SharedPreferences;

.field final mValueAead:Lcom/google/crypto/tink/Aead;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences;Lcom/google/crypto/tink/Aead;Lcom/google/crypto/tink/DeterministicAead;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "masterKeyAlias"    # Ljava/lang/String;
    .param p3, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p4, "aead"    # Lcom/google/crypto/tink/Aead;
    .param p5, "deterministicAead"    # Lcom/google/crypto/tink/DeterministicAead;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Landroidx/security/crypto/EncryptedSharedPreferences;->mFileName:Ljava/lang/String;

    .line 94
    iput-object p3, p0, Landroidx/security/crypto/EncryptedSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 95
    iput-object p2, p0, Landroidx/security/crypto/EncryptedSharedPreferences;->mMasterKeyAlias:Ljava/lang/String;

    .line 96
    iput-object p4, p0, Landroidx/security/crypto/EncryptedSharedPreferences;->mValueAead:Lcom/google/crypto/tink/Aead;

    .line 97
    iput-object p5, p0, Landroidx/security/crypto/EncryptedSharedPreferences;->mKeyDeterministicAead:Lcom/google/crypto/tink/DeterministicAead;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/security/crypto/EncryptedSharedPreferences;->mListeners:Ljava/util/List;

    .line 99
    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme;Landroidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme;)Landroid/content/SharedPreferences;
    .locals 11
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "masterKeyAlias"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "prefKeyEncryptionScheme"    # Landroidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme;
    .param p4, "prefValueEncryptionScheme"    # Landroidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    invoke-static {}, Lcom/google/crypto/tink/daead/DeterministicAeadConfig;->register()V

    .line 117
    invoke-static {}, Lcom/google/crypto/tink/aead/AeadConfig;->register()V

    .line 119
    new-instance v0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;

    invoke-direct {v0}, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;-><init>()V

    .line 120
    invoke-virtual {p3}, Landroidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme;->getKeyTemplate()Lcom/google/crypto/tink/KeyTemplate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->withKeyTemplate(Lcom/google/crypto/tink/KeyTemplate;)Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;

    move-result-object v0

    .line 121
    const-string v1, "__androidx_security_crypto_encrypted_prefs_key_keyset__"

    invoke-virtual {v0, p2, v1, p0}, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->withSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android-keystore://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->withMasterKeyUri(Ljava/lang/String;)Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->build()Lcom/google/crypto/tink/integration/android/AndroidKeysetManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager;->getKeysetHandle()Lcom/google/crypto/tink/KeysetHandle;

    move-result-object v0

    .line 124
    .local v0, "daeadKeysetHandle":Lcom/google/crypto/tink/KeysetHandle;
    new-instance v1, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;

    invoke-direct {v1}, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;-><init>()V

    .line 125
    invoke-virtual {p4}, Landroidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme;->getKeyTemplate()Lcom/google/crypto/tink/KeyTemplate;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->withKeyTemplate(Lcom/google/crypto/tink/KeyTemplate;)Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;

    move-result-object v1

    .line 126
    const-string v3, "__androidx_security_crypto_encrypted_prefs_value_keyset__"

    invoke-virtual {v1, p2, v3, p0}, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->withSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 127
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->withMasterKeyUri(Ljava/lang/String;)Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;

    move-result-object v1

    .line 128
    invoke-virtual {v1}, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->build()Lcom/google/crypto/tink/integration/android/AndroidKeysetManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager;->getKeysetHandle()Lcom/google/crypto/tink/KeysetHandle;

    move-result-object v1

    .line 130
    .local v1, "aeadKeysetHandle":Lcom/google/crypto/tink/KeysetHandle;
    const-class v2, Lcom/google/crypto/tink/DeterministicAead;

    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/KeysetHandle;->getPrimitive(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/crypto/tink/DeterministicAead;

    .line 131
    .local v2, "daead":Lcom/google/crypto/tink/DeterministicAead;
    const-class v3, Lcom/google/crypto/tink/Aead;

    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/KeysetHandle;->getPrimitive(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lcom/google/crypto/tink/Aead;

    .line 133
    .local v9, "aead":Lcom/google/crypto/tink/Aead;
    new-instance v10, Landroidx/security/crypto/EncryptedSharedPreferences;

    .line 134
    const/4 v3, 0x0

    invoke-virtual {p2, p0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    move-object v3, v10

    move-object v4, p0

    move-object v5, p1

    move-object v7, v9

    move-object v8, v2

    invoke-direct/range {v3 .. v8}, Landroidx/security/crypto/EncryptedSharedPreferences;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences;Lcom/google/crypto/tink/Aead;Lcom/google/crypto/tink/DeterministicAead;)V

    .line 133
    return-object v10
.end method

.method private getDecryptedObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 17
    .param p1, "key"    # Ljava/lang/String;

    .line 490
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p1}, Landroidx/security/crypto/EncryptedSharedPreferences;->isReservedKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 493
    if-nez v0, :cond_0

    .line 494
    const-string v0, "__NULL__"

    move-object v2, v0

    .end local p1    # "key":Ljava/lang/String;
    .local v0, "key":Ljava/lang/String;
    goto :goto_0

    .line 493
    .end local v0    # "key":Ljava/lang/String;
    .restart local p1    # "key":Ljava/lang/String;
    :cond_0
    move-object v2, v0

    .line 496
    .end local p1    # "key":Ljava/lang/String;
    .local v2, "key":Ljava/lang/String;
    :goto_0
    const/4 v3, 0x0

    .line 498
    .local v3, "returnValue":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {v1, v2}, Landroidx/security/crypto/EncryptedSharedPreferences;->encryptKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 499
    .local v0, "encryptedKey":Ljava/lang/String;
    iget-object v4, v1, Landroidx/security/crypto/EncryptedSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v5, 0x0

    invoke-interface {v4, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 500
    .local v4, "encryptedValue":Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 501
    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/google/crypto/tink/subtle/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    .line 502
    .local v6, "cipherText":[B
    iget-object v7, v1, Landroidx/security/crypto/EncryptedSharedPreferences;->mValueAead:Lcom/google/crypto/tink/Aead;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    invoke-interface {v7, v6, v8}, Lcom/google/crypto/tink/Aead;->decrypt([B[B)[B

    move-result-object v7

    .line 503
    .local v7, "value":[B
    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 504
    .local v8, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v8, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 505
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    .line 506
    .local v9, "typeId":I
    invoke-static {v9}, Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;->fromId(I)Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;

    move-result-object v10

    .line 507
    .local v10, "type":Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;
    sget-object v11, Landroidx/security/crypto/EncryptedSharedPreferences$1;->$SwitchMap$androidx$security$crypto$EncryptedSharedPreferences$EncryptedType:[I

    invoke-virtual {v10}, Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;->ordinal()I

    move-result v12

    aget v11, v11, v12
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v12, "__NULL__"

    const/4 v13, 0x1

    packed-switch v11, :pswitch_data_0

    goto/16 :goto_2

    .line 532
    :pswitch_0
    :try_start_1
    new-instance v11, Landroid/util/ArraySet;

    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    .line 533
    .local v11, "stringSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_1
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 534
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    .line 535
    .local v14, "subStringLength":I
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 536
    .local v15, "subStringSlice":Ljava/nio/ByteBuffer;
    invoke-virtual {v15, v14}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 537
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->position()I

    move-result v16

    add-int v5, v16, v14

    invoke-virtual {v8, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 538
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v15}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 539
    const/4 v5, 0x0

    .end local v14    # "subStringLength":I
    .end local v15    # "subStringSlice":Ljava/nio/ByteBuffer;
    goto :goto_1

    .line 540
    :cond_1
    invoke-virtual {v11}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ne v5, v13, :cond_2

    const/4 v5, 0x0

    invoke-virtual {v11, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 541
    const/4 v3, 0x0

    goto :goto_2

    .line 543
    :cond_2
    move-object v3, v11

    goto :goto_2

    .line 529
    .end local v11    # "stringSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :pswitch_1
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->get()B

    move-result v11

    if-eqz v11, :cond_3

    move v5, v13

    :cond_3
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v3, v5

    .line 530
    goto :goto_2

    .line 526
    :pswitch_2
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    move-object v3, v5

    .line 527
    goto :goto_2

    .line 523
    :pswitch_3
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v3, v5

    .line 524
    goto :goto_2

    .line 520
    :pswitch_4
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v3, v5

    .line 521
    goto :goto_2

    .line 509
    :pswitch_5
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .line 510
    .local v5, "stringLength":I
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 511
    .local v11, "stringSlice":Ljava/nio/ByteBuffer;
    invoke-virtual {v8, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 512
    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v13, v11}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    .line 513
    .local v13, "stringValue":Ljava/lang/String;
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v12, :cond_4

    .line 514
    const/4 v3, 0x0

    goto :goto_2

    .line 516
    :cond_4
    move-object v3, v13

    .line 550
    .end local v0    # "encryptedKey":Ljava/lang/String;
    .end local v4    # "encryptedValue":Ljava/lang/String;
    .end local v5    # "stringLength":I
    .end local v6    # "cipherText":[B
    .end local v7    # "value":[B
    .end local v8    # "buffer":Ljava/nio/ByteBuffer;
    .end local v9    # "typeId":I
    .end local v10    # "type":Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;
    .end local v11    # "stringSlice":Ljava/nio/ByteBuffer;
    .end local v13    # "stringValue":Ljava/lang/String;
    :cond_5
    :goto_2
    nop

    .line 551
    return-object v3

    .line 548
    :catch_0
    move-exception v0

    .line 549
    .local v0, "ex":Ljava/security/GeneralSecurityException;
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not decrypt value. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 491
    .end local v0    # "ex":Ljava/security/GeneralSecurityException;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "returnValue":Ljava/lang/Object;
    .restart local p1    # "key":Ljava/lang/String;
    :cond_6
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is a reserved key for the encryption keyset."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 424
    invoke-virtual {p0, p1}, Landroidx/security/crypto/EncryptedSharedPreferences;->isReservedKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 427
    invoke-virtual {p0, p1}, Landroidx/security/crypto/EncryptedSharedPreferences;->encryptKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 428
    .local v0, "encryptedKey":Ljava/lang/String;
    iget-object v1, p0, Landroidx/security/crypto/EncryptedSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 425
    .end local v0    # "encryptedKey":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is a reserved key for the encryption keyset."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method decryptKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "encryptedKey"    # Ljava/lang/String;

    .line 570
    :try_start_0
    iget-object v0, p0, Landroidx/security/crypto/EncryptedSharedPreferences;->mKeyDeterministicAead:Lcom/google/crypto/tink/DeterministicAead;

    const/4 v1, 0x0

    .line 571
    invoke-static {p1, v1}, Lcom/google/crypto/tink/subtle/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    iget-object v2, p0, Landroidx/security/crypto/EncryptedSharedPreferences;->mFileName:Ljava/lang/String;

    .line 572
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 570
    invoke-interface {v0, v1, v2}, Lcom/google/crypto/tink/DeterministicAead;->decryptDeterministically([B[B)[B

    move-result-object v0

    .line 573
    .local v0, "clearText":[B
    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 574
    .local v1, "key":Ljava/lang/String;
    const-string v2, "__NULL__"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    .line 575
    const/4 v1, 0x0

    .line 577
    :cond_0
    return-object v1

    .line 578
    .end local v0    # "clearText":[B
    .end local v1    # "key":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 579
    .local v0, "ex":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not decrypt key. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public edit()Landroid/content/SharedPreferences$Editor;
    .locals 2

    .line 434
    new-instance v0, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;

    iget-object v1, p0, Landroidx/security/crypto/EncryptedSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/security/crypto/EncryptedSharedPreferences$Editor;-><init>(Landroidx/security/crypto/EncryptedSharedPreferences;Landroid/content/SharedPreferences$Editor;)V

    return-object v0
.end method

.method encryptKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 555
    if-nez p1, :cond_0

    .line 556
    const-string p1, "__NULL__"

    .line 559
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroidx/security/crypto/EncryptedSharedPreferences;->mKeyDeterministicAead:Lcom/google/crypto/tink/DeterministicAead;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 560
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    iget-object v2, p0, Landroidx/security/crypto/EncryptedSharedPreferences;->mFileName:Ljava/lang/String;

    .line 561
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 559
    invoke-interface {v0, v1, v2}, Lcom/google/crypto/tink/DeterministicAead;->encryptDeterministically([B[B)[B

    move-result-object v0

    .line 562
    .local v0, "encryptedKeyBytes":[B
    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Base64;->encode([B)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 563
    .end local v0    # "encryptedKeyBytes":[B
    :catch_0
    move-exception v0

    .line 564
    .local v0, "ex":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not encrypt key. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method encryptKeyValuePair(Ljava/lang/String;[B)Landroid/util/Pair;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 598
    invoke-virtual {p0, p1}, Landroidx/security/crypto/EncryptedSharedPreferences;->encryptKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 599
    .local v0, "encryptedKey":Ljava/lang/String;
    iget-object v1, p0, Landroidx/security/crypto/EncryptedSharedPreferences;->mValueAead:Lcom/google/crypto/tink/Aead;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-interface {v1, p2, v2}, Lcom/google/crypto/tink/Aead;->encrypt([B[B)[B

    move-result-object v1

    .line 600
    .local v1, "cipherText":[B
    new-instance v2, Landroid/util/Pair;

    invoke-static {v1}, Lcom/google/crypto/tink/subtle/Base64;->encode([B)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method public getAll()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 366
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 367
    .local v0, "allEntries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;-Ljava/lang/Object;>;"
    iget-object v1, p0, Landroidx/security/crypto/EncryptedSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 368
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroidx/security/crypto/EncryptedSharedPreferences;->isReservedKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 369
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroidx/security/crypto/EncryptedSharedPreferences;->decryptKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 370
    .local v3, "decryptedKey":Ljava/lang/String;
    nop

    .line 371
    invoke-direct {p0, v3}, Landroidx/security/crypto/EncryptedSharedPreferences;->getDecryptedObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 370
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v3    # "decryptedKey":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 374
    :cond_1
    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .line 418
    invoke-direct {p0, p1}, Landroidx/security/crypto/EncryptedSharedPreferences;->getDecryptedObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 419
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    return v1
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # F

    .line 412
    invoke-direct {p0, p1}, Landroidx/security/crypto/EncryptedSharedPreferences;->getDecryptedObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 413
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    return v1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .line 400
    invoke-direct {p0, p1}, Landroidx/security/crypto/EncryptedSharedPreferences;->getDecryptedObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 401
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    return v1
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # J

    .line 406
    invoke-direct {p0, p1}, Landroidx/security/crypto/EncryptedSharedPreferences;->getDecryptedObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 407
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    move-wide v1, p2

    :goto_0
    return-wide v1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .line 380
    invoke-direct {p0, p1}, Landroidx/security/crypto/EncryptedSharedPreferences;->getDecryptedObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 381
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    return-object v1
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 389
    .local p2, "defValues":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Landroidx/security/crypto/EncryptedSharedPreferences;->getDecryptedObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 390
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/util/Set;

    if-eqz v1, :cond_0

    .line 391
    move-object v1, v0

    check-cast v1, Ljava/util/Set;

    .local v1, "returnValues":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_0

    .line 393
    .end local v1    # "returnValues":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 395
    .restart local v1    # "returnValues":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    move-object v2, p2

    :goto_1
    return-object v2
.end method

.method isReservedKey(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 590
    const-string v0, "__androidx_security_crypto_encrypted_prefs_key_keyset__"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "__androidx_security_crypto_encrypted_prefs_value_keyset__"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 593
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 591
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 440
    iget-object v0, p0, Landroidx/security/crypto/EncryptedSharedPreferences;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    return-void
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 446
    iget-object v0, p0, Landroidx/security/crypto/EncryptedSharedPreferences;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 447
    return-void
.end method
