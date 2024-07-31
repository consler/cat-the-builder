.class Landroidx/camera/camera2/impl/Camera2ImplConfig$1;
.super Ljava/lang/Object;
.source "Camera2ImplConfig.java"

# interfaces
.implements Landroidx/camera/core/impl/Config$OptionMatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/impl/Camera2ImplConfig;->getCaptureRequestOptions()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/camera2/impl/Camera2ImplConfig;

.field final synthetic val$optionSet:Ljava/util/Set;


# direct methods
.method constructor <init>(Landroidx/camera/camera2/impl/Camera2ImplConfig;Ljava/util/Set;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/camera/camera2/impl/Camera2ImplConfig;

    .line 129
    iput-object p1, p0, Landroidx/camera/camera2/impl/Camera2ImplConfig$1;->this$0:Landroidx/camera/camera2/impl/Camera2ImplConfig;

    iput-object p2, p0, Landroidx/camera/camera2/impl/Camera2ImplConfig$1;->val$optionSet:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOptionMatched(Landroidx/camera/core/impl/Config$Option;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/impl/Config$Option<",
            "*>;)Z"
        }
    .end annotation

    .line 132
    .local p1, "option":Landroidx/camera/core/impl/Config$Option;, "Landroidx/camera/core/impl/Config$Option<*>;"
    iget-object v0, p0, Landroidx/camera/camera2/impl/Camera2ImplConfig$1;->val$optionSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 133
    const/4 v0, 0x1

    return v0
.end method
