.class public Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver;
.super Ljava/lang/Object;
.source "ResolutionFileResolver.java"

# interfaces
.implements Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;
    }
.end annotation


# instance fields
.field protected final baseResolver:Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;

.field protected final descriptors:[Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;


# direct methods
.method public varargs constructor <init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;[Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;)V
    .locals 2
    .param p1, "baseResolver"    # Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;
    .param p2, "descriptors"    # [Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    array-length v0, p2

    if-eqz v0, :cond_0

    .line 80
    iput-object p1, p0, Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver;->baseResolver:Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;

    .line 81
    iput-object p2, p0, Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver;->descriptors:[Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;

    .line 82
    return-void

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least one Resolution needs to be supplied."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs choose([Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;)Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;
    .locals 8
    .param p0, "descriptors"    # [Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;

    .line 103
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v0

    .local v0, "w":I
    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v1

    .line 106
    .local v1, "h":I
    const/4 v2, 0x0

    aget-object v2, p0, v2

    .line 107
    .local v2, "best":Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;
    if-ge v0, v1, :cond_2

    .line 108
    const/4 v3, 0x0

    .local v3, "i":I
    array-length v4, p0

    .local v4, "n":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 109
    aget-object v5, p0, v3

    .line 110
    .local v5, "other":Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;
    iget v6, v5, Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;->portraitWidth:I

    if-lt v0, v6, :cond_0

    iget v6, v5, Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;->portraitWidth:I

    iget v7, v2, Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;->portraitWidth:I

    if-lt v6, v7, :cond_0

    iget v6, v5, Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;->portraitHeight:I

    if-lt v1, v6, :cond_0

    iget v6, v5, Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;->portraitHeight:I

    iget v7, v2, Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;->portraitHeight:I

    if-lt v6, v7, :cond_0

    .line 111
    aget-object v2, p0, v3

    .line 108
    .end local v5    # "other":Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v3    # "i":I
    .end local v4    # "n":I
    :cond_1
    goto :goto_2

    .line 114
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "i":I
    array-length v4, p0

    .restart local v4    # "n":I
    :goto_1
    if-ge v3, v4, :cond_4

    .line 115
    aget-object v5, p0, v3

    .line 116
    .restart local v5    # "other":Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;
    iget v6, v5, Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;->portraitHeight:I

    if-lt v0, v6, :cond_3

    iget v6, v5, Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;->portraitHeight:I

    iget v7, v2, Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;->portraitHeight:I

    if-lt v6, v7, :cond_3

    iget v6, v5, Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;->portraitWidth:I

    if-lt v1, v6, :cond_3

    iget v6, v5, Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;->portraitWidth:I

    iget v7, v2, Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;->portraitWidth:I

    if-lt v6, v7, :cond_3

    .line 117
    aget-object v2, p0, v3

    .line 114
    .end local v5    # "other":Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 120
    .end local v3    # "i":I
    .end local v4    # "n":I
    :cond_4
    :goto_2
    return-object v2
.end method


# virtual methods
.method public resolve(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver;->descriptors:[Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;

    invoke-static {v0}, Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver;->choose([Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;)Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;

    move-result-object v0

    .line 87
    .local v0, "bestResolution":Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;
    new-instance v1, Lcom/badlogic/gdx/files/FileHandle;

    invoke-direct {v1, p1}, Lcom/badlogic/gdx/files/FileHandle;-><init>(Ljava/lang/String;)V

    .line 88
    .local v1, "originalHandle":Lcom/badlogic/gdx/files/FileHandle;
    iget-object v2, p0, Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver;->baseResolver:Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;

    iget-object v3, v0, Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver$Resolution;->folder:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver;->resolve(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;->resolve(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 89
    .local v2, "handle":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/badlogic/gdx/assets/loaders/resolvers/ResolutionFileResolver;->baseResolver:Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;

    invoke-interface {v3, p1}, Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;->resolve(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 90
    :cond_0
    return-object v2
.end method

.method protected resolve(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "originalHandle"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "suffix"    # Ljava/lang/String;

    .line 94
    const-string v0, ""

    .line 95
    .local v0, "parentString":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->parent()Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 96
    .local v1, "parent":Lcom/badlogic/gdx/files/FileHandle;
    const-string v2, "/"

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 97
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
