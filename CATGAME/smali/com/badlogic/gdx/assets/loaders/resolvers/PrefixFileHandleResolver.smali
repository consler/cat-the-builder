.class public Lcom/badlogic/gdx/assets/loaders/resolvers/PrefixFileHandleResolver;
.super Ljava/lang/Object;
.source "PrefixFileHandleResolver.java"

# interfaces
.implements Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;


# instance fields
.field private baseResolver:Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;

.field private prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;Ljava/lang/String;)V
    .locals 0
    .param p1, "baseResolver"    # Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/badlogic/gdx/assets/loaders/resolvers/PrefixFileHandleResolver;->baseResolver:Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;

    .line 31
    iput-object p2, p0, Lcom/badlogic/gdx/assets/loaders/resolvers/PrefixFileHandleResolver;->prefix:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public getBaseResolver()Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/badlogic/gdx/assets/loaders/resolvers/PrefixFileHandleResolver;->baseResolver:Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/badlogic/gdx/assets/loaders/resolvers/PrefixFileHandleResolver;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public resolve(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lcom/badlogic/gdx/assets/loaders/resolvers/PrefixFileHandleResolver;->baseResolver:Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/badlogic/gdx/assets/loaders/resolvers/PrefixFileHandleResolver;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;->resolve(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    return-object v0
.end method

.method public setBaseResolver(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V
    .locals 0
    .param p1, "baseResolver"    # Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;

    .line 35
    iput-object p1, p0, Lcom/badlogic/gdx/assets/loaders/resolvers/PrefixFileHandleResolver;->baseResolver:Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;

    .line 36
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/badlogic/gdx/assets/loaders/resolvers/PrefixFileHandleResolver;->prefix:Ljava/lang/String;

    .line 44
    return-void
.end method
