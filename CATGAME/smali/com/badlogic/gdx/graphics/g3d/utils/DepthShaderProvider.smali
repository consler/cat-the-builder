.class public Lcom/badlogic/gdx/graphics/g3d/utils/DepthShaderProvider;
.super Lcom/badlogic/gdx/graphics/g3d/utils/BaseShaderProvider;
.source "DepthShaderProvider.java"


# instance fields
.field public final config:Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/DepthShaderProvider;-><init>(Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 2
    .param p1, "vertexShader"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "fragmentShader"    # Lcom/badlogic/gdx/files/FileHandle;

    .line 37
    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/DepthShaderProvider;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;)V
    .locals 1
    .param p1, "config"    # Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;

    .line 28
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/utils/BaseShaderProvider;-><init>()V

    .line 29
    if-nez p1, :cond_0

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DepthShaderProvider;->config:Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "vertexShader"    # Ljava/lang/String;
    .param p2, "fragmentShader"    # Ljava/lang/String;

    .line 33
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;

    invoke-direct {v0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/DepthShaderProvider;-><init>(Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected createShader(Lcom/badlogic/gdx/graphics/g3d/Renderable;)Lcom/badlogic/gdx/graphics/g3d/Shader;
    .locals 2
    .param p1, "renderable"    # Lcom/badlogic/gdx/graphics/g3d/Renderable;

    .line 46
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DepthShaderProvider;->config:Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;

    invoke-direct {v0, p1, v1}, Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader;-><init>(Lcom/badlogic/gdx/graphics/g3d/Renderable;Lcom/badlogic/gdx/graphics/g3d/shaders/DepthShader$Config;)V

    return-object v0
.end method
