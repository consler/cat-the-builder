.class Landroidx/camera/camera2/internal/Camera2CaptureOptionUnpacker;
.super Ljava/lang/Object;
.source "Camera2CaptureOptionUnpacker.java"

# interfaces
.implements Landroidx/camera/core/impl/CaptureConfig$OptionUnpacker;


# static fields
.field static final INSTANCE:Landroidx/camera/camera2/internal/Camera2CaptureOptionUnpacker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Landroidx/camera/camera2/internal/Camera2CaptureOptionUnpacker;

    invoke-direct {v0}, Landroidx/camera/camera2/internal/Camera2CaptureOptionUnpacker;-><init>()V

    sput-object v0, Landroidx/camera/camera2/internal/Camera2CaptureOptionUnpacker;->INSTANCE:Landroidx/camera/camera2/internal/Camera2CaptureOptionUnpacker;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public unpack(Landroidx/camera/core/impl/UseCaseConfig;Landroidx/camera/core/impl/CaptureConfig$Builder;)V
    .locals 11
    .param p2, "builder"    # Landroidx/camera/core/impl/CaptureConfig$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;",
            "Landroidx/camera/core/impl/CaptureConfig$Builder;",
            ")V"
        }
    .end annotation

    .line 40
    .local p1, "config":Landroidx/camera/core/impl/UseCaseConfig;, "Landroidx/camera/core/impl/UseCaseConfig<*>;"
    nop

    .line 41
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroidx/camera/core/impl/UseCaseConfig;->getDefaultCaptureConfig(Landroidx/camera/core/impl/CaptureConfig;)Landroidx/camera/core/impl/CaptureConfig;

    move-result-object v0

    .line 43
    .local v0, "defaultCaptureConfig":Landroidx/camera/core/impl/CaptureConfig;
    invoke-static {}, Landroidx/camera/core/impl/OptionsBundle;->emptyBundle()Landroidx/camera/core/impl/OptionsBundle;

    move-result-object v1

    .line 44
    .local v1, "implOptions":Landroidx/camera/core/impl/Config;
    invoke-static {}, Landroidx/camera/core/impl/CaptureConfig;->defaultEmptyCaptureConfig()Landroidx/camera/core/impl/CaptureConfig;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/camera/core/impl/CaptureConfig;->getTemplateType()I

    move-result v2

    .line 47
    .local v2, "templateType":I
    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0}, Landroidx/camera/core/impl/CaptureConfig;->getTemplateType()I

    move-result v2

    .line 49
    invoke-virtual {v0}, Landroidx/camera/core/impl/CaptureConfig;->getCameraCaptureCallbacks()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addAllCameraCaptureCallbacks(Ljava/util/Collection;)V

    .line 50
    invoke-virtual {v0}, Landroidx/camera/core/impl/CaptureConfig;->getImplementationOptions()Landroidx/camera/core/impl/Config;

    move-result-object v1

    .line 54
    :cond_0
    invoke-virtual {p2, v1}, Landroidx/camera/core/impl/CaptureConfig$Builder;->setImplementationOptions(Landroidx/camera/core/impl/Config;)V

    .line 57
    new-instance v3, Landroidx/camera/camera2/impl/Camera2ImplConfig;

    invoke-direct {v3, p1}, Landroidx/camera/camera2/impl/Camera2ImplConfig;-><init>(Landroidx/camera/core/impl/Config;)V

    .line 60
    .local v3, "camera2Config":Landroidx/camera/camera2/impl/Camera2ImplConfig;
    invoke-virtual {v3, v2}, Landroidx/camera/camera2/impl/Camera2ImplConfig;->getCaptureRequestTemplate(I)I

    move-result v4

    invoke-virtual {p2, v4}, Landroidx/camera/core/impl/CaptureConfig$Builder;->setTemplateType(I)V

    .line 63
    nop

    .line 66
    invoke-static {}, Landroidx/camera/camera2/internal/Camera2CaptureCallbacks;->createNoOpCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v4

    .line 65
    invoke-virtual {v3, v4}, Landroidx/camera/camera2/impl/Camera2ImplConfig;->getSessionCaptureCallback(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v4

    .line 64
    invoke-static {v4}, Landroidx/camera/camera2/internal/CaptureCallbackContainer;->create(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Landroidx/camera/camera2/internal/CaptureCallbackContainer;

    move-result-object v4

    .line 63
    invoke-virtual {p2, v4}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addCameraCaptureCallback(Landroidx/camera/core/impl/CameraCaptureCallback;)V

    .line 69
    new-instance v4, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    invoke-direct {v4}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;-><init>()V

    .line 70
    .local v4, "configBuilder":Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;
    invoke-virtual {v3}, Landroidx/camera/camera2/impl/Camera2ImplConfig;->getCaptureRequestOptions()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/camera/core/impl/Config$Option;

    .line 73
    .local v6, "option":Landroidx/camera/core/impl/Config$Option;, "Landroidx/camera/core/impl/Config$Option<*>;"
    move-object v7, v6

    .line 75
    .local v7, "typeErasedOption":Landroidx/camera/core/impl/Config$Option;, "Landroidx/camera/core/impl/Config$Option<Ljava/lang/Object;>;"
    invoke-virtual {v6}, Landroidx/camera/core/impl/Config$Option;->getToken()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/camera2/CaptureRequest$Key;

    .line 76
    .local v8, "key":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<Ljava/lang/Object;>;"
    nop

    .line 77
    invoke-virtual {v3, v7}, Landroidx/camera/camera2/impl/Camera2ImplConfig;->retrieveOption(Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;

    move-result-object v9

    .line 78
    invoke-virtual {v3, v7}, Landroidx/camera/camera2/impl/Camera2ImplConfig;->getOptionPriority(Landroidx/camera/core/impl/Config$Option;)Landroidx/camera/core/impl/Config$OptionPriority;

    move-result-object v10

    .line 76
    invoke-virtual {v4, v8, v9, v10}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->setCaptureRequestOptionWithPriority(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;Landroidx/camera/core/impl/Config$OptionPriority;)Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;

    .line 79
    .end local v6    # "option":Landroidx/camera/core/impl/Config$Option;, "Landroidx/camera/core/impl/Config$Option<*>;"
    .end local v7    # "typeErasedOption":Landroidx/camera/core/impl/Config$Option;, "Landroidx/camera/core/impl/Config$Option<Ljava/lang/Object;>;"
    .end local v8    # "key":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<Ljava/lang/Object;>;"
    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {v4}, Landroidx/camera/camera2/impl/Camera2ImplConfig$Builder;->build()Landroidx/camera/camera2/impl/Camera2ImplConfig;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroidx/camera/core/impl/CaptureConfig$Builder;->addImplementationOptions(Landroidx/camera/core/impl/Config;)V

    .line 81
    return-void
.end method
