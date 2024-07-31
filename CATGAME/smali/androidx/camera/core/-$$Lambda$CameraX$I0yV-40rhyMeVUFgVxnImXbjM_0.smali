.class public final synthetic Landroidx/camera/core/-$$Lambda$CameraX$I0yV-40rhyMeVUFgVxnImXbjM_0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/arch/core/util/Function;


# instance fields
.field public final synthetic f$0:Landroidx/camera/core/CameraX;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/CameraX;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/-$$Lambda$CameraX$I0yV-40rhyMeVUFgVxnImXbjM_0;->f$0:Landroidx/camera/core/CameraX;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/camera/core/-$$Lambda$CameraX$I0yV-40rhyMeVUFgVxnImXbjM_0;->f$0:Landroidx/camera/core/CameraX;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, p1}, Landroidx/camera/core/CameraX;->lambda$getInstanceLocked$6(Landroidx/camera/core/CameraX;Ljava/lang/Void;)Landroidx/camera/core/CameraX;

    move-result-object p1

    return-object p1
.end method
