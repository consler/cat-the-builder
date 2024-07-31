.class public final Landroidx/camera/core/impl/ExtendableUseCaseConfigFactory;
.super Ljava/lang/Object;
.source "ExtendableUseCaseConfigFactory.java"

# interfaces
.implements Landroidx/camera/core/impl/UseCaseConfigFactory;


# instance fields
.field private final mDefaultProviders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Landroidx/camera/core/impl/ConfigProvider<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/impl/ExtendableUseCaseConfigFactory;->mDefaultProviders:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getConfig(Ljava/lang/Class;Landroidx/camera/core/CameraInfo;)Landroidx/camera/core/impl/UseCaseConfig;
    .locals 2
    .param p2, "cameraInfo"    # Landroidx/camera/core/CameraInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;>(",
            "Ljava/lang/Class<",
            "TC;>;",
            "Landroidx/camera/core/CameraInfo;",
            ")TC;"
        }
    .end annotation

    .line 45
    .local p1, "configType":Ljava/lang/Class;, "Ljava/lang/Class<TC;>;"
    iget-object v0, p0, Landroidx/camera/core/impl/ExtendableUseCaseConfigFactory;->mDefaultProviders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/ConfigProvider;

    .line 46
    .local v0, "provider":Landroidx/camera/core/impl/ConfigProvider;, "Landroidx/camera/core/impl/ConfigProvider<TC;>;"
    if-eqz v0, :cond_0

    .line 47
    invoke-interface {v0, p2}, Landroidx/camera/core/impl/ConfigProvider;->getConfig(Landroidx/camera/core/CameraInfo;)Landroidx/camera/core/impl/Config;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/UseCaseConfig;

    return-object v1

    .line 49
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public installDefaultProvider(Ljava/lang/Class;Landroidx/camera/core/impl/ConfigProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Landroidx/camera/core/impl/Config;",
            ">(",
            "Ljava/lang/Class<",
            "TC;>;",
            "Landroidx/camera/core/impl/ConfigProvider<",
            "TC;>;)V"
        }
    .end annotation

    .line 36
    .local p1, "configType":Ljava/lang/Class;, "Ljava/lang/Class<TC;>;"
    .local p2, "defaultProvider":Landroidx/camera/core/impl/ConfigProvider;, "Landroidx/camera/core/impl/ConfigProvider<TC;>;"
    iget-object v0, p0, Landroidx/camera/core/impl/ExtendableUseCaseConfigFactory;->mDefaultProviders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    return-void
.end method
