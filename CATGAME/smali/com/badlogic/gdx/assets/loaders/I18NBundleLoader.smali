.class public Lcom/badlogic/gdx/assets/loaders/I18NBundleLoader;
.super Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader;
.source "I18NBundleLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/assets/loaders/I18NBundleLoader$I18NBundleParameter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader<",
        "Lcom/badlogic/gdx/utils/I18NBundle;",
        "Lcom/badlogic/gdx/assets/loaders/I18NBundleLoader$I18NBundleParameter;",
        ">;"
    }
.end annotation


# instance fields
.field bundle:Lcom/badlogic/gdx/utils/I18NBundle;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V
    .locals 0
    .param p1, "resolver"    # Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;

    .line 48
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    .line 49
    return-void
.end method


# virtual methods
.method public bridge synthetic getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Lcom/badlogic/gdx/utils/Array;
    .locals 0

    .line 45
    check-cast p3, Lcom/badlogic/gdx/assets/loaders/I18NBundleLoader$I18NBundleParameter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/assets/loaders/I18NBundleLoader;->getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/I18NBundleLoader$I18NBundleParameter;)Lcom/badlogic/gdx/utils/Array;

    move-result-object p1

    return-object p1
.end method

.method public getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/I18NBundleLoader$I18NBundleParameter;)Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "file"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p3, "parameter"    # Lcom/badlogic/gdx/assets/loaders/I18NBundleLoader$I18NBundleParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/files/FileHandle;",
            "Lcom/badlogic/gdx/assets/loaders/I18NBundleLoader$I18NBundleParameter;",
            ")",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/assets/AssetDescriptor;",
            ">;"
        }
    .end annotation

    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)V
    .locals 0

    .line 45
    check-cast p4, Lcom/badlogic/gdx/assets/loaders/I18NBundleLoader$I18NBundleParameter;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/assets/loaders/I18NBundleLoader;->loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/I18NBundleLoader$I18NBundleParameter;)V

    return-void
.end method

.method public loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/I18NBundleLoader$I18NBundleParameter;)V
    .locals 3
    .param p1, "manager"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "file"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p4, "parameter"    # Lcom/badlogic/gdx/assets/loaders/I18NBundleLoader$I18NBundleParameter;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/assets/loaders/I18NBundleLoader;->bundle:Lcom/badlogic/gdx/utils/I18NBundle;

    .line 58
    if-nez p4, :cond_0

    .line 59
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 60
    .local v0, "locale":Ljava/util/Locale;
    const/4 v1, 0x0

    .local v1, "encoding":Ljava/lang/String;
    goto :goto_1

    .line 62
    .end local v0    # "locale":Ljava/util/Locale;
    .end local v1    # "encoding":Ljava/lang/String;
    :cond_0
    iget-object v0, p4, Lcom/badlogic/gdx/assets/loaders/I18NBundleLoader$I18NBundleParameter;->locale:Ljava/util/Locale;

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p4, Lcom/badlogic/gdx/assets/loaders/I18NBundleLoader$I18NBundleParameter;->locale:Ljava/util/Locale;

    .line 63
    .restart local v0    # "locale":Ljava/util/Locale;
    :goto_0
    iget-object v1, p4, Lcom/badlogic/gdx/assets/loaders/I18NBundleLoader$I18NBundleParameter;->encoding:Ljava/lang/String;

    .line 65
    .restart local v1    # "encoding":Ljava/lang/String;
    :goto_1
    if-nez v1, :cond_2

    .line 66
    invoke-static {p3, v0}, Lcom/badlogic/gdx/utils/I18NBundle;->createBundle(Lcom/badlogic/gdx/files/FileHandle;Ljava/util/Locale;)Lcom/badlogic/gdx/utils/I18NBundle;

    move-result-object v2

    iput-object v2, p0, Lcom/badlogic/gdx/assets/loaders/I18NBundleLoader;->bundle:Lcom/badlogic/gdx/utils/I18NBundle;

    goto :goto_2

    .line 68
    :cond_2
    invoke-static {p3, v0, v1}, Lcom/badlogic/gdx/utils/I18NBundle;->createBundle(Lcom/badlogic/gdx/files/FileHandle;Ljava/util/Locale;Ljava/lang/String;)Lcom/badlogic/gdx/utils/I18NBundle;

    move-result-object v2

    iput-object v2, p0, Lcom/badlogic/gdx/assets/loaders/I18NBundleLoader;->bundle:Lcom/badlogic/gdx/utils/I18NBundle;

    .line 70
    :goto_2
    return-void
.end method

.method public loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/I18NBundleLoader$I18NBundleParameter;)Lcom/badlogic/gdx/utils/I18NBundle;
    .locals 2
    .param p1, "manager"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "file"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p4, "parameter"    # Lcom/badlogic/gdx/assets/loaders/I18NBundleLoader$I18NBundleParameter;

    .line 74
    iget-object v0, p0, Lcom/badlogic/gdx/assets/loaders/I18NBundleLoader;->bundle:Lcom/badlogic/gdx/utils/I18NBundle;

    .line 75
    .local v0, "bundle":Lcom/badlogic/gdx/utils/I18NBundle;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/badlogic/gdx/assets/loaders/I18NBundleLoader;->bundle:Lcom/badlogic/gdx/utils/I18NBundle;

    .line 76
    return-object v0
.end method

.method public bridge synthetic loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Ljava/lang/Object;
    .locals 0

    .line 45
    check-cast p4, Lcom/badlogic/gdx/assets/loaders/I18NBundleLoader$I18NBundleParameter;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/assets/loaders/I18NBundleLoader;->loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/I18NBundleLoader$I18NBundleParameter;)Lcom/badlogic/gdx/utils/I18NBundle;

    move-result-object p1

    return-object p1
.end method
