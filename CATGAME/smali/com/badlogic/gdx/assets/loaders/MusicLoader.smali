.class public Lcom/badlogic/gdx/assets/loaders/MusicLoader;
.super Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader;
.source "MusicLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/assets/loaders/MusicLoader$MusicParameter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader<",
        "Lcom/badlogic/gdx/audio/Music;",
        "Lcom/badlogic/gdx/assets/loaders/MusicLoader$MusicParameter;",
        ">;"
    }
.end annotation


# instance fields
.field private music:Lcom/badlogic/gdx/audio/Music;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V
    .locals 0
    .param p1, "resolver"    # Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;

    .line 34
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    .line 35
    return-void
.end method


# virtual methods
.method public bridge synthetic getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Lcom/badlogic/gdx/utils/Array;
    .locals 0

    .line 29
    check-cast p3, Lcom/badlogic/gdx/assets/loaders/MusicLoader$MusicParameter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/assets/loaders/MusicLoader;->getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/MusicLoader$MusicParameter;)Lcom/badlogic/gdx/utils/Array;

    move-result-object p1

    return-object p1
.end method

.method public getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/MusicLoader$MusicParameter;)Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "file"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p3, "parameter"    # Lcom/badlogic/gdx/assets/loaders/MusicLoader$MusicParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/files/FileHandle;",
            "Lcom/badlogic/gdx/assets/loaders/MusicLoader$MusicParameter;",
            ")",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/assets/AssetDescriptor;",
            ">;"
        }
    .end annotation

    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getLoadedMusic()Lcom/badlogic/gdx/audio/Music;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/badlogic/gdx/assets/loaders/MusicLoader;->music:Lcom/badlogic/gdx/audio/Music;

    return-object v0
.end method

.method public bridge synthetic loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)V
    .locals 0

    .line 29
    check-cast p4, Lcom/badlogic/gdx/assets/loaders/MusicLoader$MusicParameter;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/assets/loaders/MusicLoader;->loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/MusicLoader$MusicParameter;)V

    return-void
.end method

.method public loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/MusicLoader$MusicParameter;)V
    .locals 1
    .param p1, "manager"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "file"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p4, "parameter"    # Lcom/badlogic/gdx/assets/loaders/MusicLoader$MusicParameter;

    .line 48
    sget-object v0, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    invoke-interface {v0, p3}, Lcom/badlogic/gdx/Audio;->newMusic(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Music;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/assets/loaders/MusicLoader;->music:Lcom/badlogic/gdx/audio/Music;

    .line 49
    return-void
.end method

.method public loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/MusicLoader$MusicParameter;)Lcom/badlogic/gdx/audio/Music;
    .locals 2
    .param p1, "manager"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "file"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p4, "parameter"    # Lcom/badlogic/gdx/assets/loaders/MusicLoader$MusicParameter;

    .line 53
    iget-object v0, p0, Lcom/badlogic/gdx/assets/loaders/MusicLoader;->music:Lcom/badlogic/gdx/audio/Music;

    .line 54
    .local v0, "music":Lcom/badlogic/gdx/audio/Music;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/badlogic/gdx/assets/loaders/MusicLoader;->music:Lcom/badlogic/gdx/audio/Music;

    .line 55
    return-object v0
.end method

.method public bridge synthetic loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Ljava/lang/Object;
    .locals 0

    .line 29
    check-cast p4, Lcom/badlogic/gdx/assets/loaders/MusicLoader$MusicParameter;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/assets/loaders/MusicLoader;->loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/MusicLoader$MusicParameter;)Lcom/badlogic/gdx/audio/Music;

    move-result-object p1

    return-object p1
.end method
